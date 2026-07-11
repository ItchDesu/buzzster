// This is a generated file - do not edit.
//
// Generated from btdlib.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use connectionStateDescriptor instead')
const ConnectionState$json = {
  '1': 'ConnectionState',
  '2': [
    {'1': 'CONNECTION_STATE_DISCONNECTED', '2': 0},
    {'1': 'CONNECTION_STATE_CONNECTING', '2': 1},
    {'1': 'CONNECTION_STATE_CONNECTED', '2': 2},
    {'1': 'CONNECTION_STATE_RECONNECTING', '2': 3},
  ],
};

/// Descriptor for `ConnectionState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List connectionStateDescriptor = $convert.base64Decode(
    'Cg9Db25uZWN0aW9uU3RhdGUSIQodQ09OTkVDVElPTl9TVEFURV9ESVNDT05ORUNURUQQABIfCh'
    'tDT05ORUNUSU9OX1NUQVRFX0NPTk5FQ1RJTkcQARIeChpDT05ORUNUSU9OX1NUQVRFX0NPTk5F'
    'Q1RFRBACEiEKHUNPTk5FQ1RJT05fU1RBVEVfUkVDT05ORUNUSU5HEAM=');

@$core.Deprecated('Use authorizationStateDescriptor instead')
const AuthorizationState$json = {
  '1': 'AuthorizationState',
  '2': [
    {'1': 'AUTHORIZATION_STATE_UNAUTHORIZED', '2': 0},
    {'1': 'AUTHORIZATION_STATE_AUTHENTICATING', '2': 1},
    {'1': 'AUTHORIZATION_STATE_AUTHENTICATED', '2': 2},
    {'1': 'AUTHORIZATION_STATE_SESSION_EXPIRED', '2': 3},
  ],
};

/// Descriptor for `AuthorizationState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List authorizationStateDescriptor = $convert.base64Decode(
    'ChJBdXRob3JpemF0aW9uU3RhdGUSJAogQVVUSE9SSVpBVElPTl9TVEFURV9VTkFVVEhPUklaRU'
    'QQABImCiJBVVRIT1JJWkFUSU9OX1NUQVRFX0FVVEhFTlRJQ0FUSU5HEAESJQohQVVUSE9SSVpB'
    'VElPTl9TVEFURV9BVVRIRU5USUNBVEVEEAISJwojQVVUSE9SSVpBVElPTl9TVEFURV9TRVNTSU'
    '9OX0VYUElSRUQQAw==');

@$core.Deprecated('Use syncStateDescriptor instead')
const SyncState$json = {
  '1': 'SyncState',
  '2': [
    {'1': 'SYNC_STATE_IDLE', '2': 0},
    {'1': 'SYNC_STATE_SYNCING', '2': 1},
    {'1': 'SYNC_STATE_SYNCED', '2': 2},
    {'1': 'SYNC_STATE_FAILED', '2': 3},
  ],
};

/// Descriptor for `SyncState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List syncStateDescriptor = $convert.base64Decode(
    'CglTeW5jU3RhdGUSEwoPU1lOQ19TVEFURV9JRExFEAASFgoSU1lOQ19TVEFURV9TWU5DSU5HEA'
    'ESFQoRU1lOQ19TVEFURV9TWU5DRUQQAhIVChFTWU5DX1NUQVRFX0ZBSUxFRBAD');

@$core.Deprecated('Use feedKindDescriptor instead')
const FeedKind$json = {
  '1': 'FeedKind',
  '2': [
    {'1': 'FEED_FOLLOWING', '2': 0},
    {'1': 'FEED_DISCOVER', '2': 1},
    {'1': 'FEED_AUTHOR', '2': 2},
    {'1': 'FEED_LIKES', '2': 3},
    {'1': 'FEED_HASHTAG', '2': 4},
    {'1': 'FEED_BOOKMARKS', '2': 5},
    {'1': 'FEED_AUTHOR_REPLIES', '2': 6},
  ],
};

/// Descriptor for `FeedKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List feedKindDescriptor = $convert.base64Decode(
    'CghGZWVkS2luZBISCg5GRUVEX0ZPTExPV0lORxAAEhEKDUZFRURfRElTQ09WRVIQARIPCgtGRU'
    'VEX0FVVEhPUhACEg4KCkZFRURfTElLRVMQAxIQCgxGRUVEX0hBU0hUQUcQBBISCg5GRUVEX0JP'
    'T0tNQVJLUxAFEhcKE0ZFRURfQVVUSE9SX1JFUExJRVMQBg==');

@$core.Deprecated('Use followsWhichDescriptor instead')
const FollowsWhich$json = {
  '1': 'FollowsWhich',
  '2': [
    {'1': 'FOLLOWS_FOLLOWERS', '2': 0},
    {'1': 'FOLLOWS_FOLLOWING', '2': 1},
  ],
};

/// Descriptor for `FollowsWhich`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List followsWhichDescriptor = $convert.base64Decode(
    'CgxGb2xsb3dzV2hpY2gSFQoRRk9MTE9XU19GT0xMT1dFUlMQABIVChFGT0xMT1dTX0ZPTExPV0'
    'lORxAB');

@$core.Deprecated('Use modActionDescriptor instead')
const ModAction$json = {
  '1': 'ModAction',
  '2': [
    {'1': 'MOD_MUTE', '2': 0},
    {'1': 'MOD_UNMUTE', '2': 1},
    {'1': 'MOD_BLOCK', '2': 2},
    {'1': 'MOD_UNBLOCK', '2': 3},
  ],
};

/// Descriptor for `ModAction`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List modActionDescriptor = $convert.base64Decode(
    'CglNb2RBY3Rpb24SDAoITU9EX01VVEUQABIOCgpNT0RfVU5NVVRFEAESDQoJTU9EX0JMT0NLEA'
    'ISDwoLTU9EX1VOQkxPQ0sQAw==');

@$core.Deprecated('Use eventKindDescriptor instead')
const EventKind$json = {
  '1': 'EventKind',
  '2': [
    {'1': 'EV_POST_CREATED', '2': 0},
    {'1': 'EV_POST_UPDATED', '2': 1},
    {'1': 'EV_POST_DELETED', '2': 2},
    {'1': 'EV_POST_COUNTS', '2': 3},
  ],
};

/// Descriptor for `EventKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List eventKindDescriptor = $convert.base64Decode(
    'CglFdmVudEtpbmQSEwoPRVZfUE9TVF9DUkVBVEVEEAASEwoPRVZfUE9TVF9VUERBVEVEEAESEw'
    'oPRVZfUE9TVF9ERUxFVEVEEAISEgoORVZfUE9TVF9DT1VOVFMQAw==');

@$core.Deprecated('Use moderationKindDescriptor instead')
const ModerationKind$json = {
  '1': 'ModerationKind',
  '2': [
    {'1': 'MOD_LIST_MUTED', '2': 0},
    {'1': 'MOD_LIST_BLOCKED', '2': 1},
  ],
};

/// Descriptor for `ModerationKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List moderationKindDescriptor = $convert.base64Decode(
    'Cg5Nb2RlcmF0aW9uS2luZBISCg5NT0RfTElTVF9NVVRFRBAAEhQKEE1PRF9MSVNUX0JMT0NLRU'
    'QQAQ==');

@$core.Deprecated('Use clientOptionsDescriptor instead')
const ClientOptions$json = {
  '1': 'ClientOptions',
  '2': [
    {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    {'1': 'port', '3': 2, '4': 1, '5': 13, '10': 'port'},
    {'1': 'server_pubkey', '3': 3, '4': 1, '5': 9, '10': 'serverPubkey'},
    {'1': 'storage_path', '3': 4, '4': 1, '5': 9, '10': 'storagePath'},
    {'1': 'timeout_secs', '3': 5, '4': 1, '5': 13, '10': 'timeoutSecs'},
    {'1': 'max_retries', '3': 6, '4': 1, '5': 13, '10': 'maxRetries'},
    {'1': 'offline_mode', '3': 7, '4': 1, '5': 8, '10': 'offlineMode'},
  ],
};

/// Descriptor for `ClientOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientOptionsDescriptor = $convert.base64Decode(
    'Cg1DbGllbnRPcHRpb25zEhIKBGhvc3QYASABKAlSBGhvc3QSEgoEcG9ydBgCIAEoDVIEcG9ydB'
    'IjCg1zZXJ2ZXJfcHVia2V5GAMgASgJUgxzZXJ2ZXJQdWJrZXkSIQoMc3RvcmFnZV9wYXRoGAQg'
    'ASgJUgtzdG9yYWdlUGF0aBIhCgx0aW1lb3V0X3NlY3MYBSABKA1SC3RpbWVvdXRTZWNzEh8KC2'
    '1heF9yZXRyaWVzGAYgASgNUgptYXhSZXRyaWVzEiEKDG9mZmxpbmVfbW9kZRgHIAEoCFILb2Zm'
    'bGluZU1vZGU=');

@$core.Deprecated('Use userProfileDescriptor instead')
const UserProfile$json = {
  '1': 'UserProfile',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'identity', '3': 2, '4': 1, '5': 9, '10': 'identity'},
    {'1': 'last_seen_ms', '3': 3, '4': 1, '5': 4, '10': 'lastSeenMs'},
  ],
};

/// Descriptor for `UserProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProfileDescriptor = $convert.base64Decode(
    'CgtVc2VyUHJvZmlsZRIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQSGgoIaWRlbnRpdHkYAiABKA'
    'lSCGlkZW50aXR5EiAKDGxhc3Rfc2Vlbl9tcxgDIAEoBFIKbGFzdFNlZW5Ncw==');

@$core.Deprecated('Use walletDescriptor instead')
const Wallet$json = {
  '1': 'Wallet',
  '2': [
    {'1': 'wallet_id', '3': 1, '4': 1, '5': 9, '10': 'walletId'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'currency', '3': 3, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'balance_minor', '3': 4, '4': 1, '5': 3, '10': 'balanceMinor'},
    {'1': 'decimal_places', '3': 5, '4': 1, '5': 13, '10': 'decimalPlaces'},
  ],
};

/// Descriptor for `Wallet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletDescriptor = $convert.base64Decode(
    'CgZXYWxsZXQSGwoJd2FsbGV0X2lkGAEgASgJUgh3YWxsZXRJZBIXCgd1c2VyX2lkGAIgASgJUg'
    'Z1c2VySWQSGgoIY3VycmVuY3kYAyABKAlSCGN1cnJlbmN5EiMKDWJhbGFuY2VfbWlub3IYBCAB'
    'KANSDGJhbGFuY2VNaW5vchIlCg5kZWNpbWFsX3BsYWNlcxgFIAEoDVINZGVjaW1hbFBsYWNlcw'
    '==');

@$core.Deprecated('Use balanceSnapshotDescriptor instead')
const BalanceSnapshot$json = {
  '1': 'BalanceSnapshot',
  '2': [
    {'1': 'currency', '3': 1, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'amount_minor', '3': 2, '4': 1, '5': 3, '10': 'amountMinor'},
    {'1': 'decimal_places', '3': 3, '4': 1, '5': 13, '10': 'decimalPlaces'},
    {'1': 'updated_at_ms', '3': 4, '4': 1, '5': 4, '10': 'updatedAtMs'},
  ],
};

/// Descriptor for `BalanceSnapshot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List balanceSnapshotDescriptor = $convert.base64Decode(
    'Cg9CYWxhbmNlU25hcHNob3QSGgoIY3VycmVuY3kYASABKAlSCGN1cnJlbmN5EiEKDGFtb3VudF'
    '9taW5vchgCIAEoA1ILYW1vdW50TWlub3ISJQoOZGVjaW1hbF9wbGFjZXMYAyABKA1SDWRlY2lt'
    'YWxQbGFjZXMSIgoNdXBkYXRlZF9hdF9tcxgEIAEoBFILdXBkYXRlZEF0TXM=');

@$core.Deprecated('Use transactionDescriptor instead')
const Transaction$json = {
  '1': 'Transaction',
  '2': [
    {'1': 'tx_id', '3': 1, '4': 1, '5': 9, '10': 'txId'},
    {'1': 'timestamp_secs', '3': 2, '4': 1, '5': 4, '10': 'timestampSecs'},
    {'1': 'amount_minor', '3': 3, '4': 1, '5': 3, '10': 'amountMinor'},
    {'1': 'counterpart', '3': 4, '4': 1, '5': 9, '10': 'counterpart'},
    {'1': 'reference', '3': 5, '4': 1, '5': 9, '10': 'reference'},
    {'1': 'currency', '3': 6, '4': 1, '5': 9, '10': 'currency'},
  ],
};

/// Descriptor for `Transaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDescriptor = $convert.base64Decode(
    'CgtUcmFuc2FjdGlvbhITCgV0eF9pZBgBIAEoCVIEdHhJZBIlCg50aW1lc3RhbXBfc2VjcxgCIA'
    'EoBFINdGltZXN0YW1wU2VjcxIhCgxhbW91bnRfbWlub3IYAyABKANSC2Ftb3VudE1pbm9yEiAK'
    'C2NvdW50ZXJwYXJ0GAQgASgJUgtjb3VudGVycGFydBIcCglyZWZlcmVuY2UYBSABKAlSCXJlZm'
    'VyZW5jZRIaCghjdXJyZW5jeRgGIAEoCVIIY3VycmVuY3k=');

@$core.Deprecated('Use pollOptionDescriptor instead')
const PollOption$json = {
  '1': 'PollOption',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    {'1': 'votes', '3': 2, '4': 1, '5': 13, '10': 'votes'},
  ],
};

/// Descriptor for `PollOption`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pollOptionDescriptor = $convert.base64Decode(
    'CgpQb2xsT3B0aW9uEhIKBHRleHQYASABKAlSBHRleHQSFAoFdm90ZXMYAiABKA1SBXZvdGVz');

@$core.Deprecated('Use pollDescriptor instead')
const Poll$json = {
  '1': 'Poll',
  '2': [
    {
      '1': 'options',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.btdlib.proto.PollOption',
      '10': 'options'
    },
    {'1': 'viewer_vote', '3': 2, '4': 1, '5': 5, '10': 'viewerVote'},
    {'1': 'ends_at', '3': 3, '4': 1, '5': 4, '10': 'endsAt'},
    {'1': 'total_votes', '3': 4, '4': 1, '5': 13, '10': 'totalVotes'},
  ],
};

/// Descriptor for `Poll`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pollDescriptor = $convert.base64Decode(
    'CgRQb2xsEjIKB29wdGlvbnMYASADKAsyGC5idGRsaWIucHJvdG8uUG9sbE9wdGlvblIHb3B0aW'
    '9ucxIfCgt2aWV3ZXJfdm90ZRgCIAEoBVIKdmlld2VyVm90ZRIXCgdlbmRzX2F0GAMgASgEUgZl'
    'bmRzQXQSHwoLdG90YWxfdm90ZXMYBCABKA1SCnRvdGFsVm90ZXM=');

@$core.Deprecated('Use dmMessageDescriptor instead')
const DmMessage$json = {
  '1': 'DmMessage',
  '2': [
    {'1': 'message_id', '3': 1, '4': 1, '5': 9, '10': 'messageId'},
    {'1': 'sender_id', '3': 2, '4': 1, '5': 9, '10': 'senderId'},
    {'1': 'text', '3': 3, '4': 1, '5': 9, '10': 'text'},
    {'1': 'created_at', '3': 4, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'read', '3': 5, '4': 1, '5': 8, '10': 'read'},
    {'1': 'mine', '3': 6, '4': 1, '5': 8, '10': 'mine'},
  ],
};

/// Descriptor for `DmMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dmMessageDescriptor = $convert.base64Decode(
    'CglEbU1lc3NhZ2USHQoKbWVzc2FnZV9pZBgBIAEoCVIJbWVzc2FnZUlkEhsKCXNlbmRlcl9pZB'
    'gCIAEoCVIIc2VuZGVySWQSEgoEdGV4dBgDIAEoCVIEdGV4dBIdCgpjcmVhdGVkX2F0GAQgASgE'
    'UgljcmVhdGVkQXQSEgoEcmVhZBgFIAEoCFIEcmVhZBISCgRtaW5lGAYgASgIUgRtaW5l');

@$core.Deprecated('Use conversationDescriptor instead')
const Conversation$json = {
  '1': 'Conversation',
  '2': [
    {
      '1': 'peer',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Actor',
      '10': 'peer'
    },
    {
      '1': 'last_message',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.DmMessage',
      '10': 'lastMessage'
    },
    {'1': 'unread_count', '3': 3, '4': 1, '5': 13, '10': 'unreadCount'},
    {'1': 'updated_at', '3': 4, '4': 1, '5': 4, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Conversation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conversationDescriptor = $convert.base64Decode(
    'CgxDb252ZXJzYXRpb24SJwoEcGVlchgBIAEoCzITLmJ0ZGxpYi5wcm90by5BY3RvclIEcGVlch'
    'I6CgxsYXN0X21lc3NhZ2UYAiABKAsyFy5idGRsaWIucHJvdG8uRG1NZXNzYWdlUgtsYXN0TWVz'
    'c2FnZRIhCgx1bnJlYWRfY291bnQYAyABKA1SC3VucmVhZENvdW50Eh0KCnVwZGF0ZWRfYXQYBC'
    'ABKARSCXVwZGF0ZWRBdA==');

@$core.Deprecated('Use postDigestDescriptor instead')
const PostDigest$json = {
  '1': 'PostDigest',
  '2': [
    {'1': 'post_id', '3': 1, '4': 1, '5': 9, '10': 'postId'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    {'1': 'like_count', '3': 3, '4': 1, '5': 13, '10': 'likeCount'},
    {'1': 'repost_count', '3': 4, '4': 1, '5': 13, '10': 'repostCount'},
    {'1': 'reply_count', '3': 5, '4': 1, '5': 13, '10': 'replyCount'},
    {'1': 'edited', '3': 6, '4': 1, '5': 8, '10': 'edited'},
    {
      '1': 'poll',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Poll',
      '10': 'poll'
    },
  ],
};

/// Descriptor for `PostDigest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postDigestDescriptor = $convert.base64Decode(
    'CgpQb3N0RGlnZXN0EhcKB3Bvc3RfaWQYASABKAlSBnBvc3RJZBISCgR0ZXh0GAIgASgJUgR0ZX'
    'h0Eh0KCmxpa2VfY291bnQYAyABKA1SCWxpa2VDb3VudBIhCgxyZXBvc3RfY291bnQYBCABKA1S'
    'C3JlcG9zdENvdW50Eh8KC3JlcGx5X2NvdW50GAUgASgNUgpyZXBseUNvdW50EhYKBmVkaXRlZB'
    'gGIAEoCFIGZWRpdGVkEiYKBHBvbGwYByABKAsyEi5idGRsaWIucHJvdG8uUG9sbFIEcG9sbA==');

@$core.Deprecated('Use linkPreviewDescriptor instead')
const LinkPreview$json = {
  '1': 'LinkPreview',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'image_url', '3': 4, '4': 1, '5': 9, '10': 'imageUrl'},
    {'1': 'site_name', '3': 5, '4': 1, '5': 9, '10': 'siteName'},
  ],
};

/// Descriptor for `LinkPreview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linkPreviewDescriptor = $convert.base64Decode(
    'CgtMaW5rUHJldmlldxIQCgN1cmwYASABKAlSA3VybBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSIA'
    'oLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhsKCWltYWdlX3VybBgEIAEoCVIIaW1h'
    'Z2VVcmwSGwoJc2l0ZV9uYW1lGAUgASgJUghzaXRlTmFtZQ==');

@$core.Deprecated('Use trendDescriptor instead')
const Trend$json = {
  '1': 'Trend',
  '2': [
    {'1': 'tag', '3': 1, '4': 1, '5': 9, '10': 'tag'},
    {'1': 'post_count', '3': 2, '4': 1, '5': 13, '10': 'postCount'},
  ],
};

/// Descriptor for `Trend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trendDescriptor = $convert.base64Decode(
    'CgVUcmVuZBIQCgN0YWcYASABKAlSA3RhZxIdCgpwb3N0X2NvdW50GAIgASgNUglwb3N0Q291bn'
    'Q=');

@$core.Deprecated('Use actorDescriptor instead')
const Actor$json = {
  '1': 'Actor',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'handle', '3': 2, '4': 1, '5': 9, '10': 'handle'},
    {'1': 'display_name', '3': 3, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'bio', '3': 4, '4': 1, '5': 9, '10': 'bio'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'followers_count', '3': 6, '4': 1, '5': 13, '10': 'followersCount'},
    {'1': 'following_count', '3': 7, '4': 1, '5': 13, '10': 'followingCount'},
    {'1': 'posts_count', '3': 8, '4': 1, '5': 13, '10': 'postsCount'},
    {'1': 'replies_count', '3': 18, '4': 1, '5': 13, '10': 'repliesCount'},
    {'1': 'viewer_following', '3': 9, '4': 1, '5': 8, '10': 'viewerFollowing'},
    {'1': 'follows_viewer', '3': 10, '4': 1, '5': 8, '10': 'followsViewer'},
    {'1': 'avatar_url', '3': 11, '4': 1, '5': 9, '10': 'avatarUrl'},
    {'1': 'banner_url', '3': 12, '4': 1, '5': 9, '10': 'bannerUrl'},
    {'1': 'verified', '3': 13, '4': 1, '5': 8, '10': 'verified'},
    {'1': 'online', '3': 14, '4': 1, '5': 8, '10': 'online'},
    {'1': 'pinned_post_id', '3': 15, '4': 1, '5': 9, '10': 'pinnedPostId'},
    {'1': 'viewer_muted', '3': 16, '4': 1, '5': 8, '10': 'viewerMuted'},
    {'1': 'viewer_blocked', '3': 17, '4': 1, '5': 8, '10': 'viewerBlocked'},
  ],
};

/// Descriptor for `Actor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actorDescriptor = $convert.base64Decode(
    'CgVBY3RvchIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQSFgoGaGFuZGxlGAIgASgJUgZoYW5kbG'
    'USIQoMZGlzcGxheV9uYW1lGAMgASgJUgtkaXNwbGF5TmFtZRIQCgNiaW8YBCABKAlSA2JpbxId'
    'CgpjcmVhdGVkX2F0GAUgASgEUgljcmVhdGVkQXQSJwoPZm9sbG93ZXJzX2NvdW50GAYgASgNUg'
    '5mb2xsb3dlcnNDb3VudBInCg9mb2xsb3dpbmdfY291bnQYByABKA1SDmZvbGxvd2luZ0NvdW50'
    'Eh8KC3Bvc3RzX2NvdW50GAggASgNUgpwb3N0c0NvdW50EiMKDXJlcGxpZXNfY291bnQYEiABKA'
    '1SDHJlcGxpZXNDb3VudBIpChB2aWV3ZXJfZm9sbG93aW5nGAkgASgIUg92aWV3ZXJGb2xsb3dp'
    'bmcSJQoOZm9sbG93c192aWV3ZXIYCiABKAhSDWZvbGxvd3NWaWV3ZXISHQoKYXZhdGFyX3VybB'
    'gLIAEoCVIJYXZhdGFyVXJsEh0KCmJhbm5lcl91cmwYDCABKAlSCWJhbm5lclVybBIaCgh2ZXJp'
    'ZmllZBgNIAEoCFIIdmVyaWZpZWQSFgoGb25saW5lGA4gASgIUgZvbmxpbmUSJAoOcGlubmVkX3'
    'Bvc3RfaWQYDyABKAlSDHBpbm5lZFBvc3RJZBIhCgx2aWV3ZXJfbXV0ZWQYECABKAhSC3ZpZXdl'
    'ck11dGVkEiUKDnZpZXdlcl9ibG9ja2VkGBEgASgIUg12aWV3ZXJCbG9ja2Vk');

@$core.Deprecated('Use mediaItemDescriptor instead')
const MediaItem$json = {
  '1': 'MediaItem',
  '2': [
    {'1': 'media_id', '3': 1, '4': 1, '5': 9, '10': 'mediaId'},
    {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    {'1': 'mime', '3': 3, '4': 1, '5': 9, '10': 'mime'},
    {'1': 'kind', '3': 4, '4': 1, '5': 9, '10': 'kind'},
  ],
};

/// Descriptor for `MediaItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mediaItemDescriptor = $convert.base64Decode(
    'CglNZWRpYUl0ZW0SGQoIbWVkaWFfaWQYASABKAlSB21lZGlhSWQSEAoDdXJsGAIgASgJUgN1cm'
    'wSEgoEbWltZRgDIAEoCVIEbWltZRISCgRraW5kGAQgASgJUgRraW5k');

@$core.Deprecated('Use postDescriptor instead')
const Post$json = {
  '1': 'Post',
  '2': [
    {'1': 'post_id', '3': 1, '4': 1, '5': 9, '10': 'postId'},
    {
      '1': 'author',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Actor',
      '10': 'author'
    },
    {'1': 'text', '3': 3, '4': 1, '5': 9, '10': 'text'},
    {'1': 'created_at', '3': 4, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'reply_to_post_id', '3': 5, '4': 1, '5': 9, '10': 'replyToPostId'},
    {'1': 'root_post_id', '3': 6, '4': 1, '5': 9, '10': 'rootPostId'},
    {'1': 'like_count', '3': 7, '4': 1, '5': 13, '10': 'likeCount'},
    {'1': 'repost_count', '3': 8, '4': 1, '5': 13, '10': 'repostCount'},
    {'1': 'reply_count', '3': 9, '4': 1, '5': 13, '10': 'replyCount'},
    {'1': 'viewer_liked', '3': 10, '4': 1, '5': 8, '10': 'viewerLiked'},
    {'1': 'viewer_reposted', '3': 11, '4': 1, '5': 8, '10': 'viewerReposted'},
    {'1': 'reply_to_handle', '3': 12, '4': 1, '5': 9, '10': 'replyToHandle'},
    {
      '1': 'media',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.btdlib.proto.MediaItem',
      '10': 'media'
    },
    {
      '1': 'link_preview',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.LinkPreview',
      '10': 'linkPreview'
    },
    {'1': 'edited', '3': 15, '4': 1, '5': 8, '10': 'edited'},
    {
      '1': 'viewer_bookmarked',
      '3': 16,
      '4': 1,
      '5': 8,
      '10': 'viewerBookmarked'
    },
    {'1': 'views', '3': 17, '4': 1, '5': 4, '10': 'views'},
    {
      '1': 'quoted_post',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Post',
      '10': 'quotedPost'
    },
    {
      '1': 'poll',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Poll',
      '10': 'poll'
    },
  ],
};

/// Descriptor for `Post`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postDescriptor = $convert.base64Decode(
    'CgRQb3N0EhcKB3Bvc3RfaWQYASABKAlSBnBvc3RJZBIrCgZhdXRob3IYAiABKAsyEy5idGRsaW'
    'IucHJvdG8uQWN0b3JSBmF1dGhvchISCgR0ZXh0GAMgASgJUgR0ZXh0Eh0KCmNyZWF0ZWRfYXQY'
    'BCABKARSCWNyZWF0ZWRBdBInChByZXBseV90b19wb3N0X2lkGAUgASgJUg1yZXBseVRvUG9zdE'
    'lkEiAKDHJvb3RfcG9zdF9pZBgGIAEoCVIKcm9vdFBvc3RJZBIdCgpsaWtlX2NvdW50GAcgASgN'
    'UglsaWtlQ291bnQSIQoMcmVwb3N0X2NvdW50GAggASgNUgtyZXBvc3RDb3VudBIfCgtyZXBseV'
    '9jb3VudBgJIAEoDVIKcmVwbHlDb3VudBIhCgx2aWV3ZXJfbGlrZWQYCiABKAhSC3ZpZXdlckxp'
    'a2VkEicKD3ZpZXdlcl9yZXBvc3RlZBgLIAEoCFIOdmlld2VyUmVwb3N0ZWQSJgoPcmVwbHlfdG'
    '9faGFuZGxlGAwgASgJUg1yZXBseVRvSGFuZGxlEi0KBW1lZGlhGA0gAygLMhcuYnRkbGliLnBy'
    'b3RvLk1lZGlhSXRlbVIFbWVkaWESPAoMbGlua19wcmV2aWV3GA4gASgLMhkuYnRkbGliLnByb3'
    'RvLkxpbmtQcmV2aWV3UgtsaW5rUHJldmlldxIWCgZlZGl0ZWQYDyABKAhSBmVkaXRlZBIrChF2'
    'aWV3ZXJfYm9va21hcmtlZBgQIAEoCFIQdmlld2VyQm9va21hcmtlZBIUCgV2aWV3cxgRIAEoBF'
    'IFdmlld3MSMwoLcXVvdGVkX3Bvc3QYEiABKAsyEi5idGRsaWIucHJvdG8uUG9zdFIKcXVvdGVk'
    'UG9zdBImCgRwb2xsGBMgASgLMhIuYnRkbGliLnByb3RvLlBvbGxSBHBvbGw=');

@$core.Deprecated('Use feedItemDescriptor instead')
const FeedItem$json = {
  '1': 'FeedItem',
  '2': [
    {
      '1': 'post',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Post',
      '10': 'post'
    },
    {
      '1': 'reposted_by_handle',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'repostedByHandle'
    },
    {'1': 'sort_at', '3': 3, '4': 1, '5': 4, '10': 'sortAt'},
  ],
};

/// Descriptor for `FeedItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedItemDescriptor = $convert.base64Decode(
    'CghGZWVkSXRlbRImCgRwb3N0GAEgASgLMhIuYnRkbGliLnByb3RvLlBvc3RSBHBvc3QSLAoScm'
    'Vwb3N0ZWRfYnlfaGFuZGxlGAIgASgJUhByZXBvc3RlZEJ5SGFuZGxlEhcKB3NvcnRfYXQYAyAB'
    'KARSBnNvcnRBdA==');

@$core.Deprecated('Use notificationDescriptor instead')
const Notification$json = {
  '1': 'Notification',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'kind', '3': 2, '4': 1, '5': 9, '10': 'kind'},
    {
      '1': 'actor',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Actor',
      '10': 'actor'
    },
    {'1': 'post_id', '3': 4, '4': 1, '5': 9, '10': 'postId'},
    {'1': 'post_text', '3': 5, '4': 1, '5': 9, '10': 'postText'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'read', '3': 7, '4': 1, '5': 8, '10': 'read'},
  ],
};

/// Descriptor for `Notification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notificationDescriptor = $convert.base64Decode(
    'CgxOb3RpZmljYXRpb24SDgoCaWQYASABKAlSAmlkEhIKBGtpbmQYAiABKAlSBGtpbmQSKQoFYW'
    'N0b3IYAyABKAsyEy5idGRsaWIucHJvdG8uQWN0b3JSBWFjdG9yEhcKB3Bvc3RfaWQYBCABKAlS'
    'BnBvc3RJZBIbCglwb3N0X3RleHQYBSABKAlSCHBvc3RUZXh0Eh0KCmNyZWF0ZWRfYXQYBiABKA'
    'RSCWNyZWF0ZWRBdBISCgRyZWFkGAcgASgIUgRyZWFk');

@$core.Deprecated('Use clientRequestDescriptor instead')
const ClientRequest$json = {
  '1': 'ClientRequest',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 4, '10': 'requestId'},
    {
      '1': 'ping',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PingCall',
      '9': 0,
      '10': 'ping'
    },
    {
      '1': 'auth',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.AuthCall',
      '9': 0,
      '10': 'auth'
    },
    {
      '1': 'get_balance',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetBalanceCall',
      '9': 0,
      '10': 'getBalance'
    },
    {
      '1': 'transfer',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.TransferCall',
      '9': 0,
      '10': 'transfer'
    },
    {
      '1': 'get_history',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetHistoryCall',
      '9': 0,
      '10': 'getHistory'
    },
    {
      '1': 'get_profile',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetProfileCall',
      '9': 0,
      '10': 'getProfile'
    },
    {
      '1': 'close_session',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.CloseSessionCall',
      '9': 0,
      '10': 'closeSession'
    },
    {
      '1': 'register',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.RegisterCall',
      '9': 0,
      '10': 'register'
    },
    {
      '1': 'create_post',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.CreatePostCall',
      '9': 0,
      '10': 'createPost'
    },
    {
      '1': 'get_feed',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetFeedCall',
      '9': 0,
      '10': 'getFeed'
    },
    {
      '1': 'like',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.LikeCall',
      '9': 0,
      '10': 'like'
    },
    {
      '1': 'repost',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.RepostCall',
      '9': 0,
      '10': 'repost'
    },
    {
      '1': 'follow',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.FollowCall',
      '9': 0,
      '10': 'follow'
    },
    {
      '1': 'get_actor',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetActorCall',
      '9': 0,
      '10': 'getActor'
    },
    {
      '1': 'get_thread',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetThreadCall',
      '9': 0,
      '10': 'getThread'
    },
    {
      '1': 'search_actors',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.SearchActorsCall',
      '9': 0,
      '10': 'searchActors'
    },
    {
      '1': 'get_notifications',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetNotificationsCall',
      '9': 0,
      '10': 'getNotifications'
    },
    {
      '1': 'update_profile',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UpdateProfileCall',
      '9': 0,
      '10': 'updateProfile'
    },
    {
      '1': 'upload_media',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UploadMediaCall',
      '9': 0,
      '10': 'uploadMedia'
    },
    {
      '1': 'get_trends',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetTrendsCall',
      '9': 0,
      '10': 'getTrends'
    },
    {
      '1': 'get_follows',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetFollowsCall',
      '9': 0,
      '10': 'getFollows'
    },
    {
      '1': 'edit_post',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.EditPostCall',
      '9': 0,
      '10': 'editPost'
    },
    {
      '1': 'delete_post',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.DeletePostCall',
      '9': 0,
      '10': 'deletePost'
    },
    {
      '1': 'bookmark',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.BookmarkCall',
      '9': 0,
      '10': 'bookmark'
    },
    {
      '1': 'pin_post',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PinPostCall',
      '9': 0,
      '10': 'pinPost'
    },
    {
      '1': 'vote_poll',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.VotePollCall',
      '9': 0,
      '10': 'votePoll'
    },
    {
      '1': 'search_posts',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.SearchPostsCall',
      '9': 0,
      '10': 'searchPosts'
    },
    {
      '1': 'send_dm',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.SendDmCall',
      '9': 0,
      '10': 'sendDm'
    },
    {
      '1': 'get_conversations',
      '3': 30,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetConversationsCall',
      '9': 0,
      '10': 'getConversations'
    },
    {
      '1': 'get_messages',
      '3': 31,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetMessagesCall',
      '9': 0,
      '10': 'getMessages'
    },
    {
      '1': 'moderate',
      '3': 32,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.ModerateCall',
      '9': 0,
      '10': 'moderate'
    },
    {
      '1': 'security_status',
      '3': 33,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.SecurityStatusCall',
      '9': 0,
      '10': 'securityStatus'
    },
    {
      '1': 'passkey_register',
      '3': 34,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PasskeyRegisterCall',
      '9': 0,
      '10': 'passkeyRegister'
    },
    {
      '1': 'passkey_list',
      '3': 35,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PasskeyListCall',
      '9': 0,
      '10': 'passkeyList'
    },
    {
      '1': 'passkey_delete',
      '3': 36,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PasskeyDeleteCall',
      '9': 0,
      '10': 'passkeyDelete'
    },
    {
      '1': 'passkey_login_begin',
      '3': 37,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PasskeyLoginBeginCall',
      '9': 0,
      '10': 'passkeyLoginBegin'
    },
    {
      '1': 'passkey_login_finish',
      '3': 38,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PasskeyLoginFinishCall',
      '9': 0,
      '10': 'passkeyLoginFinish'
    },
    {
      '1': 'totp_enroll_begin',
      '3': 39,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.TotpEnrollBeginCall',
      '9': 0,
      '10': 'totpEnrollBegin'
    },
    {
      '1': 'totp_enroll_finish',
      '3': 40,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.TotpEnrollFinishCall',
      '9': 0,
      '10': 'totpEnrollFinish'
    },
    {
      '1': 'totp_disable',
      '3': 41,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.TotpDisableCall',
      '9': 0,
      '10': 'totpDisable'
    },
    {
      '1': 'passkey_reg_begin',
      '3': 42,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PasskeyRegBeginCall',
      '9': 0,
      '10': 'passkeyRegBegin'
    },
    {
      '1': 'passkey_reg_finish',
      '3': 43,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PasskeyRegFinishCall',
      '9': 0,
      '10': 'passkeyRegFinish'
    },
    {
      '1': 'passkey_auth_begin',
      '3': 44,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PasskeyAuthBeginCall',
      '9': 0,
      '10': 'passkeyAuthBegin'
    },
    {
      '1': 'passkey_auth_finish',
      '3': 45,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PasskeyAuthFinishCall',
      '9': 0,
      '10': 'passkeyAuthFinish'
    },
    {
      '1': 'get_moderation_list',
      '3': 46,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetModerationListCall',
      '9': 0,
      '10': 'getModerationList'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `ClientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientRequestDescriptor = $convert.base64Decode(
    'Cg1DbGllbnRSZXF1ZXN0Eh0KCnJlcXVlc3RfaWQYASABKARSCXJlcXVlc3RJZBIsCgRwaW5nGA'
    'IgASgLMhYuYnRkbGliLnByb3RvLlBpbmdDYWxsSABSBHBpbmcSLAoEYXV0aBgDIAEoCzIWLmJ0'
    'ZGxpYi5wcm90by5BdXRoQ2FsbEgAUgRhdXRoEj8KC2dldF9iYWxhbmNlGAQgASgLMhwuYnRkbG'
    'liLnByb3RvLkdldEJhbGFuY2VDYWxsSABSCmdldEJhbGFuY2USOAoIdHJhbnNmZXIYBSABKAsy'
    'Gi5idGRsaWIucHJvdG8uVHJhbnNmZXJDYWxsSABSCHRyYW5zZmVyEj8KC2dldF9oaXN0b3J5GA'
    'YgASgLMhwuYnRkbGliLnByb3RvLkdldEhpc3RvcnlDYWxsSABSCmdldEhpc3RvcnkSPwoLZ2V0'
    'X3Byb2ZpbGUYByABKAsyHC5idGRsaWIucHJvdG8uR2V0UHJvZmlsZUNhbGxIAFIKZ2V0UHJvZm'
    'lsZRJFCg1jbG9zZV9zZXNzaW9uGAggASgLMh4uYnRkbGliLnByb3RvLkNsb3NlU2Vzc2lvbkNh'
    'bGxIAFIMY2xvc2VTZXNzaW9uEjgKCHJlZ2lzdGVyGAkgASgLMhouYnRkbGliLnByb3RvLlJlZ2'
    'lzdGVyQ2FsbEgAUghyZWdpc3RlchI/CgtjcmVhdGVfcG9zdBgKIAEoCzIcLmJ0ZGxpYi5wcm90'
    'by5DcmVhdGVQb3N0Q2FsbEgAUgpjcmVhdGVQb3N0EjYKCGdldF9mZWVkGAsgASgLMhkuYnRkbG'
    'liLnByb3RvLkdldEZlZWRDYWxsSABSB2dldEZlZWQSLAoEbGlrZRgMIAEoCzIWLmJ0ZGxpYi5w'
    'cm90by5MaWtlQ2FsbEgAUgRsaWtlEjIKBnJlcG9zdBgNIAEoCzIYLmJ0ZGxpYi5wcm90by5SZX'
    'Bvc3RDYWxsSABSBnJlcG9zdBIyCgZmb2xsb3cYDiABKAsyGC5idGRsaWIucHJvdG8uRm9sbG93'
    'Q2FsbEgAUgZmb2xsb3cSOQoJZ2V0X2FjdG9yGA8gASgLMhouYnRkbGliLnByb3RvLkdldEFjdG'
    '9yQ2FsbEgAUghnZXRBY3RvchI8CgpnZXRfdGhyZWFkGBAgASgLMhsuYnRkbGliLnByb3RvLkdl'
    'dFRocmVhZENhbGxIAFIJZ2V0VGhyZWFkEkUKDXNlYXJjaF9hY3RvcnMYESABKAsyHi5idGRsaW'
    'IucHJvdG8uU2VhcmNoQWN0b3JzQ2FsbEgAUgxzZWFyY2hBY3RvcnMSUQoRZ2V0X25vdGlmaWNh'
    'dGlvbnMYEiABKAsyIi5idGRsaWIucHJvdG8uR2V0Tm90aWZpY2F0aW9uc0NhbGxIAFIQZ2V0Tm'
    '90aWZpY2F0aW9ucxJICg51cGRhdGVfcHJvZmlsZRgTIAEoCzIfLmJ0ZGxpYi5wcm90by5VcGRh'
    'dGVQcm9maWxlQ2FsbEgAUg11cGRhdGVQcm9maWxlEkIKDHVwbG9hZF9tZWRpYRgUIAEoCzIdLm'
    'J0ZGxpYi5wcm90by5VcGxvYWRNZWRpYUNhbGxIAFILdXBsb2FkTWVkaWESPAoKZ2V0X3RyZW5k'
    'cxgVIAEoCzIbLmJ0ZGxpYi5wcm90by5HZXRUcmVuZHNDYWxsSABSCWdldFRyZW5kcxI/CgtnZX'
    'RfZm9sbG93cxgWIAEoCzIcLmJ0ZGxpYi5wcm90by5HZXRGb2xsb3dzQ2FsbEgAUgpnZXRGb2xs'
    'b3dzEjkKCWVkaXRfcG9zdBgXIAEoCzIaLmJ0ZGxpYi5wcm90by5FZGl0UG9zdENhbGxIAFIIZW'
    'RpdFBvc3QSPwoLZGVsZXRlX3Bvc3QYGCABKAsyHC5idGRsaWIucHJvdG8uRGVsZXRlUG9zdENh'
    'bGxIAFIKZGVsZXRlUG9zdBI4Cghib29rbWFyaxgZIAEoCzIaLmJ0ZGxpYi5wcm90by5Cb29rbW'
    'Fya0NhbGxIAFIIYm9va21hcmsSNgoIcGluX3Bvc3QYGiABKAsyGS5idGRsaWIucHJvdG8uUGlu'
    'UG9zdENhbGxIAFIHcGluUG9zdBI5Cgl2b3RlX3BvbGwYGyABKAsyGi5idGRsaWIucHJvdG8uVm'
    '90ZVBvbGxDYWxsSABSCHZvdGVQb2xsEkIKDHNlYXJjaF9wb3N0cxgcIAEoCzIdLmJ0ZGxpYi5w'
    'cm90by5TZWFyY2hQb3N0c0NhbGxIAFILc2VhcmNoUG9zdHMSMwoHc2VuZF9kbRgdIAEoCzIYLm'
    'J0ZGxpYi5wcm90by5TZW5kRG1DYWxsSABSBnNlbmREbRJRChFnZXRfY29udmVyc2F0aW9ucxge'
    'IAEoCzIiLmJ0ZGxpYi5wcm90by5HZXRDb252ZXJzYXRpb25zQ2FsbEgAUhBnZXRDb252ZXJzYX'
    'Rpb25zEkIKDGdldF9tZXNzYWdlcxgfIAEoCzIdLmJ0ZGxpYi5wcm90by5HZXRNZXNzYWdlc0Nh'
    'bGxIAFILZ2V0TWVzc2FnZXMSOAoIbW9kZXJhdGUYICABKAsyGi5idGRsaWIucHJvdG8uTW9kZX'
    'JhdGVDYWxsSABSCG1vZGVyYXRlEksKD3NlY3VyaXR5X3N0YXR1cxghIAEoCzIgLmJ0ZGxpYi5w'
    'cm90by5TZWN1cml0eVN0YXR1c0NhbGxIAFIOc2VjdXJpdHlTdGF0dXMSTgoQcGFzc2tleV9yZW'
    'dpc3RlchgiIAEoCzIhLmJ0ZGxpYi5wcm90by5QYXNza2V5UmVnaXN0ZXJDYWxsSABSD3Bhc3Nr'
    'ZXlSZWdpc3RlchJCCgxwYXNza2V5X2xpc3QYIyABKAsyHS5idGRsaWIucHJvdG8uUGFzc2tleU'
    'xpc3RDYWxsSABSC3Bhc3NrZXlMaXN0EkgKDnBhc3NrZXlfZGVsZXRlGCQgASgLMh8uYnRkbGli'
    'LnByb3RvLlBhc3NrZXlEZWxldGVDYWxsSABSDXBhc3NrZXlEZWxldGUSVQoTcGFzc2tleV9sb2'
    'dpbl9iZWdpbhglIAEoCzIjLmJ0ZGxpYi5wcm90by5QYXNza2V5TG9naW5CZWdpbkNhbGxIAFIR'
    'cGFzc2tleUxvZ2luQmVnaW4SWAoUcGFzc2tleV9sb2dpbl9maW5pc2gYJiABKAsyJC5idGRsaW'
    'IucHJvdG8uUGFzc2tleUxvZ2luRmluaXNoQ2FsbEgAUhJwYXNza2V5TG9naW5GaW5pc2gSTwoR'
    'dG90cF9lbnJvbGxfYmVnaW4YJyABKAsyIS5idGRsaWIucHJvdG8uVG90cEVucm9sbEJlZ2luQ2'
    'FsbEgAUg90b3RwRW5yb2xsQmVnaW4SUgoSdG90cF9lbnJvbGxfZmluaXNoGCggASgLMiIuYnRk'
    'bGliLnByb3RvLlRvdHBFbnJvbGxGaW5pc2hDYWxsSABSEHRvdHBFbnJvbGxGaW5pc2gSQgoMdG'
    '90cF9kaXNhYmxlGCkgASgLMh0uYnRkbGliLnByb3RvLlRvdHBEaXNhYmxlQ2FsbEgAUgt0b3Rw'
    'RGlzYWJsZRJPChFwYXNza2V5X3JlZ19iZWdpbhgqIAEoCzIhLmJ0ZGxpYi5wcm90by5QYXNza2'
    'V5UmVnQmVnaW5DYWxsSABSD3Bhc3NrZXlSZWdCZWdpbhJSChJwYXNza2V5X3JlZ19maW5pc2gY'
    'KyABKAsyIi5idGRsaWIucHJvdG8uUGFzc2tleVJlZ0ZpbmlzaENhbGxIAFIQcGFzc2tleVJlZ0'
    'ZpbmlzaBJSChJwYXNza2V5X2F1dGhfYmVnaW4YLCABKAsyIi5idGRsaWIucHJvdG8uUGFzc2tl'
    'eUF1dGhCZWdpbkNhbGxIAFIQcGFzc2tleUF1dGhCZWdpbhJVChNwYXNza2V5X2F1dGhfZmluaX'
    'NoGC0gASgLMiMuYnRkbGliLnByb3RvLlBhc3NrZXlBdXRoRmluaXNoQ2FsbEgAUhFwYXNza2V5'
    'QXV0aEZpbmlzaBJVChNnZXRfbW9kZXJhdGlvbl9saXN0GC4gASgLMiMuYnRkbGliLnByb3RvLk'
    'dldE1vZGVyYXRpb25MaXN0Q2FsbEgAUhFnZXRNb2RlcmF0aW9uTGlzdEIJCgdwYXlsb2Fk');

@$core.Deprecated('Use getModerationListCallDescriptor instead')
const GetModerationListCall$json = {
  '1': 'GetModerationListCall',
  '2': [
    {
      '1': 'kind',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.btdlib.proto.ModerationKind',
      '10': 'kind'
    },
  ],
};

/// Descriptor for `GetModerationListCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getModerationListCallDescriptor = $convert.base64Decode(
    'ChVHZXRNb2RlcmF0aW9uTGlzdENhbGwSMAoEa2luZBgBIAEoDjIcLmJ0ZGxpYi5wcm90by5Nb2'
    'RlcmF0aW9uS2luZFIEa2luZA==');

@$core.Deprecated('Use passkeyRegBeginCallDescriptor instead')
const PasskeyRegBeginCall$json = {
  '1': 'PasskeyRegBeginCall',
};

/// Descriptor for `PasskeyRegBeginCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passkeyRegBeginCallDescriptor =
    $convert.base64Decode('ChNQYXNza2V5UmVnQmVnaW5DYWxs');

@$core.Deprecated('Use passkeyRegFinishCallDescriptor instead')
const PasskeyRegFinishCall$json = {
  '1': 'PasskeyRegFinishCall',
  '2': [
    {'1': 'response_json', '3': 1, '4': 1, '5': 9, '10': 'responseJson'},
    {'1': 'device_name', '3': 2, '4': 1, '5': 9, '10': 'deviceName'},
  ],
};

/// Descriptor for `PasskeyRegFinishCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passkeyRegFinishCallDescriptor = $convert.base64Decode(
    'ChRQYXNza2V5UmVnRmluaXNoQ2FsbBIjCg1yZXNwb25zZV9qc29uGAEgASgJUgxyZXNwb25zZU'
    'pzb24SHwoLZGV2aWNlX25hbWUYAiABKAlSCmRldmljZU5hbWU=');

@$core.Deprecated('Use passkeyAuthBeginCallDescriptor instead')
const PasskeyAuthBeginCall$json = {
  '1': 'PasskeyAuthBeginCall',
};

/// Descriptor for `PasskeyAuthBeginCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passkeyAuthBeginCallDescriptor =
    $convert.base64Decode('ChRQYXNza2V5QXV0aEJlZ2luQ2FsbA==');

@$core.Deprecated('Use passkeyAuthFinishCallDescriptor instead')
const PasskeyAuthFinishCall$json = {
  '1': 'PasskeyAuthFinishCall',
  '2': [
    {'1': 'flow_id', '3': 1, '4': 1, '5': 9, '10': 'flowId'},
    {'1': 'response_json', '3': 2, '4': 1, '5': 9, '10': 'responseJson'},
  ],
};

/// Descriptor for `PasskeyAuthFinishCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passkeyAuthFinishCallDescriptor = $convert.base64Decode(
    'ChVQYXNza2V5QXV0aEZpbmlzaENhbGwSFwoHZmxvd19pZBgBIAEoCVIGZmxvd0lkEiMKDXJlc3'
    'BvbnNlX2pzb24YAiABKAlSDHJlc3BvbnNlSnNvbg==');

@$core.Deprecated('Use passkeyDescriptor instead')
const Passkey$json = {
  '1': 'Passkey',
  '2': [
    {'1': 'credential_id', '3': 1, '4': 1, '5': 9, '10': 'credentialId'},
    {'1': 'device_name', '3': 2, '4': 1, '5': 9, '10': 'deviceName'},
    {'1': 'created_at', '3': 3, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'last_used_at', '3': 4, '4': 1, '5': 4, '10': 'lastUsedAt'},
  ],
};

/// Descriptor for `Passkey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passkeyDescriptor = $convert.base64Decode(
    'CgdQYXNza2V5EiMKDWNyZWRlbnRpYWxfaWQYASABKAlSDGNyZWRlbnRpYWxJZBIfCgtkZXZpY2'
    'VfbmFtZRgCIAEoCVIKZGV2aWNlTmFtZRIdCgpjcmVhdGVkX2F0GAMgASgEUgljcmVhdGVkQXQS'
    'IAoMbGFzdF91c2VkX2F0GAQgASgEUgpsYXN0VXNlZEF0');

@$core.Deprecated('Use securityStatusCallDescriptor instead')
const SecurityStatusCall$json = {
  '1': 'SecurityStatusCall',
};

/// Descriptor for `SecurityStatusCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List securityStatusCallDescriptor =
    $convert.base64Decode('ChJTZWN1cml0eVN0YXR1c0NhbGw=');

@$core.Deprecated('Use passkeyRegisterCallDescriptor instead')
const PasskeyRegisterCall$json = {
  '1': 'PasskeyRegisterCall',
  '2': [
    {'1': 'credential_id', '3': 1, '4': 1, '5': 9, '10': 'credentialId'},
    {'1': 'public_key', '3': 2, '4': 1, '5': 12, '10': 'publicKey'},
    {'1': 'device_name', '3': 3, '4': 1, '5': 9, '10': 'deviceName'},
  ],
};

/// Descriptor for `PasskeyRegisterCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passkeyRegisterCallDescriptor = $convert.base64Decode(
    'ChNQYXNza2V5UmVnaXN0ZXJDYWxsEiMKDWNyZWRlbnRpYWxfaWQYASABKAlSDGNyZWRlbnRpYW'
    'xJZBIdCgpwdWJsaWNfa2V5GAIgASgMUglwdWJsaWNLZXkSHwoLZGV2aWNlX25hbWUYAyABKAlS'
    'CmRldmljZU5hbWU=');

@$core.Deprecated('Use passkeyListCallDescriptor instead')
const PasskeyListCall$json = {
  '1': 'PasskeyListCall',
};

/// Descriptor for `PasskeyListCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passkeyListCallDescriptor =
    $convert.base64Decode('Cg9QYXNza2V5TGlzdENhbGw=');

@$core.Deprecated('Use passkeyDeleteCallDescriptor instead')
const PasskeyDeleteCall$json = {
  '1': 'PasskeyDeleteCall',
  '2': [
    {'1': 'credential_id', '3': 1, '4': 1, '5': 9, '10': 'credentialId'},
  ],
};

/// Descriptor for `PasskeyDeleteCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passkeyDeleteCallDescriptor = $convert.base64Decode(
    'ChFQYXNza2V5RGVsZXRlQ2FsbBIjCg1jcmVkZW50aWFsX2lkGAEgASgJUgxjcmVkZW50aWFsSW'
    'Q=');

@$core.Deprecated('Use passkeyLoginBeginCallDescriptor instead')
const PasskeyLoginBeginCall$json = {
  '1': 'PasskeyLoginBeginCall',
  '2': [
    {'1': 'handle', '3': 1, '4': 1, '5': 9, '10': 'handle'},
  ],
};

/// Descriptor for `PasskeyLoginBeginCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passkeyLoginBeginCallDescriptor =
    $convert.base64Decode(
        'ChVQYXNza2V5TG9naW5CZWdpbkNhbGwSFgoGaGFuZGxlGAEgASgJUgZoYW5kbGU=');

@$core.Deprecated('Use passkeyLoginFinishCallDescriptor instead')
const PasskeyLoginFinishCall$json = {
  '1': 'PasskeyLoginFinishCall',
  '2': [
    {'1': 'handle', '3': 1, '4': 1, '5': 9, '10': 'handle'},
    {'1': 'credential_id', '3': 2, '4': 1, '5': 9, '10': 'credentialId'},
    {'1': 'signature', '3': 3, '4': 1, '5': 12, '10': 'signature'},
  ],
};

/// Descriptor for `PasskeyLoginFinishCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passkeyLoginFinishCallDescriptor = $convert.base64Decode(
    'ChZQYXNza2V5TG9naW5GaW5pc2hDYWxsEhYKBmhhbmRsZRgBIAEoCVIGaGFuZGxlEiMKDWNyZW'
    'RlbnRpYWxfaWQYAiABKAlSDGNyZWRlbnRpYWxJZBIcCglzaWduYXR1cmUYAyABKAxSCXNpZ25h'
    'dHVyZQ==');

@$core.Deprecated('Use totpEnrollBeginCallDescriptor instead')
const TotpEnrollBeginCall$json = {
  '1': 'TotpEnrollBeginCall',
};

/// Descriptor for `TotpEnrollBeginCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List totpEnrollBeginCallDescriptor =
    $convert.base64Decode('ChNUb3RwRW5yb2xsQmVnaW5DYWxs');

@$core.Deprecated('Use totpEnrollFinishCallDescriptor instead')
const TotpEnrollFinishCall$json = {
  '1': 'TotpEnrollFinishCall',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
  ],
};

/// Descriptor for `TotpEnrollFinishCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List totpEnrollFinishCallDescriptor = $convert
    .base64Decode('ChRUb3RwRW5yb2xsRmluaXNoQ2FsbBISCgRjb2RlGAEgASgJUgRjb2Rl');

@$core.Deprecated('Use totpDisableCallDescriptor instead')
const TotpDisableCall$json = {
  '1': 'TotpDisableCall',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
  ],
};

/// Descriptor for `TotpDisableCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List totpDisableCallDescriptor = $convert
    .base64Decode('Cg9Ub3RwRGlzYWJsZUNhbGwSEgoEY29kZRgBIAEoCVIEY29kZQ==');

@$core.Deprecated('Use pinPostCallDescriptor instead')
const PinPostCall$json = {
  '1': 'PinPostCall',
  '2': [
    {'1': 'post_id', '3': 1, '4': 1, '5': 9, '10': 'postId'},
  ],
};

/// Descriptor for `PinPostCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pinPostCallDescriptor = $convert
    .base64Decode('CgtQaW5Qb3N0Q2FsbBIXCgdwb3N0X2lkGAEgASgJUgZwb3N0SWQ=');

@$core.Deprecated('Use votePollCallDescriptor instead')
const VotePollCall$json = {
  '1': 'VotePollCall',
  '2': [
    {'1': 'post_id', '3': 1, '4': 1, '5': 9, '10': 'postId'},
    {'1': 'option_index', '3': 2, '4': 1, '5': 13, '10': 'optionIndex'},
  ],
};

/// Descriptor for `VotePollCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List votePollCallDescriptor = $convert.base64Decode(
    'CgxWb3RlUG9sbENhbGwSFwoHcG9zdF9pZBgBIAEoCVIGcG9zdElkEiEKDG9wdGlvbl9pbmRleB'
    'gCIAEoDVILb3B0aW9uSW5kZXg=');

@$core.Deprecated('Use searchPostsCallDescriptor instead')
const SearchPostsCall$json = {
  '1': 'SearchPostsCall',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    {'1': 'cursor', '3': 2, '4': 1, '5': 9, '10': 'cursor'},
    {'1': 'limit', '3': 3, '4': 1, '5': 13, '10': 'limit'},
  ],
};

/// Descriptor for `SearchPostsCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchPostsCallDescriptor = $convert.base64Decode(
    'Cg9TZWFyY2hQb3N0c0NhbGwSFAoFcXVlcnkYASABKAlSBXF1ZXJ5EhYKBmN1cnNvchgCIAEoCV'
    'IGY3Vyc29yEhQKBWxpbWl0GAMgASgNUgVsaW1pdA==');

@$core.Deprecated('Use sendDmCallDescriptor instead')
const SendDmCall$json = {
  '1': 'SendDmCall',
  '2': [
    {'1': 'to_handle', '3': 1, '4': 1, '5': 9, '10': 'toHandle'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `SendDmCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendDmCallDescriptor = $convert.base64Decode(
    'CgpTZW5kRG1DYWxsEhsKCXRvX2hhbmRsZRgBIAEoCVIIdG9IYW5kbGUSEgoEdGV4dBgCIAEoCV'
    'IEdGV4dA==');

@$core.Deprecated('Use getConversationsCallDescriptor instead')
const GetConversationsCall$json = {
  '1': 'GetConversationsCall',
  '2': [
    {'1': 'cursor', '3': 1, '4': 1, '5': 9, '10': 'cursor'},
    {'1': 'limit', '3': 2, '4': 1, '5': 13, '10': 'limit'},
  ],
};

/// Descriptor for `GetConversationsCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConversationsCallDescriptor = $convert.base64Decode(
    'ChRHZXRDb252ZXJzYXRpb25zQ2FsbBIWCgZjdXJzb3IYASABKAlSBmN1cnNvchIUCgVsaW1pdB'
    'gCIAEoDVIFbGltaXQ=');

@$core.Deprecated('Use getMessagesCallDescriptor instead')
const GetMessagesCall$json = {
  '1': 'GetMessagesCall',
  '2': [
    {'1': 'peer_handle', '3': 1, '4': 1, '5': 9, '10': 'peerHandle'},
    {'1': 'cursor', '3': 2, '4': 1, '5': 9, '10': 'cursor'},
    {'1': 'limit', '3': 3, '4': 1, '5': 13, '10': 'limit'},
    {'1': 'mark_read', '3': 4, '4': 1, '5': 8, '10': 'markRead'},
  ],
};

/// Descriptor for `GetMessagesCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMessagesCallDescriptor = $convert.base64Decode(
    'Cg9HZXRNZXNzYWdlc0NhbGwSHwoLcGVlcl9oYW5kbGUYASABKAlSCnBlZXJIYW5kbGUSFgoGY3'
    'Vyc29yGAIgASgJUgZjdXJzb3ISFAoFbGltaXQYAyABKA1SBWxpbWl0EhsKCW1hcmtfcmVhZBgE'
    'IAEoCFIIbWFya1JlYWQ=');

@$core.Deprecated('Use moderateCallDescriptor instead')
const ModerateCall$json = {
  '1': 'ModerateCall',
  '2': [
    {'1': 'handle', '3': 1, '4': 1, '5': 9, '10': 'handle'},
    {
      '1': 'action',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.btdlib.proto.ModAction',
      '10': 'action'
    },
  ],
};

/// Descriptor for `ModerateCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moderateCallDescriptor = $convert.base64Decode(
    'CgxNb2RlcmF0ZUNhbGwSFgoGaGFuZGxlGAEgASgJUgZoYW5kbGUSLwoGYWN0aW9uGAIgASgOMh'
    'cuYnRkbGliLnByb3RvLk1vZEFjdGlvblIGYWN0aW9u');

@$core.Deprecated('Use getFollowsCallDescriptor instead')
const GetFollowsCall$json = {
  '1': 'GetFollowsCall',
  '2': [
    {'1': 'handle', '3': 1, '4': 1, '5': 9, '10': 'handle'},
    {
      '1': 'which',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.btdlib.proto.FollowsWhich',
      '10': 'which'
    },
    {'1': 'cursor', '3': 3, '4': 1, '5': 9, '10': 'cursor'},
    {'1': 'limit', '3': 4, '4': 1, '5': 13, '10': 'limit'},
  ],
};

/// Descriptor for `GetFollowsCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFollowsCallDescriptor = $convert.base64Decode(
    'Cg5HZXRGb2xsb3dzQ2FsbBIWCgZoYW5kbGUYASABKAlSBmhhbmRsZRIwCgV3aGljaBgCIAEoDj'
    'IaLmJ0ZGxpYi5wcm90by5Gb2xsb3dzV2hpY2hSBXdoaWNoEhYKBmN1cnNvchgDIAEoCVIGY3Vy'
    'c29yEhQKBWxpbWl0GAQgASgNUgVsaW1pdA==');

@$core.Deprecated('Use editPostCallDescriptor instead')
const EditPostCall$json = {
  '1': 'EditPostCall',
  '2': [
    {'1': 'post_id', '3': 1, '4': 1, '5': 9, '10': 'postId'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `EditPostCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editPostCallDescriptor = $convert.base64Decode(
    'CgxFZGl0UG9zdENhbGwSFwoHcG9zdF9pZBgBIAEoCVIGcG9zdElkEhIKBHRleHQYAiABKAlSBH'
    'RleHQ=');

@$core.Deprecated('Use deletePostCallDescriptor instead')
const DeletePostCall$json = {
  '1': 'DeletePostCall',
  '2': [
    {'1': 'post_id', '3': 1, '4': 1, '5': 9, '10': 'postId'},
  ],
};

/// Descriptor for `DeletePostCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePostCallDescriptor = $convert
    .base64Decode('Cg5EZWxldGVQb3N0Q2FsbBIXCgdwb3N0X2lkGAEgASgJUgZwb3N0SWQ=');

@$core.Deprecated('Use bookmarkCallDescriptor instead')
const BookmarkCall$json = {
  '1': 'BookmarkCall',
  '2': [
    {'1': 'post_id', '3': 1, '4': 1, '5': 9, '10': 'postId'},
    {'1': 'undo', '3': 2, '4': 1, '5': 8, '10': 'undo'},
  ],
};

/// Descriptor for `BookmarkCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bookmarkCallDescriptor = $convert.base64Decode(
    'CgxCb29rbWFya0NhbGwSFwoHcG9zdF9pZBgBIAEoCVIGcG9zdElkEhIKBHVuZG8YAiABKAhSBH'
    'VuZG8=');

@$core.Deprecated('Use getTrendsCallDescriptor instead')
const GetTrendsCall$json = {
  '1': 'GetTrendsCall',
  '2': [
    {'1': 'limit', '3': 1, '4': 1, '5': 13, '10': 'limit'},
  ],
};

/// Descriptor for `GetTrendsCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTrendsCallDescriptor = $convert
    .base64Decode('Cg1HZXRUcmVuZHNDYWxsEhQKBWxpbWl0GAEgASgNUgVsaW1pdA==');

@$core.Deprecated('Use uploadMediaCallDescriptor instead')
const UploadMediaCall$json = {
  '1': 'UploadMediaCall',
  '2': [
    {'1': 'file_name', '3': 1, '4': 1, '5': 9, '10': 'fileName'},
    {'1': 'mime', '3': 2, '4': 1, '5': 9, '10': 'mime'},
    {'1': 'size_bytes', '3': 3, '4': 1, '5': 4, '10': 'sizeBytes'},
  ],
};

/// Descriptor for `UploadMediaCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadMediaCallDescriptor = $convert.base64Decode(
    'Cg9VcGxvYWRNZWRpYUNhbGwSGwoJZmlsZV9uYW1lGAEgASgJUghmaWxlTmFtZRISCgRtaW1lGA'
    'IgASgJUgRtaW1lEh0KCnNpemVfYnl0ZXMYAyABKARSCXNpemVCeXRlcw==');

@$core.Deprecated('Use registerCallDescriptor instead')
const RegisterCall$json = {
  '1': 'RegisterCall',
  '2': [
    {'1': 'handle', '3': 1, '4': 1, '5': 9, '10': 'handle'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'display_name', '3': 3, '4': 1, '5': 9, '10': 'displayName'},
  ],
};

/// Descriptor for `RegisterCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerCallDescriptor = $convert.base64Decode(
    'CgxSZWdpc3RlckNhbGwSFgoGaGFuZGxlGAEgASgJUgZoYW5kbGUSGgoIcGFzc3dvcmQYAiABKA'
    'lSCHBhc3N3b3JkEiEKDGRpc3BsYXlfbmFtZRgDIAEoCVILZGlzcGxheU5hbWU=');

@$core.Deprecated('Use createPostCallDescriptor instead')
const CreatePostCall$json = {
  '1': 'CreatePostCall',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    {'1': 'reply_to_post_id', '3': 2, '4': 1, '5': 9, '10': 'replyToPostId'},
    {'1': 'media_ids', '3': 3, '4': 3, '5': 9, '10': 'mediaIds'},
    {'1': 'quoted_post_id', '3': 4, '4': 1, '5': 9, '10': 'quotedPostId'},
    {'1': 'poll_options', '3': 5, '4': 3, '5': 9, '10': 'pollOptions'},
    {
      '1': 'poll_duration_hours',
      '3': 6,
      '4': 1,
      '5': 13,
      '10': 'pollDurationHours'
    },
  ],
};

/// Descriptor for `CreatePostCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPostCallDescriptor = $convert.base64Decode(
    'Cg5DcmVhdGVQb3N0Q2FsbBISCgR0ZXh0GAEgASgJUgR0ZXh0EicKEHJlcGx5X3RvX3Bvc3RfaW'
    'QYAiABKAlSDXJlcGx5VG9Qb3N0SWQSGwoJbWVkaWFfaWRzGAMgAygJUghtZWRpYUlkcxIkCg5x'
    'dW90ZWRfcG9zdF9pZBgEIAEoCVIMcXVvdGVkUG9zdElkEiEKDHBvbGxfb3B0aW9ucxgFIAMoCV'
    'ILcG9sbE9wdGlvbnMSLgoTcG9sbF9kdXJhdGlvbl9ob3VycxgGIAEoDVIRcG9sbER1cmF0aW9u'
    'SG91cnM=');

@$core.Deprecated('Use getFeedCallDescriptor instead')
const GetFeedCall$json = {
  '1': 'GetFeedCall',
  '2': [
    {
      '1': 'kind',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.btdlib.proto.FeedKind',
      '10': 'kind'
    },
    {'1': 'actor_handle', '3': 2, '4': 1, '5': 9, '10': 'actorHandle'},
    {'1': 'cursor', '3': 3, '4': 1, '5': 9, '10': 'cursor'},
    {'1': 'limit', '3': 4, '4': 1, '5': 13, '10': 'limit'},
    {'1': 'hashtag', '3': 5, '4': 1, '5': 9, '10': 'hashtag'},
  ],
};

/// Descriptor for `GetFeedCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFeedCallDescriptor = $convert.base64Decode(
    'CgtHZXRGZWVkQ2FsbBIqCgRraW5kGAEgASgOMhYuYnRkbGliLnByb3RvLkZlZWRLaW5kUgRraW'
    '5kEiEKDGFjdG9yX2hhbmRsZRgCIAEoCVILYWN0b3JIYW5kbGUSFgoGY3Vyc29yGAMgASgJUgZj'
    'dXJzb3ISFAoFbGltaXQYBCABKA1SBWxpbWl0EhgKB2hhc2h0YWcYBSABKAlSB2hhc2h0YWc=');

@$core.Deprecated('Use likeCallDescriptor instead')
const LikeCall$json = {
  '1': 'LikeCall',
  '2': [
    {'1': 'post_id', '3': 1, '4': 1, '5': 9, '10': 'postId'},
    {'1': 'undo', '3': 2, '4': 1, '5': 8, '10': 'undo'},
  ],
};

/// Descriptor for `LikeCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List likeCallDescriptor = $convert.base64Decode(
    'CghMaWtlQ2FsbBIXCgdwb3N0X2lkGAEgASgJUgZwb3N0SWQSEgoEdW5kbxgCIAEoCFIEdW5kbw'
    '==');

@$core.Deprecated('Use repostCallDescriptor instead')
const RepostCall$json = {
  '1': 'RepostCall',
  '2': [
    {'1': 'post_id', '3': 1, '4': 1, '5': 9, '10': 'postId'},
    {'1': 'undo', '3': 2, '4': 1, '5': 8, '10': 'undo'},
  ],
};

/// Descriptor for `RepostCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repostCallDescriptor = $convert.base64Decode(
    'CgpSZXBvc3RDYWxsEhcKB3Bvc3RfaWQYASABKAlSBnBvc3RJZBISCgR1bmRvGAIgASgIUgR1bm'
    'Rv');

@$core.Deprecated('Use followCallDescriptor instead')
const FollowCall$json = {
  '1': 'FollowCall',
  '2': [
    {'1': 'handle', '3': 1, '4': 1, '5': 9, '10': 'handle'},
    {'1': 'undo', '3': 2, '4': 1, '5': 8, '10': 'undo'},
  ],
};

/// Descriptor for `FollowCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followCallDescriptor = $convert.base64Decode(
    'CgpGb2xsb3dDYWxsEhYKBmhhbmRsZRgBIAEoCVIGaGFuZGxlEhIKBHVuZG8YAiABKAhSBHVuZG'
    '8=');

@$core.Deprecated('Use getActorCallDescriptor instead')
const GetActorCall$json = {
  '1': 'GetActorCall',
  '2': [
    {'1': 'handle', '3': 1, '4': 1, '5': 9, '10': 'handle'},
  ],
};

/// Descriptor for `GetActorCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getActorCallDescriptor = $convert
    .base64Decode('CgxHZXRBY3RvckNhbGwSFgoGaGFuZGxlGAEgASgJUgZoYW5kbGU=');

@$core.Deprecated('Use getThreadCallDescriptor instead')
const GetThreadCall$json = {
  '1': 'GetThreadCall',
  '2': [
    {'1': 'post_id', '3': 1, '4': 1, '5': 9, '10': 'postId'},
  ],
};

/// Descriptor for `GetThreadCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getThreadCallDescriptor = $convert
    .base64Decode('Cg1HZXRUaHJlYWRDYWxsEhcKB3Bvc3RfaWQYASABKAlSBnBvc3RJZA==');

@$core.Deprecated('Use searchActorsCallDescriptor instead')
const SearchActorsCall$json = {
  '1': 'SearchActorsCall',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    {'1': 'limit', '3': 2, '4': 1, '5': 13, '10': 'limit'},
  ],
};

/// Descriptor for `SearchActorsCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchActorsCallDescriptor = $convert.base64Decode(
    'ChBTZWFyY2hBY3RvcnNDYWxsEhQKBXF1ZXJ5GAEgASgJUgVxdWVyeRIUCgVsaW1pdBgCIAEoDV'
    'IFbGltaXQ=');

@$core.Deprecated('Use getNotificationsCallDescriptor instead')
const GetNotificationsCall$json = {
  '1': 'GetNotificationsCall',
  '2': [
    {'1': 'cursor', '3': 1, '4': 1, '5': 9, '10': 'cursor'},
    {'1': 'limit', '3': 2, '4': 1, '5': 13, '10': 'limit'},
    {'1': 'mark_read', '3': 3, '4': 1, '5': 8, '10': 'markRead'},
  ],
};

/// Descriptor for `GetNotificationsCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNotificationsCallDescriptor = $convert.base64Decode(
    'ChRHZXROb3RpZmljYXRpb25zQ2FsbBIWCgZjdXJzb3IYASABKAlSBmN1cnNvchIUCgVsaW1pdB'
    'gCIAEoDVIFbGltaXQSGwoJbWFya19yZWFkGAMgASgIUghtYXJrUmVhZA==');

@$core.Deprecated('Use updateProfileCallDescriptor instead')
const UpdateProfileCall$json = {
  '1': 'UpdateProfileCall',
  '2': [
    {'1': 'display_name', '3': 1, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'bio', '3': 2, '4': 1, '5': 9, '10': 'bio'},
    {'1': 'avatar_media_id', '3': 3, '4': 1, '5': 9, '10': 'avatarMediaId'},
    {'1': 'banner_media_id', '3': 4, '4': 1, '5': 9, '10': 'bannerMediaId'},
  ],
};

/// Descriptor for `UpdateProfileCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateProfileCallDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVQcm9maWxlQ2FsbBIhCgxkaXNwbGF5X25hbWUYASABKAlSC2Rpc3BsYXlOYW1lEh'
    'AKA2JpbxgCIAEoCVIDYmlvEiYKD2F2YXRhcl9tZWRpYV9pZBgDIAEoCVINYXZhdGFyTWVkaWFJ'
    'ZBImCg9iYW5uZXJfbWVkaWFfaWQYBCABKAlSDWJhbm5lck1lZGlhSWQ=');

@$core.Deprecated('Use pingCallDescriptor instead')
const PingCall$json = {
  '1': 'PingCall',
  '2': [
    {'1': 'echo_data', '3': 1, '4': 1, '5': 12, '10': 'echoData'},
  ],
};

/// Descriptor for `PingCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingCallDescriptor = $convert
    .base64Decode('CghQaW5nQ2FsbBIbCgllY2hvX2RhdGEYASABKAxSCGVjaG9EYXRh');

@$core.Deprecated('Use authCallDescriptor instead')
const AuthCall$json = {
  '1': 'AuthCall',
  '2': [
    {'1': 'identity', '3': 1, '4': 1, '5': 9, '10': 'identity'},
    {'1': 'credential', '3': 2, '4': 1, '5': 12, '10': 'credential'},
    {'1': 'totp_code', '3': 3, '4': 1, '5': 9, '10': 'totpCode'},
  ],
};

/// Descriptor for `AuthCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authCallDescriptor = $convert.base64Decode(
    'CghBdXRoQ2FsbBIaCghpZGVudGl0eRgBIAEoCVIIaWRlbnRpdHkSHgoKY3JlZGVudGlhbBgCIA'
    'EoDFIKY3JlZGVudGlhbBIbCgl0b3RwX2NvZGUYAyABKAlSCHRvdHBDb2Rl');

@$core.Deprecated('Use getBalanceCallDescriptor instead')
const GetBalanceCall$json = {
  '1': 'GetBalanceCall',
  '2': [
    {'1': 'currency', '3': 1, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'force_refresh', '3': 2, '4': 1, '5': 8, '10': 'forceRefresh'},
  ],
};

/// Descriptor for `GetBalanceCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBalanceCallDescriptor = $convert.base64Decode(
    'Cg5HZXRCYWxhbmNlQ2FsbBIaCghjdXJyZW5jeRgBIAEoCVIIY3VycmVuY3kSIwoNZm9yY2Vfcm'
    'VmcmVzaBgCIAEoCFIMZm9yY2VSZWZyZXNo');

@$core.Deprecated('Use transferCallDescriptor instead')
const TransferCall$json = {
  '1': 'TransferCall',
  '2': [
    {'1': 'recipient_id', '3': 1, '4': 1, '5': 9, '10': 'recipientId'},
    {'1': 'currency', '3': 2, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'amount_minor', '3': 3, '4': 1, '5': 3, '10': 'amountMinor'},
    {'1': 'reference', '3': 4, '4': 1, '5': 9, '10': 'reference'},
  ],
};

/// Descriptor for `TransferCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferCallDescriptor = $convert.base64Decode(
    'CgxUcmFuc2ZlckNhbGwSIQoMcmVjaXBpZW50X2lkGAEgASgJUgtyZWNpcGllbnRJZBIaCghjdX'
    'JyZW5jeRgCIAEoCVIIY3VycmVuY3kSIQoMYW1vdW50X21pbm9yGAMgASgDUgthbW91bnRNaW5v'
    'chIcCglyZWZlcmVuY2UYBCABKAlSCXJlZmVyZW5jZQ==');

@$core.Deprecated('Use getHistoryCallDescriptor instead')
const GetHistoryCall$json = {
  '1': 'GetHistoryCall',
  '2': [
    {'1': 'currency', '3': 1, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'from_epoch', '3': 2, '4': 1, '5': 4, '10': 'fromEpoch'},
    {'1': 'to_epoch', '3': 3, '4': 1, '5': 4, '10': 'toEpoch'},
    {'1': 'page_size', '3': 4, '4': 1, '5': 13, '10': 'pageSize'},
    {'1': 'page_token', '3': 5, '4': 1, '5': 9, '10': 'pageToken'},
    {'1': 'force_refresh', '3': 6, '4': 1, '5': 8, '10': 'forceRefresh'},
  ],
};

/// Descriptor for `GetHistoryCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getHistoryCallDescriptor = $convert.base64Decode(
    'Cg5HZXRIaXN0b3J5Q2FsbBIaCghjdXJyZW5jeRgBIAEoCVIIY3VycmVuY3kSHQoKZnJvbV9lcG'
    '9jaBgCIAEoBFIJZnJvbUVwb2NoEhkKCHRvX2Vwb2NoGAMgASgEUgd0b0Vwb2NoEhsKCXBhZ2Vf'
    'c2l6ZRgEIAEoDVIIcGFnZVNpemUSHQoKcGFnZV90b2tlbhgFIAEoCVIJcGFnZVRva2VuEiMKDW'
    'ZvcmNlX3JlZnJlc2gYBiABKAhSDGZvcmNlUmVmcmVzaA==');

@$core.Deprecated('Use getProfileCallDescriptor instead')
const GetProfileCall$json = {
  '1': 'GetProfileCall',
};

/// Descriptor for `GetProfileCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProfileCallDescriptor =
    $convert.base64Decode('Cg5HZXRQcm9maWxlQ2FsbA==');

@$core.Deprecated('Use closeSessionCallDescriptor instead')
const CloseSessionCall$json = {
  '1': 'CloseSessionCall',
};

/// Descriptor for `CloseSessionCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeSessionCallDescriptor =
    $convert.base64Decode('ChBDbG9zZVNlc3Npb25DYWxs');

@$core.Deprecated('Use clientResponseDescriptor instead')
const ClientResponse$json = {
  '1': 'ClientResponse',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 4, '10': 'requestId'},
    {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
    {'1': 'error_message', '3': 3, '4': 1, '5': 9, '10': 'errorMessage'},
    {
      '1': 'ping',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PingResult',
      '9': 0,
      '10': 'ping'
    },
    {
      '1': 'auth',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.AuthResult',
      '9': 0,
      '10': 'auth'
    },
    {
      '1': 'get_balance',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetBalanceResult',
      '9': 0,
      '10': 'getBalance'
    },
    {
      '1': 'transfer',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.TransferResult',
      '9': 0,
      '10': 'transfer'
    },
    {
      '1': 'get_history',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetHistoryResult',
      '9': 0,
      '10': 'getHistory'
    },
    {
      '1': 'get_profile',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetProfileResult',
      '9': 0,
      '10': 'getProfile'
    },
    {
      '1': 'register',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.RegisterResult',
      '9': 0,
      '10': 'register'
    },
    {
      '1': 'create_post',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.CreatePostResult',
      '9': 0,
      '10': 'createPost'
    },
    {
      '1': 'get_feed',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetFeedResult',
      '9': 0,
      '10': 'getFeed'
    },
    {
      '1': 'like',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.LikeResult',
      '9': 0,
      '10': 'like'
    },
    {
      '1': 'repost',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.RepostResult',
      '9': 0,
      '10': 'repost'
    },
    {
      '1': 'follow',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.FollowResult',
      '9': 0,
      '10': 'follow'
    },
    {
      '1': 'get_actor',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetActorResult',
      '9': 0,
      '10': 'getActor'
    },
    {
      '1': 'get_thread',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetThreadResult',
      '9': 0,
      '10': 'getThread'
    },
    {
      '1': 'search_actors',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.SearchActorsResult',
      '9': 0,
      '10': 'searchActors'
    },
    {
      '1': 'get_notifications',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetNotificationsResult',
      '9': 0,
      '10': 'getNotifications'
    },
    {
      '1': 'update_profile',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UpdateProfileResult',
      '9': 0,
      '10': 'updateProfile'
    },
    {
      '1': 'upload_media',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UploadMediaResult',
      '9': 0,
      '10': 'uploadMedia'
    },
    {
      '1': 'get_trends',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetTrendsResult',
      '9': 0,
      '10': 'getTrends'
    },
    {
      '1': 'get_follows',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetFollowsResult',
      '9': 0,
      '10': 'getFollows'
    },
    {
      '1': 'edit_post',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.EditPostResult',
      '9': 0,
      '10': 'editPost'
    },
    {
      '1': 'delete_post',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.DeletePostResult',
      '9': 0,
      '10': 'deletePost'
    },
    {
      '1': 'bookmark',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.BookmarkResult',
      '9': 0,
      '10': 'bookmark'
    },
    {
      '1': 'pin_post',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PinPostResult',
      '9': 0,
      '10': 'pinPost'
    },
    {
      '1': 'vote_poll',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.VotePollResult',
      '9': 0,
      '10': 'votePoll'
    },
    {
      '1': 'search_posts',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.SearchPostsResult',
      '9': 0,
      '10': 'searchPosts'
    },
    {
      '1': 'send_dm',
      '3': 30,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.SendDmResult',
      '9': 0,
      '10': 'sendDm'
    },
    {
      '1': 'get_conversations',
      '3': 31,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetConversationsResult',
      '9': 0,
      '10': 'getConversations'
    },
    {
      '1': 'get_messages',
      '3': 32,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetMessagesResult',
      '9': 0,
      '10': 'getMessages'
    },
    {
      '1': 'moderate',
      '3': 33,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.ModerateResult',
      '9': 0,
      '10': 'moderate'
    },
    {
      '1': 'security_status',
      '3': 34,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.SecurityStatusResult',
      '9': 0,
      '10': 'securityStatus'
    },
    {
      '1': 'passkey_register',
      '3': 35,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PasskeyRegisterResult',
      '9': 0,
      '10': 'passkeyRegister'
    },
    {
      '1': 'passkey_list',
      '3': 36,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PasskeyListResult',
      '9': 0,
      '10': 'passkeyList'
    },
    {
      '1': 'passkey_delete',
      '3': 37,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PasskeyDeleteResult',
      '9': 0,
      '10': 'passkeyDelete'
    },
    {
      '1': 'passkey_login_begin',
      '3': 38,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PasskeyLoginBeginResult',
      '9': 0,
      '10': 'passkeyLoginBegin'
    },
    {
      '1': 'totp_enroll_begin',
      '3': 39,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.TotpEnrollBeginResult',
      '9': 0,
      '10': 'totpEnrollBegin'
    },
    {
      '1': 'totp_enroll_finish',
      '3': 40,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.TotpEnrollFinishResult',
      '9': 0,
      '10': 'totpEnrollFinish'
    },
    {
      '1': 'totp_disable',
      '3': 41,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.TotpDisableResult',
      '9': 0,
      '10': 'totpDisable'
    },
    {
      '1': 'passkey_reg_begin',
      '3': 42,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PasskeyRegBeginResult',
      '9': 0,
      '10': 'passkeyRegBegin'
    },
    {
      '1': 'passkey_reg_finish',
      '3': 43,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PasskeyRegFinishResult',
      '9': 0,
      '10': 'passkeyRegFinish'
    },
    {
      '1': 'passkey_auth_begin',
      '3': 44,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PasskeyAuthBeginResult',
      '9': 0,
      '10': 'passkeyAuthBegin'
    },
    {
      '1': 'get_moderation_list',
      '3': 45,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.GetModerationListResult',
      '9': 0,
      '10': 'getModerationList'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `ClientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientResponseDescriptor = $convert.base64Decode(
    'Cg5DbGllbnRSZXNwb25zZRIdCgpyZXF1ZXN0X2lkGAEgASgEUglyZXF1ZXN0SWQSGAoHc3VjY2'
    'VzcxgCIAEoCFIHc3VjY2VzcxIjCg1lcnJvcl9tZXNzYWdlGAMgASgJUgxlcnJvck1lc3NhZ2US'
    'LgoEcGluZxgEIAEoCzIYLmJ0ZGxpYi5wcm90by5QaW5nUmVzdWx0SABSBHBpbmcSLgoEYXV0aB'
    'gFIAEoCzIYLmJ0ZGxpYi5wcm90by5BdXRoUmVzdWx0SABSBGF1dGgSQQoLZ2V0X2JhbGFuY2UY'
    'BiABKAsyHi5idGRsaWIucHJvdG8uR2V0QmFsYW5jZVJlc3VsdEgAUgpnZXRCYWxhbmNlEjoKCH'
    'RyYW5zZmVyGAcgASgLMhwuYnRkbGliLnByb3RvLlRyYW5zZmVyUmVzdWx0SABSCHRyYW5zZmVy'
    'EkEKC2dldF9oaXN0b3J5GAggASgLMh4uYnRkbGliLnByb3RvLkdldEhpc3RvcnlSZXN1bHRIAF'
    'IKZ2V0SGlzdG9yeRJBCgtnZXRfcHJvZmlsZRgJIAEoCzIeLmJ0ZGxpYi5wcm90by5HZXRQcm9m'
    'aWxlUmVzdWx0SABSCmdldFByb2ZpbGUSOgoIcmVnaXN0ZXIYCiABKAsyHC5idGRsaWIucHJvdG'
    '8uUmVnaXN0ZXJSZXN1bHRIAFIIcmVnaXN0ZXISQQoLY3JlYXRlX3Bvc3QYCyABKAsyHi5idGRs'
    'aWIucHJvdG8uQ3JlYXRlUG9zdFJlc3VsdEgAUgpjcmVhdGVQb3N0EjgKCGdldF9mZWVkGAwgAS'
    'gLMhsuYnRkbGliLnByb3RvLkdldEZlZWRSZXN1bHRIAFIHZ2V0RmVlZBIuCgRsaWtlGA0gASgL'
    'MhguYnRkbGliLnByb3RvLkxpa2VSZXN1bHRIAFIEbGlrZRI0CgZyZXBvc3QYDiABKAsyGi5idG'
    'RsaWIucHJvdG8uUmVwb3N0UmVzdWx0SABSBnJlcG9zdBI0CgZmb2xsb3cYDyABKAsyGi5idGRs'
    'aWIucHJvdG8uRm9sbG93UmVzdWx0SABSBmZvbGxvdxI7CglnZXRfYWN0b3IYECABKAsyHC5idG'
    'RsaWIucHJvdG8uR2V0QWN0b3JSZXN1bHRIAFIIZ2V0QWN0b3ISPgoKZ2V0X3RocmVhZBgRIAEo'
    'CzIdLmJ0ZGxpYi5wcm90by5HZXRUaHJlYWRSZXN1bHRIAFIJZ2V0VGhyZWFkEkcKDXNlYXJjaF'
    '9hY3RvcnMYEiABKAsyIC5idGRsaWIucHJvdG8uU2VhcmNoQWN0b3JzUmVzdWx0SABSDHNlYXJj'
    'aEFjdG9ycxJTChFnZXRfbm90aWZpY2F0aW9ucxgTIAEoCzIkLmJ0ZGxpYi5wcm90by5HZXROb3'
    'RpZmljYXRpb25zUmVzdWx0SABSEGdldE5vdGlmaWNhdGlvbnMSSgoOdXBkYXRlX3Byb2ZpbGUY'
    'FCABKAsyIS5idGRsaWIucHJvdG8uVXBkYXRlUHJvZmlsZVJlc3VsdEgAUg11cGRhdGVQcm9maW'
    'xlEkQKDHVwbG9hZF9tZWRpYRgVIAEoCzIfLmJ0ZGxpYi5wcm90by5VcGxvYWRNZWRpYVJlc3Vs'
    'dEgAUgt1cGxvYWRNZWRpYRI+CgpnZXRfdHJlbmRzGBYgASgLMh0uYnRkbGliLnByb3RvLkdldF'
    'RyZW5kc1Jlc3VsdEgAUglnZXRUcmVuZHMSQQoLZ2V0X2ZvbGxvd3MYFyABKAsyHi5idGRsaWIu'
    'cHJvdG8uR2V0Rm9sbG93c1Jlc3VsdEgAUgpnZXRGb2xsb3dzEjsKCWVkaXRfcG9zdBgYIAEoCz'
    'IcLmJ0ZGxpYi5wcm90by5FZGl0UG9zdFJlc3VsdEgAUghlZGl0UG9zdBJBCgtkZWxldGVfcG9z'
    'dBgZIAEoCzIeLmJ0ZGxpYi5wcm90by5EZWxldGVQb3N0UmVzdWx0SABSCmRlbGV0ZVBvc3QSOg'
    'oIYm9va21hcmsYGiABKAsyHC5idGRsaWIucHJvdG8uQm9va21hcmtSZXN1bHRIAFIIYm9va21h'
    'cmsSOAoIcGluX3Bvc3QYGyABKAsyGy5idGRsaWIucHJvdG8uUGluUG9zdFJlc3VsdEgAUgdwaW'
    '5Qb3N0EjsKCXZvdGVfcG9sbBgcIAEoCzIcLmJ0ZGxpYi5wcm90by5Wb3RlUG9sbFJlc3VsdEgA'
    'Ugh2b3RlUG9sbBJECgxzZWFyY2hfcG9zdHMYHSABKAsyHy5idGRsaWIucHJvdG8uU2VhcmNoUG'
    '9zdHNSZXN1bHRIAFILc2VhcmNoUG9zdHMSNQoHc2VuZF9kbRgeIAEoCzIaLmJ0ZGxpYi5wcm90'
    'by5TZW5kRG1SZXN1bHRIAFIGc2VuZERtElMKEWdldF9jb252ZXJzYXRpb25zGB8gASgLMiQuYn'
    'RkbGliLnByb3RvLkdldENvbnZlcnNhdGlvbnNSZXN1bHRIAFIQZ2V0Q29udmVyc2F0aW9ucxJE'
    'CgxnZXRfbWVzc2FnZXMYICABKAsyHy5idGRsaWIucHJvdG8uR2V0TWVzc2FnZXNSZXN1bHRIAF'
    'ILZ2V0TWVzc2FnZXMSOgoIbW9kZXJhdGUYISABKAsyHC5idGRsaWIucHJvdG8uTW9kZXJhdGVS'
    'ZXN1bHRIAFIIbW9kZXJhdGUSTQoPc2VjdXJpdHlfc3RhdHVzGCIgASgLMiIuYnRkbGliLnByb3'
    'RvLlNlY3VyaXR5U3RhdHVzUmVzdWx0SABSDnNlY3VyaXR5U3RhdHVzElAKEHBhc3NrZXlfcmVn'
    'aXN0ZXIYIyABKAsyIy5idGRsaWIucHJvdG8uUGFzc2tleVJlZ2lzdGVyUmVzdWx0SABSD3Bhc3'
    'NrZXlSZWdpc3RlchJECgxwYXNza2V5X2xpc3QYJCABKAsyHy5idGRsaWIucHJvdG8uUGFzc2tl'
    'eUxpc3RSZXN1bHRIAFILcGFzc2tleUxpc3QSSgoOcGFzc2tleV9kZWxldGUYJSABKAsyIS5idG'
    'RsaWIucHJvdG8uUGFzc2tleURlbGV0ZVJlc3VsdEgAUg1wYXNza2V5RGVsZXRlElcKE3Bhc3Nr'
    'ZXlfbG9naW5fYmVnaW4YJiABKAsyJS5idGRsaWIucHJvdG8uUGFzc2tleUxvZ2luQmVnaW5SZX'
    'N1bHRIAFIRcGFzc2tleUxvZ2luQmVnaW4SUQoRdG90cF9lbnJvbGxfYmVnaW4YJyABKAsyIy5i'
    'dGRsaWIucHJvdG8uVG90cEVucm9sbEJlZ2luUmVzdWx0SABSD3RvdHBFbnJvbGxCZWdpbhJUCh'
    'J0b3RwX2Vucm9sbF9maW5pc2gYKCABKAsyJC5idGRsaWIucHJvdG8uVG90cEVucm9sbEZpbmlz'
    'aFJlc3VsdEgAUhB0b3RwRW5yb2xsRmluaXNoEkQKDHRvdHBfZGlzYWJsZRgpIAEoCzIfLmJ0ZG'
    'xpYi5wcm90by5Ub3RwRGlzYWJsZVJlc3VsdEgAUgt0b3RwRGlzYWJsZRJRChFwYXNza2V5X3Jl'
    'Z19iZWdpbhgqIAEoCzIjLmJ0ZGxpYi5wcm90by5QYXNza2V5UmVnQmVnaW5SZXN1bHRIAFIPcG'
    'Fzc2tleVJlZ0JlZ2luElQKEnBhc3NrZXlfcmVnX2ZpbmlzaBgrIAEoCzIkLmJ0ZGxpYi5wcm90'
    'by5QYXNza2V5UmVnRmluaXNoUmVzdWx0SABSEHBhc3NrZXlSZWdGaW5pc2gSVAoScGFzc2tleV'
    '9hdXRoX2JlZ2luGCwgASgLMiQuYnRkbGliLnByb3RvLlBhc3NrZXlBdXRoQmVnaW5SZXN1bHRI'
    'AFIQcGFzc2tleUF1dGhCZWdpbhJXChNnZXRfbW9kZXJhdGlvbl9saXN0GC0gASgLMiUuYnRkbG'
    'liLnByb3RvLkdldE1vZGVyYXRpb25MaXN0UmVzdWx0SABSEWdldE1vZGVyYXRpb25MaXN0QgkK'
    'B3BheWxvYWQ=');

@$core.Deprecated('Use getModerationListResultDescriptor instead')
const GetModerationListResult$json = {
  '1': 'GetModerationListResult',
  '2': [
    {
      '1': 'actors',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.btdlib.proto.Actor',
      '10': 'actors'
    },
  ],
};

/// Descriptor for `GetModerationListResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getModerationListResultDescriptor =
    $convert.base64Decode(
        'ChdHZXRNb2RlcmF0aW9uTGlzdFJlc3VsdBIrCgZhY3RvcnMYASADKAsyEy5idGRsaWIucHJvdG'
        '8uQWN0b3JSBmFjdG9ycw==');

@$core.Deprecated('Use passkeyRegBeginResultDescriptor instead')
const PasskeyRegBeginResult$json = {
  '1': 'PasskeyRegBeginResult',
  '2': [
    {'1': 'options_json', '3': 1, '4': 1, '5': 9, '10': 'optionsJson'},
  ],
};

/// Descriptor for `PasskeyRegBeginResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passkeyRegBeginResultDescriptor = $convert.base64Decode(
    'ChVQYXNza2V5UmVnQmVnaW5SZXN1bHQSIQoMb3B0aW9uc19qc29uGAEgASgJUgtvcHRpb25zSn'
    'Nvbg==');

@$core.Deprecated('Use passkeyRegFinishResultDescriptor instead')
const PasskeyRegFinishResult$json = {
  '1': 'PasskeyRegFinishResult',
  '2': [
    {
      '1': 'passkey',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Passkey',
      '10': 'passkey'
    },
  ],
};

/// Descriptor for `PasskeyRegFinishResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passkeyRegFinishResultDescriptor =
    $convert.base64Decode(
        'ChZQYXNza2V5UmVnRmluaXNoUmVzdWx0Ei8KB3Bhc3NrZXkYASABKAsyFS5idGRsaWIucHJvdG'
        '8uUGFzc2tleVIHcGFzc2tleQ==');

@$core.Deprecated('Use passkeyAuthBeginResultDescriptor instead')
const PasskeyAuthBeginResult$json = {
  '1': 'PasskeyAuthBeginResult',
  '2': [
    {'1': 'flow_id', '3': 1, '4': 1, '5': 9, '10': 'flowId'},
    {'1': 'options_json', '3': 2, '4': 1, '5': 9, '10': 'optionsJson'},
  ],
};

/// Descriptor for `PasskeyAuthBeginResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passkeyAuthBeginResultDescriptor =
    $convert.base64Decode(
        'ChZQYXNza2V5QXV0aEJlZ2luUmVzdWx0EhcKB2Zsb3dfaWQYASABKAlSBmZsb3dJZBIhCgxvcH'
        'Rpb25zX2pzb24YAiABKAlSC29wdGlvbnNKc29u');

@$core.Deprecated('Use securityStatusResultDescriptor instead')
const SecurityStatusResult$json = {
  '1': 'SecurityStatusResult',
  '2': [
    {'1': 'totp_enabled', '3': 1, '4': 1, '5': 8, '10': 'totpEnabled'},
    {'1': 'passkey_count', '3': 2, '4': 1, '5': 13, '10': 'passkeyCount'},
    {
      '1': 'passkeys',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.btdlib.proto.Passkey',
      '10': 'passkeys'
    },
    {
      '1': 'recovery_remaining',
      '3': 4,
      '4': 1,
      '5': 13,
      '10': 'recoveryRemaining'
    },
  ],
};

/// Descriptor for `SecurityStatusResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List securityStatusResultDescriptor = $convert.base64Decode(
    'ChRTZWN1cml0eVN0YXR1c1Jlc3VsdBIhCgx0b3RwX2VuYWJsZWQYASABKAhSC3RvdHBFbmFibG'
    'VkEiMKDXBhc3NrZXlfY291bnQYAiABKA1SDHBhc3NrZXlDb3VudBIxCghwYXNza2V5cxgDIAMo'
    'CzIVLmJ0ZGxpYi5wcm90by5QYXNza2V5UghwYXNza2V5cxItChJyZWNvdmVyeV9yZW1haW5pbm'
    'cYBCABKA1SEXJlY292ZXJ5UmVtYWluaW5n');

@$core.Deprecated('Use passkeyRegisterResultDescriptor instead')
const PasskeyRegisterResult$json = {
  '1': 'PasskeyRegisterResult',
  '2': [
    {
      '1': 'passkey',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Passkey',
      '10': 'passkey'
    },
  ],
};

/// Descriptor for `PasskeyRegisterResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passkeyRegisterResultDescriptor = $convert.base64Decode(
    'ChVQYXNza2V5UmVnaXN0ZXJSZXN1bHQSLwoHcGFzc2tleRgBIAEoCzIVLmJ0ZGxpYi5wcm90by'
    '5QYXNza2V5UgdwYXNza2V5');

@$core.Deprecated('Use passkeyListResultDescriptor instead')
const PasskeyListResult$json = {
  '1': 'PasskeyListResult',
  '2': [
    {
      '1': 'passkeys',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.btdlib.proto.Passkey',
      '10': 'passkeys'
    },
  ],
};

/// Descriptor for `PasskeyListResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passkeyListResultDescriptor = $convert.base64Decode(
    'ChFQYXNza2V5TGlzdFJlc3VsdBIxCghwYXNza2V5cxgBIAMoCzIVLmJ0ZGxpYi5wcm90by5QYX'
    'Nza2V5UghwYXNza2V5cw==');

@$core.Deprecated('Use passkeyDeleteResultDescriptor instead')
const PasskeyDeleteResult$json = {
  '1': 'PasskeyDeleteResult',
};

/// Descriptor for `PasskeyDeleteResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passkeyDeleteResultDescriptor =
    $convert.base64Decode('ChNQYXNza2V5RGVsZXRlUmVzdWx0');

@$core.Deprecated('Use passkeyLoginBeginResultDescriptor instead')
const PasskeyLoginBeginResult$json = {
  '1': 'PasskeyLoginBeginResult',
  '2': [
    {'1': 'challenge', '3': 1, '4': 1, '5': 12, '10': 'challenge'},
    {'1': 'credential_ids', '3': 2, '4': 3, '5': 9, '10': 'credentialIds'},
  ],
};

/// Descriptor for `PasskeyLoginBeginResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passkeyLoginBeginResultDescriptor =
    $convert.base64Decode(
        'ChdQYXNza2V5TG9naW5CZWdpblJlc3VsdBIcCgljaGFsbGVuZ2UYASABKAxSCWNoYWxsZW5nZR'
        'IlCg5jcmVkZW50aWFsX2lkcxgCIAMoCVINY3JlZGVudGlhbElkcw==');

@$core.Deprecated('Use totpEnrollBeginResultDescriptor instead')
const TotpEnrollBeginResult$json = {
  '1': 'TotpEnrollBeginResult',
  '2': [
    {'1': 'secret_base32', '3': 1, '4': 1, '5': 9, '10': 'secretBase32'},
    {'1': 'otpauth_uri', '3': 2, '4': 1, '5': 9, '10': 'otpauthUri'},
  ],
};

/// Descriptor for `TotpEnrollBeginResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List totpEnrollBeginResultDescriptor = $convert.base64Decode(
    'ChVUb3RwRW5yb2xsQmVnaW5SZXN1bHQSIwoNc2VjcmV0X2Jhc2UzMhgBIAEoCVIMc2VjcmV0Qm'
    'FzZTMyEh8KC290cGF1dGhfdXJpGAIgASgJUgpvdHBhdXRoVXJp');

@$core.Deprecated('Use totpEnrollFinishResultDescriptor instead')
const TotpEnrollFinishResult$json = {
  '1': 'TotpEnrollFinishResult',
  '2': [
    {'1': 'recovery_codes', '3': 1, '4': 3, '5': 9, '10': 'recoveryCodes'},
  ],
};

/// Descriptor for `TotpEnrollFinishResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List totpEnrollFinishResultDescriptor =
    $convert.base64Decode(
        'ChZUb3RwRW5yb2xsRmluaXNoUmVzdWx0EiUKDnJlY292ZXJ5X2NvZGVzGAEgAygJUg1yZWNvdm'
        'VyeUNvZGVz');

@$core.Deprecated('Use totpDisableResultDescriptor instead')
const TotpDisableResult$json = {
  '1': 'TotpDisableResult',
};

/// Descriptor for `TotpDisableResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List totpDisableResultDescriptor =
    $convert.base64Decode('ChFUb3RwRGlzYWJsZVJlc3VsdA==');

@$core.Deprecated('Use pinPostResultDescriptor instead')
const PinPostResult$json = {
  '1': 'PinPostResult',
  '2': [
    {'1': 'pinned_post_id', '3': 1, '4': 1, '5': 9, '10': 'pinnedPostId'},
  ],
};

/// Descriptor for `PinPostResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pinPostResultDescriptor = $convert.base64Decode(
    'Cg1QaW5Qb3N0UmVzdWx0EiQKDnBpbm5lZF9wb3N0X2lkGAEgASgJUgxwaW5uZWRQb3N0SWQ=');

@$core.Deprecated('Use votePollResultDescriptor instead')
const VotePollResult$json = {
  '1': 'VotePollResult',
  '2': [
    {'1': 'post_id', '3': 1, '4': 1, '5': 9, '10': 'postId'},
    {
      '1': 'poll',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Poll',
      '10': 'poll'
    },
  ],
};

/// Descriptor for `VotePollResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List votePollResultDescriptor = $convert.base64Decode(
    'Cg5Wb3RlUG9sbFJlc3VsdBIXCgdwb3N0X2lkGAEgASgJUgZwb3N0SWQSJgoEcG9sbBgCIAEoCz'
    'ISLmJ0ZGxpYi5wcm90by5Qb2xsUgRwb2xs');

@$core.Deprecated('Use searchPostsResultDescriptor instead')
const SearchPostsResult$json = {
  '1': 'SearchPostsResult',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.btdlib.proto.FeedItem',
      '10': 'items'
    },
    {'1': 'next_cursor', '3': 2, '4': 1, '5': 9, '10': 'nextCursor'},
  ],
};

/// Descriptor for `SearchPostsResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchPostsResultDescriptor = $convert.base64Decode(
    'ChFTZWFyY2hQb3N0c1Jlc3VsdBIsCgVpdGVtcxgBIAMoCzIWLmJ0ZGxpYi5wcm90by5GZWVkSX'
    'RlbVIFaXRlbXMSHwoLbmV4dF9jdXJzb3IYAiABKAlSCm5leHRDdXJzb3I=');

@$core.Deprecated('Use sendDmResultDescriptor instead')
const SendDmResult$json = {
  '1': 'SendDmResult',
  '2': [
    {
      '1': 'message',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.DmMessage',
      '10': 'message'
    },
  ],
};

/// Descriptor for `SendDmResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendDmResultDescriptor = $convert.base64Decode(
    'CgxTZW5kRG1SZXN1bHQSMQoHbWVzc2FnZRgBIAEoCzIXLmJ0ZGxpYi5wcm90by5EbU1lc3NhZ2'
    'VSB21lc3NhZ2U=');

@$core.Deprecated('Use getConversationsResultDescriptor instead')
const GetConversationsResult$json = {
  '1': 'GetConversationsResult',
  '2': [
    {
      '1': 'conversations',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.btdlib.proto.Conversation',
      '10': 'conversations'
    },
    {'1': 'next_cursor', '3': 2, '4': 1, '5': 9, '10': 'nextCursor'},
    {'1': 'total_unread', '3': 3, '4': 1, '5': 13, '10': 'totalUnread'},
  ],
};

/// Descriptor for `GetConversationsResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConversationsResultDescriptor = $convert.base64Decode(
    'ChZHZXRDb252ZXJzYXRpb25zUmVzdWx0EkAKDWNvbnZlcnNhdGlvbnMYASADKAsyGi5idGRsaW'
    'IucHJvdG8uQ29udmVyc2F0aW9uUg1jb252ZXJzYXRpb25zEh8KC25leHRfY3Vyc29yGAIgASgJ'
    'UgpuZXh0Q3Vyc29yEiEKDHRvdGFsX3VucmVhZBgDIAEoDVILdG90YWxVbnJlYWQ=');

@$core.Deprecated('Use getMessagesResultDescriptor instead')
const GetMessagesResult$json = {
  '1': 'GetMessagesResult',
  '2': [
    {
      '1': 'peer',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Actor',
      '10': 'peer'
    },
    {
      '1': 'messages',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.btdlib.proto.DmMessage',
      '10': 'messages'
    },
    {'1': 'next_cursor', '3': 3, '4': 1, '5': 9, '10': 'nextCursor'},
  ],
};

/// Descriptor for `GetMessagesResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMessagesResultDescriptor = $convert.base64Decode(
    'ChFHZXRNZXNzYWdlc1Jlc3VsdBInCgRwZWVyGAEgASgLMhMuYnRkbGliLnByb3RvLkFjdG9yUg'
    'RwZWVyEjMKCG1lc3NhZ2VzGAIgAygLMhcuYnRkbGliLnByb3RvLkRtTWVzc2FnZVIIbWVzc2Fn'
    'ZXMSHwoLbmV4dF9jdXJzb3IYAyABKAlSCm5leHRDdXJzb3I=');

@$core.Deprecated('Use moderateResultDescriptor instead')
const ModerateResult$json = {
  '1': 'ModerateResult',
  '2': [
    {
      '1': 'actor',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Actor',
      '10': 'actor'
    },
  ],
};

/// Descriptor for `ModerateResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moderateResultDescriptor = $convert.base64Decode(
    'Cg5Nb2RlcmF0ZVJlc3VsdBIpCgVhY3RvchgBIAEoCzITLmJ0ZGxpYi5wcm90by5BY3RvclIFYW'
    'N0b3I=');

@$core.Deprecated('Use getFollowsResultDescriptor instead')
const GetFollowsResult$json = {
  '1': 'GetFollowsResult',
  '2': [
    {
      '1': 'actors',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.btdlib.proto.Actor',
      '10': 'actors'
    },
    {'1': 'next_cursor', '3': 2, '4': 1, '5': 9, '10': 'nextCursor'},
  ],
};

/// Descriptor for `GetFollowsResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFollowsResultDescriptor = $convert.base64Decode(
    'ChBHZXRGb2xsb3dzUmVzdWx0EisKBmFjdG9ycxgBIAMoCzITLmJ0ZGxpYi5wcm90by5BY3Rvcl'
    'IGYWN0b3JzEh8KC25leHRfY3Vyc29yGAIgASgJUgpuZXh0Q3Vyc29y');

@$core.Deprecated('Use editPostResultDescriptor instead')
const EditPostResult$json = {
  '1': 'EditPostResult',
  '2': [
    {
      '1': 'post',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Post',
      '10': 'post'
    },
  ],
};

/// Descriptor for `EditPostResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editPostResultDescriptor = $convert.base64Decode(
    'Cg5FZGl0UG9zdFJlc3VsdBImCgRwb3N0GAEgASgLMhIuYnRkbGliLnByb3RvLlBvc3RSBHBvc3'
    'Q=');

@$core.Deprecated('Use deletePostResultDescriptor instead')
const DeletePostResult$json = {
  '1': 'DeletePostResult',
  '2': [
    {'1': 'post_id', '3': 1, '4': 1, '5': 9, '10': 'postId'},
  ],
};

/// Descriptor for `DeletePostResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePostResultDescriptor = $convert.base64Decode(
    'ChBEZWxldGVQb3N0UmVzdWx0EhcKB3Bvc3RfaWQYASABKAlSBnBvc3RJZA==');

@$core.Deprecated('Use bookmarkResultDescriptor instead')
const BookmarkResult$json = {
  '1': 'BookmarkResult',
  '2': [
    {'1': 'post_id', '3': 1, '4': 1, '5': 9, '10': 'postId'},
    {
      '1': 'viewer_bookmarked',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'viewerBookmarked'
    },
  ],
};

/// Descriptor for `BookmarkResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bookmarkResultDescriptor = $convert.base64Decode(
    'Cg5Cb29rbWFya1Jlc3VsdBIXCgdwb3N0X2lkGAEgASgJUgZwb3N0SWQSKwoRdmlld2VyX2Jvb2'
    'ttYXJrZWQYAiABKAhSEHZpZXdlckJvb2ttYXJrZWQ=');

@$core.Deprecated('Use getTrendsResultDescriptor instead')
const GetTrendsResult$json = {
  '1': 'GetTrendsResult',
  '2': [
    {
      '1': 'trends',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.btdlib.proto.Trend',
      '10': 'trends'
    },
  ],
};

/// Descriptor for `GetTrendsResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTrendsResultDescriptor = $convert.base64Decode(
    'Cg9HZXRUcmVuZHNSZXN1bHQSKwoGdHJlbmRzGAEgAygLMhMuYnRkbGliLnByb3RvLlRyZW5kUg'
    'Z0cmVuZHM=');

@$core.Deprecated('Use uploadMediaResultDescriptor instead')
const UploadMediaResult$json = {
  '1': 'UploadMediaResult',
  '2': [
    {'1': 'media_id', '3': 1, '4': 1, '5': 9, '10': 'mediaId'},
    {'1': 'upload_url', '3': 2, '4': 1, '5': 9, '10': 'uploadUrl'},
    {'1': 'get_url', '3': 3, '4': 1, '5': 9, '10': 'getUrl'},
    {'1': 'kind', '3': 4, '4': 1, '5': 9, '10': 'kind'},
  ],
};

/// Descriptor for `UploadMediaResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadMediaResultDescriptor = $convert.base64Decode(
    'ChFVcGxvYWRNZWRpYVJlc3VsdBIZCghtZWRpYV9pZBgBIAEoCVIHbWVkaWFJZBIdCgp1cGxvYW'
    'RfdXJsGAIgASgJUgl1cGxvYWRVcmwSFwoHZ2V0X3VybBgDIAEoCVIGZ2V0VXJsEhIKBGtpbmQY'
    'BCABKAlSBGtpbmQ=');

@$core.Deprecated('Use registerResultDescriptor instead')
const RegisterResult$json = {
  '1': 'RegisterResult',
  '2': [
    {'1': 'registered', '3': 1, '4': 1, '5': 8, '10': 'registered'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `RegisterResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerResultDescriptor = $convert.base64Decode(
    'Cg5SZWdpc3RlclJlc3VsdBIeCgpyZWdpc3RlcmVkGAEgASgIUgpyZWdpc3RlcmVkEhcKB3VzZX'
    'JfaWQYAiABKAlSBnVzZXJJZA==');

@$core.Deprecated('Use createPostResultDescriptor instead')
const CreatePostResult$json = {
  '1': 'CreatePostResult',
  '2': [
    {
      '1': 'post',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Post',
      '10': 'post'
    },
  ],
};

/// Descriptor for `CreatePostResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPostResultDescriptor = $convert.base64Decode(
    'ChBDcmVhdGVQb3N0UmVzdWx0EiYKBHBvc3QYASABKAsyEi5idGRsaWIucHJvdG8uUG9zdFIEcG'
    '9zdA==');

@$core.Deprecated('Use getFeedResultDescriptor instead')
const GetFeedResult$json = {
  '1': 'GetFeedResult',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.btdlib.proto.FeedItem',
      '10': 'items'
    },
    {'1': 'next_cursor', '3': 2, '4': 1, '5': 9, '10': 'nextCursor'},
  ],
};

/// Descriptor for `GetFeedResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFeedResultDescriptor = $convert.base64Decode(
    'Cg1HZXRGZWVkUmVzdWx0EiwKBWl0ZW1zGAEgAygLMhYuYnRkbGliLnByb3RvLkZlZWRJdGVtUg'
    'VpdGVtcxIfCgtuZXh0X2N1cnNvchgCIAEoCVIKbmV4dEN1cnNvcg==');

@$core.Deprecated('Use likeResultDescriptor instead')
const LikeResult$json = {
  '1': 'LikeResult',
  '2': [
    {'1': 'post_id', '3': 1, '4': 1, '5': 9, '10': 'postId'},
    {'1': 'like_count', '3': 2, '4': 1, '5': 13, '10': 'likeCount'},
    {'1': 'viewer_liked', '3': 3, '4': 1, '5': 8, '10': 'viewerLiked'},
  ],
};

/// Descriptor for `LikeResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List likeResultDescriptor = $convert.base64Decode(
    'CgpMaWtlUmVzdWx0EhcKB3Bvc3RfaWQYASABKAlSBnBvc3RJZBIdCgpsaWtlX2NvdW50GAIgAS'
    'gNUglsaWtlQ291bnQSIQoMdmlld2VyX2xpa2VkGAMgASgIUgt2aWV3ZXJMaWtlZA==');

@$core.Deprecated('Use repostResultDescriptor instead')
const RepostResult$json = {
  '1': 'RepostResult',
  '2': [
    {'1': 'post_id', '3': 1, '4': 1, '5': 9, '10': 'postId'},
    {'1': 'repost_count', '3': 2, '4': 1, '5': 13, '10': 'repostCount'},
    {'1': 'viewer_reposted', '3': 3, '4': 1, '5': 8, '10': 'viewerReposted'},
  ],
};

/// Descriptor for `RepostResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repostResultDescriptor = $convert.base64Decode(
    'CgxSZXBvc3RSZXN1bHQSFwoHcG9zdF9pZBgBIAEoCVIGcG9zdElkEiEKDHJlcG9zdF9jb3VudB'
    'gCIAEoDVILcmVwb3N0Q291bnQSJwoPdmlld2VyX3JlcG9zdGVkGAMgASgIUg52aWV3ZXJSZXBv'
    'c3RlZA==');

@$core.Deprecated('Use followResultDescriptor instead')
const FollowResult$json = {
  '1': 'FollowResult',
  '2': [
    {
      '1': 'actor',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Actor',
      '10': 'actor'
    },
  ],
};

/// Descriptor for `FollowResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followResultDescriptor = $convert.base64Decode(
    'CgxGb2xsb3dSZXN1bHQSKQoFYWN0b3IYASABKAsyEy5idGRsaWIucHJvdG8uQWN0b3JSBWFjdG'
    '9y');

@$core.Deprecated('Use getActorResultDescriptor instead')
const GetActorResult$json = {
  '1': 'GetActorResult',
  '2': [
    {
      '1': 'actor',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Actor',
      '10': 'actor'
    },
  ],
};

/// Descriptor for `GetActorResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getActorResultDescriptor = $convert.base64Decode(
    'Cg5HZXRBY3RvclJlc3VsdBIpCgVhY3RvchgBIAEoCzITLmJ0ZGxpYi5wcm90by5BY3RvclIFYW'
    'N0b3I=');

@$core.Deprecated('Use getThreadResultDescriptor instead')
const GetThreadResult$json = {
  '1': 'GetThreadResult',
  '2': [
    {
      '1': 'ancestors',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.btdlib.proto.Post',
      '10': 'ancestors'
    },
    {
      '1': 'post',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Post',
      '10': 'post'
    },
    {
      '1': 'replies',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.btdlib.proto.Post',
      '10': 'replies'
    },
  ],
};

/// Descriptor for `GetThreadResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getThreadResultDescriptor = $convert.base64Decode(
    'Cg9HZXRUaHJlYWRSZXN1bHQSMAoJYW5jZXN0b3JzGAEgAygLMhIuYnRkbGliLnByb3RvLlBvc3'
    'RSCWFuY2VzdG9ycxImCgRwb3N0GAIgASgLMhIuYnRkbGliLnByb3RvLlBvc3RSBHBvc3QSLAoH'
    'cmVwbGllcxgDIAMoCzISLmJ0ZGxpYi5wcm90by5Qb3N0UgdyZXBsaWVz');

@$core.Deprecated('Use searchActorsResultDescriptor instead')
const SearchActorsResult$json = {
  '1': 'SearchActorsResult',
  '2': [
    {
      '1': 'actors',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.btdlib.proto.Actor',
      '10': 'actors'
    },
  ],
};

/// Descriptor for `SearchActorsResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchActorsResultDescriptor = $convert.base64Decode(
    'ChJTZWFyY2hBY3RvcnNSZXN1bHQSKwoGYWN0b3JzGAEgAygLMhMuYnRkbGliLnByb3RvLkFjdG'
    '9yUgZhY3RvcnM=');

@$core.Deprecated('Use getNotificationsResultDescriptor instead')
const GetNotificationsResult$json = {
  '1': 'GetNotificationsResult',
  '2': [
    {
      '1': 'notifications',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.btdlib.proto.Notification',
      '10': 'notifications'
    },
    {'1': 'next_cursor', '3': 2, '4': 1, '5': 9, '10': 'nextCursor'},
    {'1': 'unread_count', '3': 3, '4': 1, '5': 13, '10': 'unreadCount'},
  ],
};

/// Descriptor for `GetNotificationsResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNotificationsResultDescriptor = $convert.base64Decode(
    'ChZHZXROb3RpZmljYXRpb25zUmVzdWx0EkAKDW5vdGlmaWNhdGlvbnMYASADKAsyGi5idGRsaW'
    'IucHJvdG8uTm90aWZpY2F0aW9uUg1ub3RpZmljYXRpb25zEh8KC25leHRfY3Vyc29yGAIgASgJ'
    'UgpuZXh0Q3Vyc29yEiEKDHVucmVhZF9jb3VudBgDIAEoDVILdW5yZWFkQ291bnQ=');

@$core.Deprecated('Use updateProfileResultDescriptor instead')
const UpdateProfileResult$json = {
  '1': 'UpdateProfileResult',
  '2': [
    {
      '1': 'actor',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Actor',
      '10': 'actor'
    },
  ],
};

/// Descriptor for `UpdateProfileResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateProfileResultDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVQcm9maWxlUmVzdWx0EikKBWFjdG9yGAEgASgLMhMuYnRkbGliLnByb3RvLkFjdG'
    '9yUgVhY3Rvcg==');

@$core.Deprecated('Use pingResultDescriptor instead')
const PingResult$json = {
  '1': 'PingResult',
  '2': [
    {'1': 'echo_data', '3': 1, '4': 1, '5': 12, '10': 'echoData'},
    {'1': 'rtt_ms', '3': 2, '4': 1, '5': 4, '10': 'rttMs'},
  ],
};

/// Descriptor for `PingResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingResultDescriptor = $convert.base64Decode(
    'CgpQaW5nUmVzdWx0EhsKCWVjaG9fZGF0YRgBIAEoDFIIZWNob0RhdGESFQoGcnR0X21zGAIgAS'
    'gEUgVydHRNcw==');

@$core.Deprecated('Use authResultDescriptor instead')
const AuthResult$json = {
  '1': 'AuthResult',
  '2': [
    {'1': 'authenticated', '3': 1, '4': 1, '5': 8, '10': 'authenticated'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `AuthResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authResultDescriptor = $convert.base64Decode(
    'CgpBdXRoUmVzdWx0EiQKDWF1dGhlbnRpY2F0ZWQYASABKAhSDWF1dGhlbnRpY2F0ZWQSFwoHdX'
    'Nlcl9pZBgCIAEoCVIGdXNlcklk');

@$core.Deprecated('Use getBalanceResultDescriptor instead')
const GetBalanceResult$json = {
  '1': 'GetBalanceResult',
  '2': [
    {
      '1': 'balance',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.BalanceSnapshot',
      '10': 'balance'
    },
  ],
};

/// Descriptor for `GetBalanceResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBalanceResultDescriptor = $convert.base64Decode(
    'ChBHZXRCYWxhbmNlUmVzdWx0EjcKB2JhbGFuY2UYASABKAsyHS5idGRsaWIucHJvdG8uQmFsYW'
    '5jZVNuYXBzaG90UgdiYWxhbmNl');

@$core.Deprecated('Use transferResultDescriptor instead')
const TransferResult$json = {
  '1': 'TransferResult',
  '2': [
    {'1': 'tx_id', '3': 1, '4': 1, '5': 9, '10': 'txId'},
  ],
};

/// Descriptor for `TransferResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferResultDescriptor = $convert
    .base64Decode('Cg5UcmFuc2ZlclJlc3VsdBITCgV0eF9pZBgBIAEoCVIEdHhJZA==');

@$core.Deprecated('Use getHistoryResultDescriptor instead')
const GetHistoryResult$json = {
  '1': 'GetHistoryResult',
  '2': [
    {
      '1': 'transactions',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.btdlib.proto.Transaction',
      '10': 'transactions'
    },
    {'1': 'next_token', '3': 2, '4': 1, '5': 9, '10': 'nextToken'},
  ],
};

/// Descriptor for `GetHistoryResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getHistoryResultDescriptor = $convert.base64Decode(
    'ChBHZXRIaXN0b3J5UmVzdWx0Ej0KDHRyYW5zYWN0aW9ucxgBIAMoCzIZLmJ0ZGxpYi5wcm90by'
    '5UcmFuc2FjdGlvblIMdHJhbnNhY3Rpb25zEh0KCm5leHRfdG9rZW4YAiABKAlSCW5leHRUb2tl'
    'bg==');

@$core.Deprecated('Use getProfileResultDescriptor instead')
const GetProfileResult$json = {
  '1': 'GetProfileResult',
  '2': [
    {
      '1': 'profile',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UserProfile',
      '10': 'profile'
    },
  ],
};

/// Descriptor for `GetProfileResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProfileResultDescriptor = $convert.base64Decode(
    'ChBHZXRQcm9maWxlUmVzdWx0EjMKB3Byb2ZpbGUYASABKAsyGS5idGRsaWIucHJvdG8uVXNlcl'
    'Byb2ZpbGVSB3Byb2ZpbGU=');

@$core.Deprecated('Use clientUpdateDescriptor instead')
const ClientUpdate$json = {
  '1': 'ClientUpdate',
  '2': [
    {
      '1': 'connection_state',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UpdateConnectionState',
      '9': 0,
      '10': 'connectionState'
    },
    {
      '1': 'auth_state',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UpdateAuthorizationState',
      '9': 0,
      '10': 'authState'
    },
    {
      '1': 'session_expired',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UpdateSessionExpired',
      '9': 0,
      '10': 'sessionExpired'
    },
    {
      '1': 'wallet_changed',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UpdateWalletChanged',
      '9': 0,
      '10': 'walletChanged'
    },
    {
      '1': 'balance_changed',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UpdateBalanceChanged',
      '9': 0,
      '10': 'balanceChanged'
    },
    {
      '1': 'transaction_added',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UpdateTransactionAdded',
      '9': 0,
      '10': 'transactionAdded'
    },
    {
      '1': 'profile_changed',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UpdateProfileChanged',
      '9': 0,
      '10': 'profileChanged'
    },
    {
      '1': 'error',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UpdateError',
      '9': 0,
      '10': 'error'
    },
    {
      '1': 'sync_progress',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UpdateSyncProgress',
      '9': 0,
      '10': 'syncProgress'
    },
    {
      '1': 'notification_received',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UpdateNotificationReceived',
      '9': 0,
      '10': 'notificationReceived'
    },
    {
      '1': 'social_event',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UpdateSocialEvent',
      '9': 0,
      '10': 'socialEvent'
    },
    {
      '1': 'dm_received',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UpdateDmReceived',
      '9': 0,
      '10': 'dmReceived'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `ClientUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientUpdateDescriptor = $convert.base64Decode(
    'CgxDbGllbnRVcGRhdGUSUAoQY29ubmVjdGlvbl9zdGF0ZRgBIAEoCzIjLmJ0ZGxpYi5wcm90by'
    '5VcGRhdGVDb25uZWN0aW9uU3RhdGVIAFIPY29ubmVjdGlvblN0YXRlEkcKCmF1dGhfc3RhdGUY'
    'AiABKAsyJi5idGRsaWIucHJvdG8uVXBkYXRlQXV0aG9yaXphdGlvblN0YXRlSABSCWF1dGhTdG'
    'F0ZRJNCg9zZXNzaW9uX2V4cGlyZWQYAyABKAsyIi5idGRsaWIucHJvdG8uVXBkYXRlU2Vzc2lv'
    'bkV4cGlyZWRIAFIOc2Vzc2lvbkV4cGlyZWQSSgoOd2FsbGV0X2NoYW5nZWQYBCABKAsyIS5idG'
    'RsaWIucHJvdG8uVXBkYXRlV2FsbGV0Q2hhbmdlZEgAUg13YWxsZXRDaGFuZ2VkEk0KD2JhbGFu'
    'Y2VfY2hhbmdlZBgFIAEoCzIiLmJ0ZGxpYi5wcm90by5VcGRhdGVCYWxhbmNlQ2hhbmdlZEgAUg'
    '5iYWxhbmNlQ2hhbmdlZBJTChF0cmFuc2FjdGlvbl9hZGRlZBgGIAEoCzIkLmJ0ZGxpYi5wcm90'
    'by5VcGRhdGVUcmFuc2FjdGlvbkFkZGVkSABSEHRyYW5zYWN0aW9uQWRkZWQSTQoPcHJvZmlsZV'
    '9jaGFuZ2VkGAcgASgLMiIuYnRkbGliLnByb3RvLlVwZGF0ZVByb2ZpbGVDaGFuZ2VkSABSDnBy'
    'b2ZpbGVDaGFuZ2VkEjEKBWVycm9yGAggASgLMhkuYnRkbGliLnByb3RvLlVwZGF0ZUVycm9ySA'
    'BSBWVycm9yEkcKDXN5bmNfcHJvZ3Jlc3MYCSABKAsyIC5idGRsaWIucHJvdG8uVXBkYXRlU3lu'
    'Y1Byb2dyZXNzSABSDHN5bmNQcm9ncmVzcxJfChVub3RpZmljYXRpb25fcmVjZWl2ZWQYCiABKA'
    'syKC5idGRsaWIucHJvdG8uVXBkYXRlTm90aWZpY2F0aW9uUmVjZWl2ZWRIAFIUbm90aWZpY2F0'
    'aW9uUmVjZWl2ZWQSRAoMc29jaWFsX2V2ZW50GAsgASgLMh8uYnRkbGliLnByb3RvLlVwZGF0ZV'
    'NvY2lhbEV2ZW50SABSC3NvY2lhbEV2ZW50EkEKC2RtX3JlY2VpdmVkGAwgASgLMh4uYnRkbGli'
    'LnByb3RvLlVwZGF0ZURtUmVjZWl2ZWRIAFIKZG1SZWNlaXZlZEIJCgdwYXlsb2Fk');

@$core.Deprecated('Use updateDmReceivedDescriptor instead')
const UpdateDmReceived$json = {
  '1': 'UpdateDmReceived',
  '2': [
    {
      '1': 'from',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Actor',
      '10': 'from'
    },
    {
      '1': 'message',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.DmMessage',
      '10': 'message'
    },
  ],
};

/// Descriptor for `UpdateDmReceived`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDmReceivedDescriptor = $convert.base64Decode(
    'ChBVcGRhdGVEbVJlY2VpdmVkEicKBGZyb20YASABKAsyEy5idGRsaWIucHJvdG8uQWN0b3JSBG'
    'Zyb20SMQoHbWVzc2FnZRgCIAEoCzIXLmJ0ZGxpYi5wcm90by5EbU1lc3NhZ2VSB21lc3NhZ2U=');

@$core.Deprecated('Use updateSocialEventDescriptor instead')
const UpdateSocialEvent$json = {
  '1': 'UpdateSocialEvent',
  '2': [
    {
      '1': 'kind',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.btdlib.proto.EventKind',
      '10': 'kind'
    },
    {
      '1': 'post',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Post',
      '10': 'post'
    },
    {
      '1': 'digest',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.PostDigest',
      '10': 'digest'
    },
  ],
};

/// Descriptor for `UpdateSocialEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSocialEventDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVTb2NpYWxFdmVudBIrCgRraW5kGAEgASgOMhcuYnRkbGliLnByb3RvLkV2ZW50S2'
    'luZFIEa2luZBImCgRwb3N0GAIgASgLMhIuYnRkbGliLnByb3RvLlBvc3RSBHBvc3QSMAoGZGln'
    'ZXN0GAMgASgLMhguYnRkbGliLnByb3RvLlBvc3REaWdlc3RSBmRpZ2VzdA==');

@$core.Deprecated('Use updateNotificationReceivedDescriptor instead')
const UpdateNotificationReceived$json = {
  '1': 'UpdateNotificationReceived',
  '2': [
    {
      '1': 'notification',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Notification',
      '10': 'notification'
    },
  ],
};

/// Descriptor for `UpdateNotificationReceived`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateNotificationReceivedDescriptor =
    $convert.base64Decode(
        'ChpVcGRhdGVOb3RpZmljYXRpb25SZWNlaXZlZBI+Cgxub3RpZmljYXRpb24YASABKAsyGi5idG'
        'RsaWIucHJvdG8uTm90aWZpY2F0aW9uUgxub3RpZmljYXRpb24=');

@$core.Deprecated('Use updateConnectionStateDescriptor instead')
const UpdateConnectionState$json = {
  '1': 'UpdateConnectionState',
  '2': [
    {
      '1': 'state',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.btdlib.proto.ConnectionState',
      '10': 'state'
    },
  ],
};

/// Descriptor for `UpdateConnectionState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateConnectionStateDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVDb25uZWN0aW9uU3RhdGUSMwoFc3RhdGUYASABKA4yHS5idGRsaWIucHJvdG8uQ2'
    '9ubmVjdGlvblN0YXRlUgVzdGF0ZQ==');

@$core.Deprecated('Use updateAuthorizationStateDescriptor instead')
const UpdateAuthorizationState$json = {
  '1': 'UpdateAuthorizationState',
  '2': [
    {
      '1': 'state',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.btdlib.proto.AuthorizationState',
      '10': 'state'
    },
  ],
};

/// Descriptor for `UpdateAuthorizationState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAuthorizationStateDescriptor =
    $convert.base64Decode(
        'ChhVcGRhdGVBdXRob3JpemF0aW9uU3RhdGUSNgoFc3RhdGUYASABKA4yIC5idGRsaWIucHJvdG'
        '8uQXV0aG9yaXphdGlvblN0YXRlUgVzdGF0ZQ==');

@$core.Deprecated('Use updateSessionExpiredDescriptor instead')
const UpdateSessionExpired$json = {
  '1': 'UpdateSessionExpired',
};

/// Descriptor for `UpdateSessionExpired`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionExpiredDescriptor =
    $convert.base64Decode('ChRVcGRhdGVTZXNzaW9uRXhwaXJlZA==');

@$core.Deprecated('Use updateWalletChangedDescriptor instead')
const UpdateWalletChanged$json = {
  '1': 'UpdateWalletChanged',
  '2': [
    {
      '1': 'wallet',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Wallet',
      '10': 'wallet'
    },
  ],
};

/// Descriptor for `UpdateWalletChanged`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateWalletChangedDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVXYWxsZXRDaGFuZ2VkEiwKBndhbGxldBgBIAEoCzIULmJ0ZGxpYi5wcm90by5XYW'
    'xsZXRSBndhbGxldA==');

@$core.Deprecated('Use updateBalanceChangedDescriptor instead')
const UpdateBalanceChanged$json = {
  '1': 'UpdateBalanceChanged',
  '2': [
    {
      '1': 'balance',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.BalanceSnapshot',
      '10': 'balance'
    },
  ],
};

/// Descriptor for `UpdateBalanceChanged`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateBalanceChangedDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVCYWxhbmNlQ2hhbmdlZBI3CgdiYWxhbmNlGAEgASgLMh0uYnRkbGliLnByb3RvLk'
    'JhbGFuY2VTbmFwc2hvdFIHYmFsYW5jZQ==');

@$core.Deprecated('Use updateTransactionAddedDescriptor instead')
const UpdateTransactionAdded$json = {
  '1': 'UpdateTransactionAdded',
  '2': [
    {
      '1': 'transaction',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.Transaction',
      '10': 'transaction'
    },
  ],
};

/// Descriptor for `UpdateTransactionAdded`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTransactionAddedDescriptor =
    $convert.base64Decode(
        'ChZVcGRhdGVUcmFuc2FjdGlvbkFkZGVkEjsKC3RyYW5zYWN0aW9uGAEgASgLMhkuYnRkbGliLn'
        'Byb3RvLlRyYW5zYWN0aW9uUgt0cmFuc2FjdGlvbg==');

@$core.Deprecated('Use updateProfileChangedDescriptor instead')
const UpdateProfileChanged$json = {
  '1': 'UpdateProfileChanged',
  '2': [
    {
      '1': 'profile',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.btdlib.proto.UserProfile',
      '10': 'profile'
    },
  ],
};

/// Descriptor for `UpdateProfileChanged`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateProfileChangedDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVQcm9maWxlQ2hhbmdlZBIzCgdwcm9maWxlGAEgASgLMhkuYnRkbGliLnByb3RvLl'
    'VzZXJQcm9maWxlUgdwcm9maWxl');

@$core.Deprecated('Use updateErrorDescriptor instead')
const UpdateError$json = {
  '1': 'UpdateError',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 13, '10': 'code'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `UpdateError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateErrorDescriptor = $convert.base64Decode(
    'CgtVcGRhdGVFcnJvchISCgRjb2RlGAEgASgNUgRjb2RlEhgKB21lc3NhZ2UYAiABKAlSB21lc3'
    'NhZ2U=');

@$core.Deprecated('Use updateSyncProgressDescriptor instead')
const UpdateSyncProgress$json = {
  '1': 'UpdateSyncProgress',
  '2': [
    {
      '1': 'state',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.btdlib.proto.SyncState',
      '10': 'state'
    },
    {'1': 'progress_pct', '3': 2, '4': 1, '5': 13, '10': 'progressPct'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `UpdateSyncProgress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSyncProgressDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVTeW5jUHJvZ3Jlc3MSLQoFc3RhdGUYASABKA4yFy5idGRsaWIucHJvdG8uU3luY1'
    'N0YXRlUgVzdGF0ZRIhCgxwcm9ncmVzc19wY3QYAiABKA1SC3Byb2dyZXNzUGN0EhgKB21lc3Nh'
    'Z2UYAyABKAlSB21lc3NhZ2U=');
