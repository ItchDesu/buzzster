// session.dart — application session: connection, auth and social API surface.

import 'dart:async';
import 'dart:io';

import 'package:fixnum/fixnum.dart' show Int64;
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../proto/btdlib.pb.dart' as pb;
import '../proto/btdlib.pbenum.dart' as pbe;
import '../services/btd_client.dart';
import '../services/passkey_service.dart';

class ServerConfig {
  String host;
  int port;
  String pubkeyHex;
  ServerConfig({required this.host, required this.port, required this.pubkeyHex});
}

class FeedPage {
  final List<pb.FeedItem> items;
  final String nextCursor;
  FeedPage(this.items, this.nextCursor);
}

class NotificationsPage {
  final List<pb.Notification> items;
  final String nextCursor;
  final int unread;
  NotificationsPage(this.items, this.nextCursor, this.unread);
}

class AppSession extends ChangeNotifier {
  BtdClient? _client;
  StreamSubscription<pb.ClientUpdate>? _updatesSub;

  pb.Actor? me;
  String? _handle;
  String? _password;
  bool _authed = false;
  bool restoring = true;

  pbe.ConnectionState connState = pbe.ConnectionState.CONNECTION_STATE_DISCONNECTED;
  int unreadNotifications = 0;

  /// Live notifications, for in-app toasts.
  final _notifCtrl = StreamController<pb.Notification>.broadcast();
  Stream<pb.Notification> get liveNotifications => _notifCtrl.stream;

  /// Live social events (new/edited/deleted posts, counter changes) so
  /// feeds update in place without reloading.
  final _eventCtrl = StreamController<pb.UpdateSocialEvent>.broadcast();
  Stream<pb.UpdateSocialEvent> get socialEvents => _eventCtrl.stream;

  /// Live direct messages.
  final _dmCtrl = StreamController<pb.UpdateDmReceived>.broadcast();
  Stream<pb.UpdateDmReceived> get dmEvents => _dmCtrl.stream;
  int dmUnread = 0;

  bool get loggedIn => _authed && me != null;

  // ── Boot / persistence ──────────────────────────────────────────────────────

  /// Default dev-server identity (btserver/server_identity.key). Editable in
  /// the login screen's "Servidor" section.
  Future<ServerConfig> loadServerConfig() async {
    return ServerConfig(
      host: '5.188.183.132',
      port: 9090,
      pubkeyHex: '06d01301171af6d5aa00ac14ec2dae1539e003078d8149a3201917c477eb8cb1',
    );
  }

  Future<void> saveServerConfig(ServerConfig cfg) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('srv_host', cfg.host);
    await prefs.setInt('srv_port', cfg.port);
    await prefs.setString('srv_pubkey', cfg.pubkeyHex);
  }

  /// Whether a passkey session was used last (so the login screen can offer it).
  bool lastUsedPasskey = false;

  /// Tries to restore a previous session. Password sessions restore silently;
  /// passkey sessions require an explicit tap (to avoid a surprise biometric
  /// prompt on cold start), so we only surface the option.
  Future<void> tryRestore() async {
    final prefs = await SharedPreferences.getInstance();
    final handle = prefs.getString('auth_handle');
    final password = prefs.getString('auth_password');
    lastUsedPasskey = prefs.getBool('auth_passkey') ?? false;
    final cfg = await loadServerConfig();
    if (handle != null && password != null && cfg.pubkeyHex.isNotEmpty) {
      await signIn(cfg, handle, password, register: false, remember: true);
    }
    restoring = false;
    notifyListeners();
  }

  // ── Auth ────────────────────────────────────────────────────────────────────

  /// Sentinel returned by [signIn] when the account has 2FA and needs a code.
  static const totpRequired = 'totp_required';

  /// Opens the transport for [handle] and wires the update stream.
  Future<void> _connect(ServerConfig cfg, String handle) async {
    await _teardownClient();
    final docs = await getApplicationDocumentsDirectory();
    final safe = handle.replaceAll(RegExp(r'[^a-z0-9_.]'), '_');
    final opts = pb.ClientOptions(
      host: cfg.host,
      port: cfg.port,
      serverPubkey: cfg.pubkeyHex,
      storagePath: '${docs.path}/btd_$safe.db',
      timeoutSecs: 10,
      maxRetries: 1000000,
    );
    final client = await BtdClient.create(opts);
    _client = client;
    _updatesSub = client.updates.listen(_onUpdate);
  }

  /// Post-authentication bookkeeping shared by all login paths.
  /// If [handle] is null (passkey login) it's read from the fetched profile.
  Future<void> _afterAuth(
    ServerConfig cfg, {
    String? handle,
    String? password,
    bool remember = true,
  }) async {
    _authed = true;
    _password = password;
    me = await getActor('');
    _handle = handle ?? me?.handle;
    await saveServerConfig(cfg);
    if (remember && _handle != null) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('auth_handle', _handle!);
      if (password != null) {
        await prefs.setString('auth_password', password);
        await prefs.remove('auth_passkey');
      } else {
        await prefs.remove('auth_password');
        await prefs.setBool('auth_passkey', true);
      }
    }
    await refreshUnread();
    await refreshDmUnread();
    notifyListeners();
  }

  /// Connects and authenticates with password (+ optional TOTP).
  /// Returns null on success, [totpRequired] when a 2FA code is needed,
  /// or an error message otherwise.
  Future<String?> signIn(
    ServerConfig cfg,
    String handle,
    String password, {
    required bool register,
    String displayName = '',
    String totpCode = '',
    bool remember = true,
  }) async {
    try {
      await _connect(cfg, handle);
      final req = register
          ? pb.ClientRequest(
              register: pb.RegisterCall(
                handle: handle,
                password: password,
                displayName: displayName,
              ),
            )
          : pb.ClientRequest(
              auth: pb.AuthCall(
                identity: handle,
                credential: password.codeUnits,
                totpCode: totpCode,
              ),
            );

      final resp = await _client!.invoke(req);
      if (!resp.success) {
        if (resp.errorMessage == totpRequired) {
          return totpRequired; // keep the connection open for the retry
        }
        await _teardownClient();
        return resp.errorMessage.isEmpty ? 'autenticación rechazada' : resp.errorMessage;
      }

      await _afterAuth(cfg, handle: handle, password: password, remember: remember);
      return null;
    } on BtdException catch (e) {
      await _teardownClient();
      return e.message;
    } catch (e) {
      await _teardownClient();
      return 'error de conexión: $e';
    }
  }

  /// Passwordless discoverable login with a platform passkey (WebAuthn).
  /// The system prompt lets the user pick the passkey; no handle needed.
  /// Returns null on success or an error message.
  Future<String?> loginWithPasskey(ServerConfig cfg) async {
    try {
      // Necesita un handle para la ruta de almacenamiento local del cliente;
      // usamos uno neutro para el login discoverable.
      await _connect(cfg, '_passkey');
      final begin = await _client!.invoke(
        pb.ClientRequest(passkeyAuthBegin: pb.PasskeyAuthBeginCall()),
      );
      if (!begin.success) {
        await _teardownClient();
        return begin.errorMessage.isEmpty ? 'no se pudo iniciar' : begin.errorMessage;
      }
      final String responseJson;
      try {
        responseJson =
            await PasskeyService.getPasskey(begin.passkeyAuthBegin.optionsJson);
      } on PasskeyException catch (e) {
        await _teardownClient();
        return e.cancelled ? null : e.message; // cancelado → sin error visible
      }
      final finish = await _client!.invoke(pb.ClientRequest(
        passkeyAuthFinish: pb.PasskeyAuthFinishCall(
          flowId: begin.passkeyAuthBegin.flowId,
          responseJson: responseJson,
        ),
      ));
      if (!finish.success) {
        await _teardownClient();
        return finish.errorMessage.isEmpty ? 'passkey rechazada' : finish.errorMessage;
      }
      await _afterAuth(cfg, password: null);
      return null;
    } on BtdException catch (e) {
      await _teardownClient();
      return e.message;
    } catch (e) {
      await _teardownClient();
      return 'error de conexión: $e';
    }
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_handle');
    await prefs.remove('auth_password');
    await prefs.remove('auth_passkey');
    await _teardownClient();
    me = null;
    _handle = null;
    _password = null;
    _authed = false;
    unreadNotifications = 0;
    notifyListeners();
  }

  Future<void> _teardownClient() async {
    await _updatesSub?.cancel();
    _updatesSub = null;
    final c = _client;
    _client = null;
    if (c != null) await c.dispose();
  }

  // ── Update stream ───────────────────────────────────────────────────────────

  void _onUpdate(pb.ClientUpdate update) {
    if (update.hasConnectionState()) {
      final prev = connState;
      connState = update.connectionState.state;
      notifyListeners();
      // The server authenticates per-connection: re-auth silently after a
      // reconnect so the session keeps working.
      if (_authed &&
          connState == pbe.ConnectionState.CONNECTION_STATE_CONNECTED &&
          prev != pbe.ConnectionState.CONNECTION_STATE_CONNECTED) {
        _reauth();
      }
    } else if (update.hasNotificationReceived()) {
      final n = update.notificationReceived.notification;
      unreadNotifications += 1;
      _notifCtrl.add(n);
      notifyListeners();
    } else if (update.hasSocialEvent()) {
      _eventCtrl.add(update.socialEvent);
    } else if (update.hasDmReceived()) {
      final dm = update.dmReceived;
      if (!dm.message.mine) dmUnread += 1;
      _dmCtrl.add(dm);
      notifyListeners();
    }
  }

  bool _reauthInFlight = false;
  Future<void> _reauth() async {
    final client = _client;
    // Solo re-autenticamos automáticamente sesiones con contraseña. Las de
    // passkey no re-firman en segundo plano para no lanzar prompts biométricos
    // inesperados; si la sesión se pierde, el usuario vuelve a entrar.
    if (client == null || _handle == null || _password == null || _reauthInFlight) {
      return;
    }
    _reauthInFlight = true;
    try {
      await client.invoke(pb.ClientRequest(
        auth: pb.AuthCall(identity: _handle!, credential: _password!.codeUnits),
      ));
    } catch (_) {
      // Best effort; the next user action will surface real errors.
    } finally {
      _reauthInFlight = false;
    }
  }

  // ── Social API ──────────────────────────────────────────────────────────────

  Future<pb.ClientResponse> _invoke(pb.ClientRequest req) async {
    final client = _client;
    if (client == null) throw BtdException('sin conexión');
    final resp = await client.invoke(req);
    if (!resp.success) {
      throw BtdException(resp.errorMessage.isEmpty ? 'operación rechazada' : resp.errorMessage);
    }
    return resp;
  }

  Future<FeedPage> getFeed(
    pbe.FeedKind kind, {
    String actorHandle = '',
    String hashtag = '',
    String cursor = '',
    int limit = 30,
  }) async {
    final resp = await _invoke(pb.ClientRequest(
      getFeed: pb.GetFeedCall(
        kind: kind,
        actorHandle: actorHandle,
        hashtag: hashtag,
        cursor: cursor,
        limit: limit,
      ),
    ));
    return FeedPage(resp.getFeed.items, resp.getFeed.nextCursor);
  }

  Future<List<pb.Trend>> getTrends({int limit = 10}) async {
    final resp = await _invoke(
        pb.ClientRequest(getTrends: pb.GetTrendsCall(limit: limit)));
    return resp.getTrends.trends;
  }

  Future<pb.Post> createPost(
    String text, {
    String replyTo = '',
    List<String> mediaIds = const [],
    String quotedPostId = '',
    List<String> pollOptions = const [],
    int pollDurationHours = 24,
  }) async {
    final resp = await _invoke(pb.ClientRequest(
      createPost: pb.CreatePostCall(
        text: text,
        replyToPostId: replyTo,
        mediaIds: mediaIds,
        quotedPostId: quotedPostId,
        pollOptions: pollOptions,
        pollDurationHours: pollDurationHours,
      ),
    ));
    return resp.createPost.post;
  }

  /// Registers the upload with the server (presigned URLs) and PUTs the bytes
  /// straight to the object store. Returns the upload descriptor.
  Future<pb.UploadMediaResult> uploadMedia(File file, String mime) async {
    final bytes = await file.readAsBytes();
    final resp = await _invoke(pb.ClientRequest(
      uploadMedia: pb.UploadMediaCall(
        fileName: file.uri.pathSegments.isEmpty ? 'media' : file.uri.pathSegments.last,
        mime: mime,
        sizeBytes: Int64(bytes.length),
      ),
    ));
    final r = resp.uploadMedia;
    final put = await http.put(
      Uri.parse(r.uploadUrl),
      headers: {'content-type': mime},
      body: bytes,
    );
    if (put.statusCode < 200 || put.statusCode >= 300) {
      throw BtdException('subida de media fallida (HTTP ${put.statusCode})');
    }
    return r;
  }

  Future<pb.LikeResult> like(String postId, {required bool undo}) async {
    final resp =
        await _invoke(pb.ClientRequest(like: pb.LikeCall(postId: postId, undo: undo)));
    return resp.like;
  }

  Future<pb.RepostResult> repost(String postId, {required bool undo}) async {
    final resp = await _invoke(
        pb.ClientRequest(repost: pb.RepostCall(postId: postId, undo: undo)));
    return resp.repost;
  }

  Future<pb.Actor> follow(String handle, {required bool undo}) async {
    final resp = await _invoke(
        pb.ClientRequest(follow: pb.FollowCall(handle: handle, undo: undo)));
    return resp.follow.actor;
  }

  Future<pb.Actor> getActor(String handle) async {
    final resp =
        await _invoke(pb.ClientRequest(getActor: pb.GetActorCall(handle: handle)));
    return resp.getActor.actor;
  }

  Future<pb.GetThreadResult> getThread(String postId) async {
    final resp =
        await _invoke(pb.ClientRequest(getThread: pb.GetThreadCall(postId: postId)));
    return resp.getThread;
  }

  Future<List<pb.Actor>> searchActors(String query) async {
    final resp = await _invoke(pb.ClientRequest(
        searchActors: pb.SearchActorsCall(query: query, limit: 30)));
    return resp.searchActors.actors;
  }

  Future<NotificationsPage> getNotifications(
      {String cursor = '', bool markRead = false}) async {
    final resp = await _invoke(pb.ClientRequest(
      getNotifications:
          pb.GetNotificationsCall(cursor: cursor, limit: 30, markRead: markRead),
    ));
    final r = resp.getNotifications;
    if (markRead) {
      unreadNotifications = r.unreadCount;
      notifyListeners();
    }
    return NotificationsPage(r.notifications, r.nextCursor, r.unreadCount);
  }

  Future<void> refreshUnread() async {
    try {
      final resp = await _invoke(pb.ClientRequest(
        getNotifications: pb.GetNotificationsCall(cursor: '', limit: 1),
      ));
      unreadNotifications = resp.getNotifications.unreadCount;
      notifyListeners();
    } catch (_) {}
  }

  Future<pb.Actor> updateProfile(
    String displayName,
    String bio, {
    String avatarMediaId = '',
    String bannerMediaId = '',
  }) async {
    final resp = await _invoke(pb.ClientRequest(
      updateProfile: pb.UpdateProfileCall(
        displayName: displayName,
        bio: bio,
        avatarMediaId: avatarMediaId,
        bannerMediaId: bannerMediaId,
      ),
    ));
    me = resp.updateProfile.actor;
    notifyListeners();
    return me!;
  }

  /// which: FOLLOWS_FOLLOWERS o FOLLOWS_FOLLOWING.
  Future<(List<pb.Actor>, String)> getFollows(
    String handle,
    pbe.FollowsWhich which, {
    String cursor = '',
  }) async {
    final resp = await _invoke(pb.ClientRequest(
      getFollows: pb.GetFollowsCall(
        handle: handle,
        which: which,
        cursor: cursor,
        limit: 30,
      ),
    ));
    return (resp.getFollows.actors, resp.getFollows.nextCursor);
  }

  Future<pb.Post> editPost(String postId, String text) async {
    final resp = await _invoke(
        pb.ClientRequest(editPost: pb.EditPostCall(postId: postId, text: text)));
    return resp.editPost.post;
  }

  Future<void> deletePost(String postId) async {
    await _invoke(
        pb.ClientRequest(deletePost: pb.DeletePostCall(postId: postId)));
  }

  Future<bool> bookmark(String postId, {required bool undo}) async {
    final resp = await _invoke(
        pb.ClientRequest(bookmark: pb.BookmarkCall(postId: postId, undo: undo)));
    return resp.bookmark.viewerBookmarked;
  }

  /// postId vacío = desfijar.
  Future<String> pinPost(String postId) async {
    final resp =
        await _invoke(pb.ClientRequest(pinPost: pb.PinPostCall(postId: postId)));
    if (me != null) me!.pinnedPostId = resp.pinPost.pinnedPostId;
    return resp.pinPost.pinnedPostId;
  }

  Future<pb.Poll> votePoll(String postId, int optionIndex) async {
    final resp = await _invoke(pb.ClientRequest(
        votePoll: pb.VotePollCall(postId: postId, optionIndex: optionIndex)));
    return resp.votePoll.poll;
  }

  Future<FeedPage> searchPosts(String query, {String cursor = ''}) async {
    final resp = await _invoke(pb.ClientRequest(
        searchPosts:
            pb.SearchPostsCall(query: query, cursor: cursor, limit: 30)));
    return FeedPage(resp.searchPosts.items, resp.searchPosts.nextCursor);
  }

  Future<pb.DmMessage> sendDm(String toHandle, String text) async {
    final resp = await _invoke(
        pb.ClientRequest(sendDm: pb.SendDmCall(toHandle: toHandle, text: text)));
    return resp.sendDm.message;
  }

  Future<(List<pb.Conversation>, String, int)> getConversations(
      {String cursor = ''}) async {
    final resp = await _invoke(pb.ClientRequest(
        getConversations: pb.GetConversationsCall(cursor: cursor, limit: 30)));
    final r = resp.getConversations;
    dmUnread = r.totalUnread;
    notifyListeners();
    return (r.conversations, r.nextCursor, r.totalUnread);
  }

  Future<(pb.Actor, List<pb.DmMessage>, String)> getMessages(
    String peerHandle, {
    String cursor = '',
    bool markRead = true,
  }) async {
    final resp = await _invoke(pb.ClientRequest(
      getMessages: pb.GetMessagesCall(
        peerHandle: peerHandle,
        cursor: cursor,
        limit: 50,
        markRead: markRead,
      ),
    ));
    final r = resp.getMessages;
    return (r.peer, r.messages, r.nextCursor);
  }

  Future<pb.Actor> moderate(String handle, pbe.ModAction action) async {
    final resp = await _invoke(pb.ClientRequest(
        moderate: pb.ModerateCall(handle: handle, action: action)));
    return resp.moderate.actor;
  }

  /// Lista de cuentas silenciadas o bloqueadas por el usuario.
  Future<List<pb.Actor>> moderationList(pbe.ModerationKind kind) async {
    final resp = await _invoke(pb.ClientRequest(
        getModerationList: pb.GetModerationListCall(kind: kind)));
    return resp.getModerationList.actors;
  }

  Future<void> refreshDmUnread() async {
    try {
      final resp = await _invoke(pb.ClientRequest(
          getConversations: pb.GetConversationsCall(cursor: '', limit: 1)));
      dmUnread = resp.getConversations.totalUnread;
      notifyListeners();
    } catch (_) {}
  }

  // ── Account security ───────────────────────────────────────────────────────

  Future<pb.SecurityStatusResult> securityStatus() async {
    final resp = await _invoke(
        pb.ClientRequest(securityStatus: pb.SecurityStatusCall()));
    return resp.securityStatus;
  }

  /// Creates a platform passkey (WebAuthn): the server issues creation options,
  /// Credential Manager creates the credential (biometrics + Google Password
  /// Manager), and the server verifies the attestation.
  /// Returns null on success, error message otherwise.
  Future<String?> enrollPasskey({String deviceName = 'Este dispositivo'}) async {
    if (_handle == null) return 'sin sesión';
    try {
      final begin = await _invoke(
          pb.ClientRequest(passkeyRegBegin: pb.PasskeyRegBeginCall()));
      final String responseJson;
      try {
        responseJson =
            await PasskeyService.createPasskey(begin.passkeyRegBegin.optionsJson);
      } on PasskeyException catch (e) {
        return e.cancelled ? 'creación cancelada' : e.message;
      }
      final finish = await _client!.invoke(pb.ClientRequest(
        passkeyRegFinish: pb.PasskeyRegFinishCall(
          responseJson: responseJson,
          deviceName: deviceName,
        ),
      ));
      if (!finish.success) {
        return finish.errorMessage.isEmpty ? 'registro rechazado' : finish.errorMessage;
      }
      return null;
    } catch (e) {
      return '$e';
    }
  }

  Future<List<pb.Passkey>> listPasskeys() async {
    final resp = await _invoke(pb.ClientRequest(passkeyList: pb.PasskeyListCall()));
    return resp.passkeyList.passkeys;
  }

  Future<void> deletePasskey(String credentialId) async {
    await _invoke(pb.ClientRequest(
        passkeyDelete: pb.PasskeyDeleteCall(credentialId: credentialId)));
  }

  Future<(String secret, String uri)> totpEnrollBegin() async {
    final resp = await _invoke(
        pb.ClientRequest(totpEnrollBegin: pb.TotpEnrollBeginCall()));
    return (resp.totpEnrollBegin.secretBase32, resp.totpEnrollBegin.otpauthUri);
  }

  /// Confirms TOTP enrollment. Returns the recovery codes on success.
  Future<List<String>> totpEnrollFinish(String code) async {
    final resp = await _invoke(
        pb.ClientRequest(totpEnrollFinish: pb.TotpEnrollFinishCall(code: code)));
    return resp.totpEnrollFinish.recoveryCodes;
  }

  Future<void> totpDisable(String code) async {
    await _invoke(pb.ClientRequest(totpDisable: pb.TotpDisableCall(code: code)));
  }

  @override
  void dispose() {
    _teardownClient();
    _notifCtrl.close();
    _eventCtrl.close();
    _dmCtrl.close();
    super.dispose();
  }
}
