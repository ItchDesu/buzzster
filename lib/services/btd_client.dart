// btd_client.dart — Dart bridge to the native BTDLib (libbtdlib.so) via dart:ffi.
//
// The interface mirrors TDLib's design: requests/responses/updates are
// serialized protobuf (btdlib.proto). Responses arrive through a
// NativeCallable.listener (the native side transfers buffer ownership and we
// free it with btdlib_buffer_free); server-push updates are pumped by a
// dedicated isolate blocking on btdlib_client_receive.

import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:fixnum/fixnum.dart' show Int64;

import '../proto/btdlib.pb.dart';

typedef _CallbackNative = Void Function(Pointer<Uint8>, Size, Pointer<Void>);

typedef _CreateNative = Pointer<Void> Function(Pointer<Uint8>, Size);
typedef _CreateDart = Pointer<Void> Function(Pointer<Uint8>, int);
typedef _StartNative = Int32 Function(Pointer<Void>);
typedef _StartDart = int Function(Pointer<Void>);
typedef _InvokeNative = Void Function(
    Pointer<Void>, Pointer<Uint8>, Size, Pointer<NativeFunction<_CallbackNative>>, Pointer<Void>);
typedef _InvokeDart = void Function(
    Pointer<Void>, Pointer<Uint8>, int, Pointer<NativeFunction<_CallbackNative>>, Pointer<Void>);
typedef _ReceiveNative = Pointer<Uint8> Function(Pointer<Void>, Uint32, Pointer<Size>);
typedef _ReceiveDart = Pointer<Uint8> Function(Pointer<Void>, int, Pointer<Size>);
typedef _FreeNative = Void Function(Pointer<Uint8>, Size);
typedef _FreeDart = void Function(Pointer<Uint8>, int);
typedef _DestroyNative = Void Function(Pointer<Void>);
typedef _DestroyDart = void Function(Pointer<Void>);

String _defaultLibPath() {
  if (Platform.isAndroid) return 'libbtdlib.so';
  // Desktop dev fallback: host build of the cdylib.
  return '../btdlib/target/debug/libbtdlib.so';
}

class _Native {
  final DynamicLibrary lib;
  late final _CreateDart create;
  late final _StartDart start;
  late final _InvokeDart invoke;
  late final _FreeDart bufferFree;
  late final _DestroyDart destroy;

  _Native(String path) : lib = DynamicLibrary.open(path) {
    create = lib.lookupFunction<_CreateNative, _CreateDart>('btdlib_client_create');
    start = lib.lookupFunction<_StartNative, _StartDart>('btdlib_client_start');
    invoke = lib.lookupFunction<_InvokeNative, _InvokeDart>('btdlib_client_invoke');
    bufferFree = lib.lookupFunction<_FreeNative, _FreeDart>('btdlib_buffer_free');
    destroy = lib.lookupFunction<_DestroyNative, _DestroyDart>('btdlib_client_destroy');
  }
}

class BtdException implements Exception {
  final String message;
  BtdException(this.message);
  @override
  String toString() => message;
}

/// Arguments for the update-receiver isolate.
class _RecvArgs {
  final String libPath;
  final int handleAddr;
  final SendPort sendPort;
  _RecvArgs(this.libPath, this.handleAddr, this.sendPort);
}

/// Blocking loop living in its own isolate: polls btdlib_client_receive and
/// ships serialized ClientUpdate bytes back to the main isolate.
void _receiveLoop(_RecvArgs args) {
  final lib = DynamicLibrary.open(args.libPath);
  final receive =
      lib.lookupFunction<_ReceiveNative, _ReceiveDart>('btdlib_client_receive');
  final bufferFree = lib.lookupFunction<_FreeNative, _FreeDart>('btdlib_buffer_free');
  final handle = Pointer<Void>.fromAddress(args.handleAddr);
  final outLen = calloc<Size>();

  while (true) {
    final ptr = receive(handle, 500, outLen);
    if (ptr != nullptr) {
      final len = outLen.value;
      final bytes = Uint8List.fromList(ptr.asTypedList(len));
      bufferFree(ptr, len);
      args.sendPort.send(bytes);
    }
  }
}

class BtdClient {
  final _Native _native;
  final Pointer<Void> _handle;
  final _pending = <int, Completer<ClientResponse>>{};
  final _updatesCtrl = StreamController<ClientUpdate>.broadcast();
  late final NativeCallable<_CallbackNative> _callable;
  Isolate? _recvIsolate;
  ReceivePort? _recvPort;
  int _nextRequestId = 50000; // above btdlib's internal counter range
  bool _disposed = false;

  Stream<ClientUpdate> get updates => _updatesCtrl.stream;

  BtdClient._(this._native, this._handle) {
    _callable = NativeCallable<_CallbackNative>.listener(_onResponse);
  }

  /// Creates + starts a client and begins pumping updates.
  static Future<BtdClient> create(ClientOptions options, {String? libPath}) async {
    final path = libPath ?? _defaultLibPath();
    final native = _Native(path);

    final optBytes = options.writeToBuffer();
    final optPtr = calloc<Uint8>(optBytes.length);
    optPtr.asTypedList(optBytes.length).setAll(0, optBytes);
    final handle = native.create(optPtr, optBytes.length);
    calloc.free(optPtr);
    if (handle == nullptr) {
      throw BtdException('btdlib_client_create devolvió null');
    }

    final client = BtdClient._(native, handle);

    final rc = native.start(handle);
    if (rc != 0) {
      native.destroy(handle);
      throw BtdException('btdlib_client_start falló con código $rc');
    }

    // Update pump isolate.
    client._recvPort = ReceivePort();
    client._recvPort!.listen((msg) {
      if (msg is Uint8List) {
        try {
          client._updatesCtrl.add(ClientUpdate.fromBuffer(msg));
        } catch (_) {/* ignore malformed */}
      }
    });
    client._recvIsolate = await Isolate.spawn(
      _receiveLoop,
      _RecvArgs(path, handle.address, client._recvPort!.sendPort),
      debugName: 'btdlib-updates',
    );

    return client;
  }

  void _onResponse(Pointer<Uint8> ptr, int len, Pointer<Void> _) {
    final bytes = Uint8List.fromList(ptr.asTypedList(len));
    _native.bufferFree(ptr, len);
    try {
      final resp = ClientResponse.fromBuffer(bytes);
      final completer = _pending.remove(resp.requestId.toInt());
      completer?.complete(resp);
    } catch (_) {/* ignore malformed */}
  }

  /// Sends a request and awaits its matched response.
  Future<ClientResponse> invoke(ClientRequest request) {
    if (_disposed) throw BtdException('cliente cerrado');
    final id = _nextRequestId++;
    request.requestId = Int64(id);

    final completer = Completer<ClientResponse>();
    _pending[id] = completer;

    final bytes = request.writeToBuffer();
    final ptr = calloc<Uint8>(bytes.length);
    ptr.asTypedList(bytes.length).setAll(0, bytes);
    _native.invoke(_handle, ptr, bytes.length, _callable.nativeFunction, nullptr);
    calloc.free(ptr);

    // Native timeouts exist, but guard against lost callbacks anyway.
    return completer.future.timeout(const Duration(seconds: 15), onTimeout: () {
      _pending.remove(id);
      return ClientResponse(
        requestId: Int64(id),
        success: false,
        errorMessage: 'tiempo de espera agotado',
      );
    });
  }

  Future<void> dispose() async {
    if (_disposed) return;
    _disposed = true;
    _recvIsolate?.kill(priority: Isolate.immediate);
    _recvPort?.close();
    // Let the receiver's current 500 ms blocking window drain before freeing
    // the native handle the isolate was reading from.
    await Future<void>.delayed(const Duration(milliseconds: 700));
    _native.destroy(_handle);
    for (final c in _pending.values) {
      c.complete(ClientResponse(success: false, errorMessage: 'cliente cerrado'));
    }
    _pending.clear();
    await _updatesCtrl.close();
  }
}
