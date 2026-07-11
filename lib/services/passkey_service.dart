// passkey_service.dart — passkeys de plataforma (WebAuthn) vía el
// Credential Manager de Android.
//
// Este servicio es un puente fino: el servidor genera el JSON de opciones
// (creation/request), Android Credential Manager crea/usa la passkey (con
// biometría, sincronizada por Google Password Manager) y devuelve el JSON de
// respuesta, que el servidor verifica.
//
// La clave privada NUNCA está en la app: vive en el gestor de credenciales del
// sistema, respaldado por hardware y sincronizado entre los dispositivos del
// usuario.

import 'package:flutter/services.dart';

class PasskeyException implements Exception {
  final String message;
  final bool cancelled;
  PasskeyException(this.message, {this.cancelled = false});
  @override
  String toString() => message;
}

class PasskeyService {
  static const _channel = MethodChannel('io.buzzster/passkeys');

  /// Registra una passkey: pasa el JSON de opciones de creación al sistema y
  /// devuelve el `registrationResponseJson`.
  static Future<String> createPasskey(String optionsJson) async {
    try {
      final json = await _channel.invokeMethod<String>(
        'createPasskey',
        {'requestJson': optionsJson},
      );
      if (json == null || json.isEmpty) {
        throw PasskeyException('el sistema no devolvió la passkey');
      }
      return json;
    } on PlatformException catch (e) {
      throw PasskeyException(
        e.code == 'cancelled' ? 'registro cancelado' : (e.message ?? 'error'),
        cancelled: e.code == 'cancelled',
      );
    }
  }

  /// Autentica con una passkey: pasa el JSON de opciones de solicitud al
  /// sistema y devuelve el `authenticationResponseJson`.
  static Future<String> getPasskey(String optionsJson) async {
    try {
      final json = await _channel.invokeMethod<String>(
        'getPasskey',
        {'requestJson': optionsJson},
      );
      if (json == null || json.isEmpty) {
        throw PasskeyException('el sistema no devolvió la credencial');
      }
      return json;
    } on PlatformException catch (e) {
      throw PasskeyException(
        e.code == 'cancelled' ? 'inicio de sesión cancelado' : (e.message ?? 'error'),
        cancelled: e.code == 'cancelled',
      );
    }
  }
}
