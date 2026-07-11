// This is a generated file - do not edit.
//
// Generated from btdlib.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Connection states
class ConnectionState extends $pb.ProtobufEnum {
  static const ConnectionState CONNECTION_STATE_DISCONNECTED =
      ConnectionState._(
          0, _omitEnumNames ? '' : 'CONNECTION_STATE_DISCONNECTED');
  static const ConnectionState CONNECTION_STATE_CONNECTING =
      ConnectionState._(1, _omitEnumNames ? '' : 'CONNECTION_STATE_CONNECTING');
  static const ConnectionState CONNECTION_STATE_CONNECTED =
      ConnectionState._(2, _omitEnumNames ? '' : 'CONNECTION_STATE_CONNECTED');
  static const ConnectionState CONNECTION_STATE_RECONNECTING =
      ConnectionState._(
          3, _omitEnumNames ? '' : 'CONNECTION_STATE_RECONNECTING');

  static const $core.List<ConnectionState> values = <ConnectionState>[
    CONNECTION_STATE_DISCONNECTED,
    CONNECTION_STATE_CONNECTING,
    CONNECTION_STATE_CONNECTED,
    CONNECTION_STATE_RECONNECTING,
  ];

  static final $core.List<ConnectionState?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static ConnectionState? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ConnectionState._(super.value, super.name);
}

/// Authorization states
class AuthorizationState extends $pb.ProtobufEnum {
  static const AuthorizationState AUTHORIZATION_STATE_UNAUTHORIZED =
      AuthorizationState._(
          0, _omitEnumNames ? '' : 'AUTHORIZATION_STATE_UNAUTHORIZED');
  static const AuthorizationState AUTHORIZATION_STATE_AUTHENTICATING =
      AuthorizationState._(
          1, _omitEnumNames ? '' : 'AUTHORIZATION_STATE_AUTHENTICATING');
  static const AuthorizationState AUTHORIZATION_STATE_AUTHENTICATED =
      AuthorizationState._(
          2, _omitEnumNames ? '' : 'AUTHORIZATION_STATE_AUTHENTICATED');
  static const AuthorizationState AUTHORIZATION_STATE_SESSION_EXPIRED =
      AuthorizationState._(
          3, _omitEnumNames ? '' : 'AUTHORIZATION_STATE_SESSION_EXPIRED');

  static const $core.List<AuthorizationState> values = <AuthorizationState>[
    AUTHORIZATION_STATE_UNAUTHORIZED,
    AUTHORIZATION_STATE_AUTHENTICATING,
    AUTHORIZATION_STATE_AUTHENTICATED,
    AUTHORIZATION_STATE_SESSION_EXPIRED,
  ];

  static final $core.List<AuthorizationState?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static AuthorizationState? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AuthorizationState._(super.value, super.name);
}

/// Sync states
class SyncState extends $pb.ProtobufEnum {
  static const SyncState SYNC_STATE_IDLE =
      SyncState._(0, _omitEnumNames ? '' : 'SYNC_STATE_IDLE');
  static const SyncState SYNC_STATE_SYNCING =
      SyncState._(1, _omitEnumNames ? '' : 'SYNC_STATE_SYNCING');
  static const SyncState SYNC_STATE_SYNCED =
      SyncState._(2, _omitEnumNames ? '' : 'SYNC_STATE_SYNCED');
  static const SyncState SYNC_STATE_FAILED =
      SyncState._(3, _omitEnumNames ? '' : 'SYNC_STATE_FAILED');

  static const $core.List<SyncState> values = <SyncState>[
    SYNC_STATE_IDLE,
    SYNC_STATE_SYNCING,
    SYNC_STATE_SYNCED,
    SYNC_STATE_FAILED,
  ];

  static final $core.List<SyncState?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static SyncState? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SyncState._(super.value, super.name);
}

class FeedKind extends $pb.ProtobufEnum {
  static const FeedKind FEED_FOLLOWING =
      FeedKind._(0, _omitEnumNames ? '' : 'FEED_FOLLOWING');
  static const FeedKind FEED_DISCOVER =
      FeedKind._(1, _omitEnumNames ? '' : 'FEED_DISCOVER');
  static const FeedKind FEED_AUTHOR =
      FeedKind._(2, _omitEnumNames ? '' : 'FEED_AUTHOR');
  static const FeedKind FEED_LIKES =
      FeedKind._(3, _omitEnumNames ? '' : 'FEED_LIKES');
  static const FeedKind FEED_HASHTAG =
      FeedKind._(4, _omitEnumNames ? '' : 'FEED_HASHTAG');
  static const FeedKind FEED_BOOKMARKS =
      FeedKind._(5, _omitEnumNames ? '' : 'FEED_BOOKMARKS');
  static const FeedKind FEED_AUTHOR_REPLIES =
      FeedKind._(6, _omitEnumNames ? '' : 'FEED_AUTHOR_REPLIES');

  static const $core.List<FeedKind> values = <FeedKind>[
    FEED_FOLLOWING,
    FEED_DISCOVER,
    FEED_AUTHOR,
    FEED_LIKES,
    FEED_HASHTAG,
    FEED_BOOKMARKS,
    FEED_AUTHOR_REPLIES,
  ];

  static final $core.List<FeedKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static FeedKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FeedKind._(super.value, super.name);
}

class FollowsWhich extends $pb.ProtobufEnum {
  static const FollowsWhich FOLLOWS_FOLLOWERS =
      FollowsWhich._(0, _omitEnumNames ? '' : 'FOLLOWS_FOLLOWERS');
  static const FollowsWhich FOLLOWS_FOLLOWING =
      FollowsWhich._(1, _omitEnumNames ? '' : 'FOLLOWS_FOLLOWING');

  static const $core.List<FollowsWhich> values = <FollowsWhich>[
    FOLLOWS_FOLLOWERS,
    FOLLOWS_FOLLOWING,
  ];

  static final $core.List<FollowsWhich?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static FollowsWhich? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FollowsWhich._(super.value, super.name);
}

class ModAction extends $pb.ProtobufEnum {
  static const ModAction MOD_MUTE =
      ModAction._(0, _omitEnumNames ? '' : 'MOD_MUTE');
  static const ModAction MOD_UNMUTE =
      ModAction._(1, _omitEnumNames ? '' : 'MOD_UNMUTE');
  static const ModAction MOD_BLOCK =
      ModAction._(2, _omitEnumNames ? '' : 'MOD_BLOCK');
  static const ModAction MOD_UNBLOCK =
      ModAction._(3, _omitEnumNames ? '' : 'MOD_UNBLOCK');

  static const $core.List<ModAction> values = <ModAction>[
    MOD_MUTE,
    MOD_UNMUTE,
    MOD_BLOCK,
    MOD_UNBLOCK,
  ];

  static final $core.List<ModAction?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static ModAction? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ModAction._(super.value, super.name);
}

class EventKind extends $pb.ProtobufEnum {
  static const EventKind EV_POST_CREATED =
      EventKind._(0, _omitEnumNames ? '' : 'EV_POST_CREATED');
  static const EventKind EV_POST_UPDATED =
      EventKind._(1, _omitEnumNames ? '' : 'EV_POST_UPDATED');
  static const EventKind EV_POST_DELETED =
      EventKind._(2, _omitEnumNames ? '' : 'EV_POST_DELETED');
  static const EventKind EV_POST_COUNTS =
      EventKind._(3, _omitEnumNames ? '' : 'EV_POST_COUNTS');

  static const $core.List<EventKind> values = <EventKind>[
    EV_POST_CREATED,
    EV_POST_UPDATED,
    EV_POST_DELETED,
    EV_POST_COUNTS,
  ];

  static final $core.List<EventKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static EventKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const EventKind._(super.value, super.name);
}

class ModerationKind extends $pb.ProtobufEnum {
  static const ModerationKind MOD_LIST_MUTED =
      ModerationKind._(0, _omitEnumNames ? '' : 'MOD_LIST_MUTED');
  static const ModerationKind MOD_LIST_BLOCKED =
      ModerationKind._(1, _omitEnumNames ? '' : 'MOD_LIST_BLOCKED');

  static const $core.List<ModerationKind> values = <ModerationKind>[
    MOD_LIST_MUTED,
    MOD_LIST_BLOCKED,
  ];

  static final $core.List<ModerationKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static ModerationKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ModerationKind._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
