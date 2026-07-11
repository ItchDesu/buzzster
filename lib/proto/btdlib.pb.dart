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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'btdlib.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'btdlib.pbenum.dart';

/// Client options
class ClientOptions extends $pb.GeneratedMessage {
  factory ClientOptions({
    $core.String? host,
    $core.int? port,
    $core.String? serverPubkey,
    $core.String? storagePath,
    $core.int? timeoutSecs,
    $core.int? maxRetries,
    $core.bool? offlineMode,
  }) {
    final result = create();
    if (host != null) result.host = host;
    if (port != null) result.port = port;
    if (serverPubkey != null) result.serverPubkey = serverPubkey;
    if (storagePath != null) result.storagePath = storagePath;
    if (timeoutSecs != null) result.timeoutSecs = timeoutSecs;
    if (maxRetries != null) result.maxRetries = maxRetries;
    if (offlineMode != null) result.offlineMode = offlineMode;
    return result;
  }

  ClientOptions._();

  factory ClientOptions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClientOptions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClientOptions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'host')
    ..aI(2, _omitFieldNames ? '' : 'port', fieldType: $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'serverPubkey')
    ..aOS(4, _omitFieldNames ? '' : 'storagePath')
    ..aI(5, _omitFieldNames ? '' : 'timeoutSecs',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'maxRetries', fieldType: $pb.PbFieldType.OU3)
    ..aOB(7, _omitFieldNames ? '' : 'offlineMode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClientOptions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClientOptions copyWith(void Function(ClientOptions) updates) =>
      super.copyWith((message) => updates(message as ClientOptions))
          as ClientOptions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientOptions create() => ClientOptions._();
  @$core.override
  ClientOptions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ClientOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClientOptions>(create);
  static ClientOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get host => $_getSZ(0);
  @$pb.TagNumber(1)
  set host($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHost() => $_has(0);
  @$pb.TagNumber(1)
  void clearHost() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get port => $_getIZ(1);
  @$pb.TagNumber(2)
  set port($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearPort() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get serverPubkey => $_getSZ(2);
  @$pb.TagNumber(3)
  set serverPubkey($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasServerPubkey() => $_has(2);
  @$pb.TagNumber(3)
  void clearServerPubkey() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get storagePath => $_getSZ(3);
  @$pb.TagNumber(4)
  set storagePath($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStoragePath() => $_has(3);
  @$pb.TagNumber(4)
  void clearStoragePath() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get timeoutSecs => $_getIZ(4);
  @$pb.TagNumber(5)
  set timeoutSecs($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTimeoutSecs() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimeoutSecs() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get maxRetries => $_getIZ(5);
  @$pb.TagNumber(6)
  set maxRetries($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMaxRetries() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaxRetries() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get offlineMode => $_getBF(6);
  @$pb.TagNumber(7)
  set offlineMode($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasOfflineMode() => $_has(6);
  @$pb.TagNumber(7)
  void clearOfflineMode() => $_clearField(7);
}

/// Models persisted in local storage & memory cache
class UserProfile extends $pb.GeneratedMessage {
  factory UserProfile({
    $core.String? userId,
    $core.String? identity,
    $fixnum.Int64? lastSeenMs,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (identity != null) result.identity = identity;
    if (lastSeenMs != null) result.lastSeenMs = lastSeenMs;
    return result;
  }

  UserProfile._();

  factory UserProfile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserProfile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserProfile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'identity')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'lastSeenMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserProfile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserProfile copyWith(void Function(UserProfile) updates) =>
      super.copyWith((message) => updates(message as UserProfile))
          as UserProfile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserProfile create() => UserProfile._();
  @$core.override
  UserProfile createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserProfile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserProfile>(create);
  static UserProfile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get identity => $_getSZ(1);
  @$pb.TagNumber(2)
  set identity($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIdentity() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdentity() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lastSeenMs => $_getI64(2);
  @$pb.TagNumber(3)
  set lastSeenMs($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLastSeenMs() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastSeenMs() => $_clearField(3);
}

class Wallet extends $pb.GeneratedMessage {
  factory Wallet({
    $core.String? walletId,
    $core.String? userId,
    $core.String? currency,
    $fixnum.Int64? balanceMinor,
    $core.int? decimalPlaces,
  }) {
    final result = create();
    if (walletId != null) result.walletId = walletId;
    if (userId != null) result.userId = userId;
    if (currency != null) result.currency = currency;
    if (balanceMinor != null) result.balanceMinor = balanceMinor;
    if (decimalPlaces != null) result.decimalPlaces = decimalPlaces;
    return result;
  }

  Wallet._();

  factory Wallet.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Wallet.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Wallet',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'walletId')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
    ..aOS(3, _omitFieldNames ? '' : 'currency')
    ..aInt64(4, _omitFieldNames ? '' : 'balanceMinor')
    ..aI(5, _omitFieldNames ? '' : 'decimalPlaces',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Wallet clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Wallet copyWith(void Function(Wallet) updates) =>
      super.copyWith((message) => updates(message as Wallet)) as Wallet;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Wallet create() => Wallet._();
  @$core.override
  Wallet createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Wallet getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Wallet>(create);
  static Wallet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get walletId => $_getSZ(0);
  @$pb.TagNumber(1)
  set walletId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWalletId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get currency => $_getSZ(2);
  @$pb.TagNumber(3)
  set currency($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCurrency() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrency() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get balanceMinor => $_getI64(3);
  @$pb.TagNumber(4)
  set balanceMinor($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBalanceMinor() => $_has(3);
  @$pb.TagNumber(4)
  void clearBalanceMinor() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get decimalPlaces => $_getIZ(4);
  @$pb.TagNumber(5)
  set decimalPlaces($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDecimalPlaces() => $_has(4);
  @$pb.TagNumber(5)
  void clearDecimalPlaces() => $_clearField(5);
}

class BalanceSnapshot extends $pb.GeneratedMessage {
  factory BalanceSnapshot({
    $core.String? currency,
    $fixnum.Int64? amountMinor,
    $core.int? decimalPlaces,
    $fixnum.Int64? updatedAtMs,
  }) {
    final result = create();
    if (currency != null) result.currency = currency;
    if (amountMinor != null) result.amountMinor = amountMinor;
    if (decimalPlaces != null) result.decimalPlaces = decimalPlaces;
    if (updatedAtMs != null) result.updatedAtMs = updatedAtMs;
    return result;
  }

  BalanceSnapshot._();

  factory BalanceSnapshot.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BalanceSnapshot.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BalanceSnapshot',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'currency')
    ..aInt64(2, _omitFieldNames ? '' : 'amountMinor')
    ..aI(3, _omitFieldNames ? '' : 'decimalPlaces',
        fieldType: $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'updatedAtMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BalanceSnapshot clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BalanceSnapshot copyWith(void Function(BalanceSnapshot) updates) =>
      super.copyWith((message) => updates(message as BalanceSnapshot))
          as BalanceSnapshot;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BalanceSnapshot create() => BalanceSnapshot._();
  @$core.override
  BalanceSnapshot createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BalanceSnapshot getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BalanceSnapshot>(create);
  static BalanceSnapshot? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get currency => $_getSZ(0);
  @$pb.TagNumber(1)
  set currency($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCurrency() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrency() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get amountMinor => $_getI64(1);
  @$pb.TagNumber(2)
  set amountMinor($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAmountMinor() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmountMinor() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get decimalPlaces => $_getIZ(2);
  @$pb.TagNumber(3)
  set decimalPlaces($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDecimalPlaces() => $_has(2);
  @$pb.TagNumber(3)
  void clearDecimalPlaces() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get updatedAtMs => $_getI64(3);
  @$pb.TagNumber(4)
  set updatedAtMs($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUpdatedAtMs() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdatedAtMs() => $_clearField(4);
}

class Transaction extends $pb.GeneratedMessage {
  factory Transaction({
    $core.String? txId,
    $fixnum.Int64? timestampSecs,
    $fixnum.Int64? amountMinor,
    $core.String? counterpart,
    $core.String? reference,
    $core.String? currency,
  }) {
    final result = create();
    if (txId != null) result.txId = txId;
    if (timestampSecs != null) result.timestampSecs = timestampSecs;
    if (amountMinor != null) result.amountMinor = amountMinor;
    if (counterpart != null) result.counterpart = counterpart;
    if (reference != null) result.reference = reference;
    if (currency != null) result.currency = currency;
    return result;
  }

  Transaction._();

  factory Transaction.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Transaction.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Transaction',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'txId')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'timestampSecs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(3, _omitFieldNames ? '' : 'amountMinor')
    ..aOS(4, _omitFieldNames ? '' : 'counterpart')
    ..aOS(5, _omitFieldNames ? '' : 'reference')
    ..aOS(6, _omitFieldNames ? '' : 'currency')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Transaction clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Transaction copyWith(void Function(Transaction) updates) =>
      super.copyWith((message) => updates(message as Transaction))
          as Transaction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Transaction create() => Transaction._();
  @$core.override
  Transaction createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Transaction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Transaction>(create);
  static Transaction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get txId => $_getSZ(0);
  @$pb.TagNumber(1)
  set txId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTxId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampSecs => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampSecs($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTimestampSecs() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampSecs() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get amountMinor => $_getI64(2);
  @$pb.TagNumber(3)
  set amountMinor($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAmountMinor() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmountMinor() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get counterpart => $_getSZ(3);
  @$pb.TagNumber(4)
  set counterpart($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCounterpart() => $_has(3);
  @$pb.TagNumber(4)
  void clearCounterpart() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get reference => $_getSZ(4);
  @$pb.TagNumber(5)
  set reference($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasReference() => $_has(4);
  @$pb.TagNumber(5)
  void clearReference() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get currency => $_getSZ(5);
  @$pb.TagNumber(6)
  set currency($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCurrency() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrency() => $_clearField(6);
}

class PollOption extends $pb.GeneratedMessage {
  factory PollOption({
    $core.String? text,
    $core.int? votes,
  }) {
    final result = create();
    if (text != null) result.text = text;
    if (votes != null) result.votes = votes;
    return result;
  }

  PollOption._();

  factory PollOption.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PollOption.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PollOption',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..aI(2, _omitFieldNames ? '' : 'votes', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PollOption clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PollOption copyWith(void Function(PollOption) updates) =>
      super.copyWith((message) => updates(message as PollOption)) as PollOption;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PollOption create() => PollOption._();
  @$core.override
  PollOption createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PollOption getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PollOption>(create);
  static PollOption? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get votes => $_getIZ(1);
  @$pb.TagNumber(2)
  set votes($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVotes() => $_has(1);
  @$pb.TagNumber(2)
  void clearVotes() => $_clearField(2);
}

class Poll extends $pb.GeneratedMessage {
  factory Poll({
    $core.Iterable<PollOption>? options,
    $core.int? viewerVote,
    $fixnum.Int64? endsAt,
    $core.int? totalVotes,
  }) {
    final result = create();
    if (options != null) result.options.addAll(options);
    if (viewerVote != null) result.viewerVote = viewerVote;
    if (endsAt != null) result.endsAt = endsAt;
    if (totalVotes != null) result.totalVotes = totalVotes;
    return result;
  }

  Poll._();

  factory Poll.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Poll.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Poll',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..pPM<PollOption>(1, _omitFieldNames ? '' : 'options',
        subBuilder: PollOption.create)
    ..aI(2, _omitFieldNames ? '' : 'viewerVote')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'endsAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(4, _omitFieldNames ? '' : 'totalVotes', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Poll clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Poll copyWith(void Function(Poll) updates) =>
      super.copyWith((message) => updates(message as Poll)) as Poll;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Poll create() => Poll._();
  @$core.override
  Poll createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Poll getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Poll>(create);
  static Poll? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<PollOption> get options => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get viewerVote => $_getIZ(1);
  @$pb.TagNumber(2)
  set viewerVote($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasViewerVote() => $_has(1);
  @$pb.TagNumber(2)
  void clearViewerVote() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get endsAt => $_getI64(2);
  @$pb.TagNumber(3)
  set endsAt($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEndsAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndsAt() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get totalVotes => $_getIZ(3);
  @$pb.TagNumber(4)
  set totalVotes($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTotalVotes() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalVotes() => $_clearField(4);
}

class DmMessage extends $pb.GeneratedMessage {
  factory DmMessage({
    $core.String? messageId,
    $core.String? senderId,
    $core.String? text,
    $fixnum.Int64? createdAt,
    $core.bool? read,
    $core.bool? mine,
  }) {
    final result = create();
    if (messageId != null) result.messageId = messageId;
    if (senderId != null) result.senderId = senderId;
    if (text != null) result.text = text;
    if (createdAt != null) result.createdAt = createdAt;
    if (read != null) result.read = read;
    if (mine != null) result.mine = mine;
    return result;
  }

  DmMessage._();

  factory DmMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DmMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DmMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'messageId')
    ..aOS(2, _omitFieldNames ? '' : 'senderId')
    ..aOS(3, _omitFieldNames ? '' : 'text')
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'createdAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(5, _omitFieldNames ? '' : 'read')
    ..aOB(6, _omitFieldNames ? '' : 'mine')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DmMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DmMessage copyWith(void Function(DmMessage) updates) =>
      super.copyWith((message) => updates(message as DmMessage)) as DmMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DmMessage create() => DmMessage._();
  @$core.override
  DmMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DmMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DmMessage>(create);
  static DmMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get messageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set messageId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get senderId => $_getSZ(1);
  @$pb.TagNumber(2)
  set senderId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSenderId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSenderId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get text => $_getSZ(2);
  @$pb.TagNumber(3)
  set text($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(3)
  void clearText() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get createdAt => $_getI64(3);
  @$pb.TagNumber(4)
  set createdAt($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedAt() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get read => $_getBF(4);
  @$pb.TagNumber(5)
  set read($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRead() => $_has(4);
  @$pb.TagNumber(5)
  void clearRead() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get mine => $_getBF(5);
  @$pb.TagNumber(6)
  set mine($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMine() => $_has(5);
  @$pb.TagNumber(6)
  void clearMine() => $_clearField(6);
}

class Conversation extends $pb.GeneratedMessage {
  factory Conversation({
    Actor? peer,
    DmMessage? lastMessage,
    $core.int? unreadCount,
    $fixnum.Int64? updatedAt,
  }) {
    final result = create();
    if (peer != null) result.peer = peer;
    if (lastMessage != null) result.lastMessage = lastMessage;
    if (unreadCount != null) result.unreadCount = unreadCount;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  Conversation._();

  factory Conversation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Conversation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Conversation',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<Actor>(1, _omitFieldNames ? '' : 'peer', subBuilder: Actor.create)
    ..aOM<DmMessage>(2, _omitFieldNames ? '' : 'lastMessage',
        subBuilder: DmMessage.create)
    ..aI(3, _omitFieldNames ? '' : 'unreadCount',
        fieldType: $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'updatedAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Conversation clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Conversation copyWith(void Function(Conversation) updates) =>
      super.copyWith((message) => updates(message as Conversation))
          as Conversation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Conversation create() => Conversation._();
  @$core.override
  Conversation createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Conversation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Conversation>(create);
  static Conversation? _defaultInstance;

  @$pb.TagNumber(1)
  Actor get peer => $_getN(0);
  @$pb.TagNumber(1)
  set peer(Actor value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPeer() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeer() => $_clearField(1);
  @$pb.TagNumber(1)
  Actor ensurePeer() => $_ensure(0);

  @$pb.TagNumber(2)
  DmMessage get lastMessage => $_getN(1);
  @$pb.TagNumber(2)
  set lastMessage(DmMessage value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLastMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastMessage() => $_clearField(2);
  @$pb.TagNumber(2)
  DmMessage ensureLastMessage() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get unreadCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set unreadCount($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUnreadCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnreadCount() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get updatedAt => $_getI64(3);
  @$pb.TagNumber(4)
  set updatedAt($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUpdatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdatedAt() => $_clearField(4);
}

class PostDigest extends $pb.GeneratedMessage {
  factory PostDigest({
    $core.String? postId,
    $core.String? text,
    $core.int? likeCount,
    $core.int? repostCount,
    $core.int? replyCount,
    $core.bool? edited,
    Poll? poll,
  }) {
    final result = create();
    if (postId != null) result.postId = postId;
    if (text != null) result.text = text;
    if (likeCount != null) result.likeCount = likeCount;
    if (repostCount != null) result.repostCount = repostCount;
    if (replyCount != null) result.replyCount = replyCount;
    if (edited != null) result.edited = edited;
    if (poll != null) result.poll = poll;
    return result;
  }

  PostDigest._();

  factory PostDigest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PostDigest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PostDigest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'postId')
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..aI(3, _omitFieldNames ? '' : 'likeCount', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'repostCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'replyCount', fieldType: $pb.PbFieldType.OU3)
    ..aOB(6, _omitFieldNames ? '' : 'edited')
    ..aOM<Poll>(7, _omitFieldNames ? '' : 'poll', subBuilder: Poll.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PostDigest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PostDigest copyWith(void Function(PostDigest) updates) =>
      super.copyWith((message) => updates(message as PostDigest)) as PostDigest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostDigest create() => PostDigest._();
  @$core.override
  PostDigest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PostDigest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostDigest>(create);
  static PostDigest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get postId => $_getSZ(0);
  @$pb.TagNumber(1)
  set postId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get likeCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set likeCount($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLikeCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearLikeCount() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get repostCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set repostCount($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRepostCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearRepostCount() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get replyCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set replyCount($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasReplyCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearReplyCount() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get edited => $_getBF(5);
  @$pb.TagNumber(6)
  set edited($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasEdited() => $_has(5);
  @$pb.TagNumber(6)
  void clearEdited() => $_clearField(6);

  @$pb.TagNumber(7)
  Poll get poll => $_getN(6);
  @$pb.TagNumber(7)
  set poll(Poll value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasPoll() => $_has(6);
  @$pb.TagNumber(7)
  void clearPoll() => $_clearField(7);
  @$pb.TagNumber(7)
  Poll ensurePoll() => $_ensure(6);
}

class LinkPreview extends $pb.GeneratedMessage {
  factory LinkPreview({
    $core.String? url,
    $core.String? title,
    $core.String? description,
    $core.String? imageUrl,
    $core.String? siteName,
  }) {
    final result = create();
    if (url != null) result.url = url;
    if (title != null) result.title = title;
    if (description != null) result.description = description;
    if (imageUrl != null) result.imageUrl = imageUrl;
    if (siteName != null) result.siteName = siteName;
    return result;
  }

  LinkPreview._();

  factory LinkPreview.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LinkPreview.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LinkPreview',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'imageUrl')
    ..aOS(5, _omitFieldNames ? '' : 'siteName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinkPreview clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinkPreview copyWith(void Function(LinkPreview) updates) =>
      super.copyWith((message) => updates(message as LinkPreview))
          as LinkPreview;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LinkPreview create() => LinkPreview._();
  @$core.override
  LinkPreview createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LinkPreview getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LinkPreview>(create);
  static LinkPreview? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get imageUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set imageUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasImageUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearImageUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get siteName => $_getSZ(4);
  @$pb.TagNumber(5)
  set siteName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSiteName() => $_has(4);
  @$pb.TagNumber(5)
  void clearSiteName() => $_clearField(5);
}

class Trend extends $pb.GeneratedMessage {
  factory Trend({
    $core.String? tag,
    $core.int? postCount,
  }) {
    final result = create();
    if (tag != null) result.tag = tag;
    if (postCount != null) result.postCount = postCount;
    return result;
  }

  Trend._();

  factory Trend.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Trend.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Trend',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tag')
    ..aI(2, _omitFieldNames ? '' : 'postCount', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Trend clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Trend copyWith(void Function(Trend) updates) =>
      super.copyWith((message) => updates(message as Trend)) as Trend;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Trend create() => Trend._();
  @$core.override
  Trend createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Trend getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Trend>(create);
  static Trend? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tag => $_getSZ(0);
  @$pb.TagNumber(1)
  set tag($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTag() => $_has(0);
  @$pb.TagNumber(1)
  void clearTag() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get postCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set postCount($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPostCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearPostCount() => $_clearField(2);
}

class Actor extends $pb.GeneratedMessage {
  factory Actor({
    $core.String? userId,
    $core.String? handle,
    $core.String? displayName,
    $core.String? bio,
    $fixnum.Int64? createdAt,
    $core.int? followersCount,
    $core.int? followingCount,
    $core.int? postsCount,
    $core.bool? viewerFollowing,
    $core.bool? followsViewer,
    $core.String? avatarUrl,
    $core.String? bannerUrl,
    $core.bool? verified,
    $core.bool? online,
    $core.String? pinnedPostId,
    $core.bool? viewerMuted,
    $core.bool? viewerBlocked,
    $core.int? repliesCount,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (handle != null) result.handle = handle;
    if (displayName != null) result.displayName = displayName;
    if (bio != null) result.bio = bio;
    if (createdAt != null) result.createdAt = createdAt;
    if (followersCount != null) result.followersCount = followersCount;
    if (followingCount != null) result.followingCount = followingCount;
    if (postsCount != null) result.postsCount = postsCount;
    if (viewerFollowing != null) result.viewerFollowing = viewerFollowing;
    if (followsViewer != null) result.followsViewer = followsViewer;
    if (avatarUrl != null) result.avatarUrl = avatarUrl;
    if (bannerUrl != null) result.bannerUrl = bannerUrl;
    if (verified != null) result.verified = verified;
    if (online != null) result.online = online;
    if (pinnedPostId != null) result.pinnedPostId = pinnedPostId;
    if (viewerMuted != null) result.viewerMuted = viewerMuted;
    if (viewerBlocked != null) result.viewerBlocked = viewerBlocked;
    if (repliesCount != null) result.repliesCount = repliesCount;
    return result;
  }

  Actor._();

  factory Actor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Actor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Actor',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'handle')
    ..aOS(3, _omitFieldNames ? '' : 'displayName')
    ..aOS(4, _omitFieldNames ? '' : 'bio')
    ..a<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'createdAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(6, _omitFieldNames ? '' : 'followersCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'followingCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'postsCount', fieldType: $pb.PbFieldType.OU3)
    ..aOB(9, _omitFieldNames ? '' : 'viewerFollowing')
    ..aOB(10, _omitFieldNames ? '' : 'followsViewer')
    ..aOS(11, _omitFieldNames ? '' : 'avatarUrl')
    ..aOS(12, _omitFieldNames ? '' : 'bannerUrl')
    ..aOB(13, _omitFieldNames ? '' : 'verified')
    ..aOB(14, _omitFieldNames ? '' : 'online')
    ..aOS(15, _omitFieldNames ? '' : 'pinnedPostId')
    ..aOB(16, _omitFieldNames ? '' : 'viewerMuted')
    ..aOB(17, _omitFieldNames ? '' : 'viewerBlocked')
    ..aI(18, _omitFieldNames ? '' : 'repliesCount',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Actor clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Actor copyWith(void Function(Actor) updates) =>
      super.copyWith((message) => updates(message as Actor)) as Actor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Actor create() => Actor._();
  @$core.override
  Actor createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Actor getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Actor>(create);
  static Actor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get handle => $_getSZ(1);
  @$pb.TagNumber(2)
  set handle($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHandle() => $_has(1);
  @$pb.TagNumber(2)
  void clearHandle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get displayName => $_getSZ(2);
  @$pb.TagNumber(3)
  set displayName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDisplayName() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplayName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get bio => $_getSZ(3);
  @$pb.TagNumber(4)
  set bio($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBio() => $_has(3);
  @$pb.TagNumber(4)
  void clearBio() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createdAt => $_getI64(4);
  @$pb.TagNumber(5)
  set createdAt($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get followersCount => $_getIZ(5);
  @$pb.TagNumber(6)
  set followersCount($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasFollowersCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearFollowersCount() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get followingCount => $_getIZ(6);
  @$pb.TagNumber(7)
  set followingCount($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFollowingCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearFollowingCount() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get postsCount => $_getIZ(7);
  @$pb.TagNumber(8)
  set postsCount($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasPostsCount() => $_has(7);
  @$pb.TagNumber(8)
  void clearPostsCount() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get viewerFollowing => $_getBF(8);
  @$pb.TagNumber(9)
  set viewerFollowing($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasViewerFollowing() => $_has(8);
  @$pb.TagNumber(9)
  void clearViewerFollowing() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get followsViewer => $_getBF(9);
  @$pb.TagNumber(10)
  set followsViewer($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasFollowsViewer() => $_has(9);
  @$pb.TagNumber(10)
  void clearFollowsViewer() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get avatarUrl => $_getSZ(10);
  @$pb.TagNumber(11)
  set avatarUrl($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasAvatarUrl() => $_has(10);
  @$pb.TagNumber(11)
  void clearAvatarUrl() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get bannerUrl => $_getSZ(11);
  @$pb.TagNumber(12)
  set bannerUrl($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasBannerUrl() => $_has(11);
  @$pb.TagNumber(12)
  void clearBannerUrl() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.bool get verified => $_getBF(12);
  @$pb.TagNumber(13)
  set verified($core.bool value) => $_setBool(12, value);
  @$pb.TagNumber(13)
  $core.bool hasVerified() => $_has(12);
  @$pb.TagNumber(13)
  void clearVerified() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.bool get online => $_getBF(13);
  @$pb.TagNumber(14)
  set online($core.bool value) => $_setBool(13, value);
  @$pb.TagNumber(14)
  $core.bool hasOnline() => $_has(13);
  @$pb.TagNumber(14)
  void clearOnline() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get pinnedPostId => $_getSZ(14);
  @$pb.TagNumber(15)
  set pinnedPostId($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasPinnedPostId() => $_has(14);
  @$pb.TagNumber(15)
  void clearPinnedPostId() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.bool get viewerMuted => $_getBF(15);
  @$pb.TagNumber(16)
  set viewerMuted($core.bool value) => $_setBool(15, value);
  @$pb.TagNumber(16)
  $core.bool hasViewerMuted() => $_has(15);
  @$pb.TagNumber(16)
  void clearViewerMuted() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.bool get viewerBlocked => $_getBF(16);
  @$pb.TagNumber(17)
  set viewerBlocked($core.bool value) => $_setBool(16, value);
  @$pb.TagNumber(17)
  $core.bool hasViewerBlocked() => $_has(16);
  @$pb.TagNumber(17)
  void clearViewerBlocked() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get repliesCount => $_getIZ(17);
  @$pb.TagNumber(18)
  set repliesCount($core.int value) => $_setUnsignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasRepliesCount() => $_has(17);
  @$pb.TagNumber(18)
  void clearRepliesCount() => $_clearField(18);
}

class MediaItem extends $pb.GeneratedMessage {
  factory MediaItem({
    $core.String? mediaId,
    $core.String? url,
    $core.String? mime,
    $core.String? kind,
  }) {
    final result = create();
    if (mediaId != null) result.mediaId = mediaId;
    if (url != null) result.url = url;
    if (mime != null) result.mime = mime;
    if (kind != null) result.kind = kind;
    return result;
  }

  MediaItem._();

  factory MediaItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MediaItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MediaItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mediaId')
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..aOS(3, _omitFieldNames ? '' : 'mime')
    ..aOS(4, _omitFieldNames ? '' : 'kind')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaItem copyWith(void Function(MediaItem) updates) =>
      super.copyWith((message) => updates(message as MediaItem)) as MediaItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MediaItem create() => MediaItem._();
  @$core.override
  MediaItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MediaItem getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MediaItem>(create);
  static MediaItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mediaId => $_getSZ(0);
  @$pb.TagNumber(1)
  set mediaId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMediaId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMediaId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get mime => $_getSZ(2);
  @$pb.TagNumber(3)
  set mime($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMime() => $_has(2);
  @$pb.TagNumber(3)
  void clearMime() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get kind => $_getSZ(3);
  @$pb.TagNumber(4)
  set kind($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasKind() => $_has(3);
  @$pb.TagNumber(4)
  void clearKind() => $_clearField(4);
}

class Post extends $pb.GeneratedMessage {
  factory Post({
    $core.String? postId,
    Actor? author,
    $core.String? text,
    $fixnum.Int64? createdAt,
    $core.String? replyToPostId,
    $core.String? rootPostId,
    $core.int? likeCount,
    $core.int? repostCount,
    $core.int? replyCount,
    $core.bool? viewerLiked,
    $core.bool? viewerReposted,
    $core.String? replyToHandle,
    $core.Iterable<MediaItem>? media,
    LinkPreview? linkPreview,
    $core.bool? edited,
    $core.bool? viewerBookmarked,
    $fixnum.Int64? views,
    Post? quotedPost,
    Poll? poll,
  }) {
    final result = create();
    if (postId != null) result.postId = postId;
    if (author != null) result.author = author;
    if (text != null) result.text = text;
    if (createdAt != null) result.createdAt = createdAt;
    if (replyToPostId != null) result.replyToPostId = replyToPostId;
    if (rootPostId != null) result.rootPostId = rootPostId;
    if (likeCount != null) result.likeCount = likeCount;
    if (repostCount != null) result.repostCount = repostCount;
    if (replyCount != null) result.replyCount = replyCount;
    if (viewerLiked != null) result.viewerLiked = viewerLiked;
    if (viewerReposted != null) result.viewerReposted = viewerReposted;
    if (replyToHandle != null) result.replyToHandle = replyToHandle;
    if (media != null) result.media.addAll(media);
    if (linkPreview != null) result.linkPreview = linkPreview;
    if (edited != null) result.edited = edited;
    if (viewerBookmarked != null) result.viewerBookmarked = viewerBookmarked;
    if (views != null) result.views = views;
    if (quotedPost != null) result.quotedPost = quotedPost;
    if (poll != null) result.poll = poll;
    return result;
  }

  Post._();

  factory Post.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Post.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Post',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'postId')
    ..aOM<Actor>(2, _omitFieldNames ? '' : 'author', subBuilder: Actor.create)
    ..aOS(3, _omitFieldNames ? '' : 'text')
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'createdAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(5, _omitFieldNames ? '' : 'replyToPostId')
    ..aOS(6, _omitFieldNames ? '' : 'rootPostId')
    ..aI(7, _omitFieldNames ? '' : 'likeCount', fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'repostCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(9, _omitFieldNames ? '' : 'replyCount', fieldType: $pb.PbFieldType.OU3)
    ..aOB(10, _omitFieldNames ? '' : 'viewerLiked')
    ..aOB(11, _omitFieldNames ? '' : 'viewerReposted')
    ..aOS(12, _omitFieldNames ? '' : 'replyToHandle')
    ..pPM<MediaItem>(13, _omitFieldNames ? '' : 'media',
        subBuilder: MediaItem.create)
    ..aOM<LinkPreview>(14, _omitFieldNames ? '' : 'linkPreview',
        subBuilder: LinkPreview.create)
    ..aOB(15, _omitFieldNames ? '' : 'edited')
    ..aOB(16, _omitFieldNames ? '' : 'viewerBookmarked')
    ..a<$fixnum.Int64>(17, _omitFieldNames ? '' : 'views', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<Post>(18, _omitFieldNames ? '' : 'quotedPost',
        subBuilder: Post.create)
    ..aOM<Poll>(19, _omitFieldNames ? '' : 'poll', subBuilder: Poll.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Post clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Post copyWith(void Function(Post) updates) =>
      super.copyWith((message) => updates(message as Post)) as Post;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Post create() => Post._();
  @$core.override
  Post createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Post getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Post>(create);
  static Post? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get postId => $_getSZ(0);
  @$pb.TagNumber(1)
  set postId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => $_clearField(1);

  @$pb.TagNumber(2)
  Actor get author => $_getN(1);
  @$pb.TagNumber(2)
  set author(Actor value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAuthor() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthor() => $_clearField(2);
  @$pb.TagNumber(2)
  Actor ensureAuthor() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get text => $_getSZ(2);
  @$pb.TagNumber(3)
  set text($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(3)
  void clearText() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get createdAt => $_getI64(3);
  @$pb.TagNumber(4)
  set createdAt($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedAt() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get replyToPostId => $_getSZ(4);
  @$pb.TagNumber(5)
  set replyToPostId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasReplyToPostId() => $_has(4);
  @$pb.TagNumber(5)
  void clearReplyToPostId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get rootPostId => $_getSZ(5);
  @$pb.TagNumber(6)
  set rootPostId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRootPostId() => $_has(5);
  @$pb.TagNumber(6)
  void clearRootPostId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get likeCount => $_getIZ(6);
  @$pb.TagNumber(7)
  set likeCount($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasLikeCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearLikeCount() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get repostCount => $_getIZ(7);
  @$pb.TagNumber(8)
  set repostCount($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasRepostCount() => $_has(7);
  @$pb.TagNumber(8)
  void clearRepostCount() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get replyCount => $_getIZ(8);
  @$pb.TagNumber(9)
  set replyCount($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasReplyCount() => $_has(8);
  @$pb.TagNumber(9)
  void clearReplyCount() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get viewerLiked => $_getBF(9);
  @$pb.TagNumber(10)
  set viewerLiked($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasViewerLiked() => $_has(9);
  @$pb.TagNumber(10)
  void clearViewerLiked() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.bool get viewerReposted => $_getBF(10);
  @$pb.TagNumber(11)
  set viewerReposted($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasViewerReposted() => $_has(10);
  @$pb.TagNumber(11)
  void clearViewerReposted() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get replyToHandle => $_getSZ(11);
  @$pb.TagNumber(12)
  set replyToHandle($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasReplyToHandle() => $_has(11);
  @$pb.TagNumber(12)
  void clearReplyToHandle() => $_clearField(12);

  @$pb.TagNumber(13)
  $pb.PbList<MediaItem> get media => $_getList(12);

  @$pb.TagNumber(14)
  LinkPreview get linkPreview => $_getN(13);
  @$pb.TagNumber(14)
  set linkPreview(LinkPreview value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasLinkPreview() => $_has(13);
  @$pb.TagNumber(14)
  void clearLinkPreview() => $_clearField(14);
  @$pb.TagNumber(14)
  LinkPreview ensureLinkPreview() => $_ensure(13);

  @$pb.TagNumber(15)
  $core.bool get edited => $_getBF(14);
  @$pb.TagNumber(15)
  set edited($core.bool value) => $_setBool(14, value);
  @$pb.TagNumber(15)
  $core.bool hasEdited() => $_has(14);
  @$pb.TagNumber(15)
  void clearEdited() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.bool get viewerBookmarked => $_getBF(15);
  @$pb.TagNumber(16)
  set viewerBookmarked($core.bool value) => $_setBool(15, value);
  @$pb.TagNumber(16)
  $core.bool hasViewerBookmarked() => $_has(15);
  @$pb.TagNumber(16)
  void clearViewerBookmarked() => $_clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get views => $_getI64(16);
  @$pb.TagNumber(17)
  set views($fixnum.Int64 value) => $_setInt64(16, value);
  @$pb.TagNumber(17)
  $core.bool hasViews() => $_has(16);
  @$pb.TagNumber(17)
  void clearViews() => $_clearField(17);

  @$pb.TagNumber(18)
  Post get quotedPost => $_getN(17);
  @$pb.TagNumber(18)
  set quotedPost(Post value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasQuotedPost() => $_has(17);
  @$pb.TagNumber(18)
  void clearQuotedPost() => $_clearField(18);
  @$pb.TagNumber(18)
  Post ensureQuotedPost() => $_ensure(17);

  @$pb.TagNumber(19)
  Poll get poll => $_getN(18);
  @$pb.TagNumber(19)
  set poll(Poll value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasPoll() => $_has(18);
  @$pb.TagNumber(19)
  void clearPoll() => $_clearField(19);
  @$pb.TagNumber(19)
  Poll ensurePoll() => $_ensure(18);
}

class FeedItem extends $pb.GeneratedMessage {
  factory FeedItem({
    Post? post,
    $core.String? repostedByHandle,
    $fixnum.Int64? sortAt,
  }) {
    final result = create();
    if (post != null) result.post = post;
    if (repostedByHandle != null) result.repostedByHandle = repostedByHandle;
    if (sortAt != null) result.sortAt = sortAt;
    return result;
  }

  FeedItem._();

  factory FeedItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeedItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeedItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<Post>(1, _omitFieldNames ? '' : 'post', subBuilder: Post.create)
    ..aOS(2, _omitFieldNames ? '' : 'repostedByHandle')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'sortAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedItem copyWith(void Function(FeedItem) updates) =>
      super.copyWith((message) => updates(message as FeedItem)) as FeedItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedItem create() => FeedItem._();
  @$core.override
  FeedItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeedItem getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedItem>(create);
  static FeedItem? _defaultInstance;

  @$pb.TagNumber(1)
  Post get post => $_getN(0);
  @$pb.TagNumber(1)
  set post(Post value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPost() => $_has(0);
  @$pb.TagNumber(1)
  void clearPost() => $_clearField(1);
  @$pb.TagNumber(1)
  Post ensurePost() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get repostedByHandle => $_getSZ(1);
  @$pb.TagNumber(2)
  set repostedByHandle($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepostedByHandle() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepostedByHandle() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get sortAt => $_getI64(2);
  @$pb.TagNumber(3)
  set sortAt($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSortAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearSortAt() => $_clearField(3);
}

class Notification extends $pb.GeneratedMessage {
  factory Notification({
    $core.String? id,
    $core.String? kind,
    Actor? actor,
    $core.String? postId,
    $core.String? postText,
    $fixnum.Int64? createdAt,
    $core.bool? read,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (kind != null) result.kind = kind;
    if (actor != null) result.actor = actor;
    if (postId != null) result.postId = postId;
    if (postText != null) result.postText = postText;
    if (createdAt != null) result.createdAt = createdAt;
    if (read != null) result.read = read;
    return result;
  }

  Notification._();

  factory Notification.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Notification.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Notification',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'kind')
    ..aOM<Actor>(3, _omitFieldNames ? '' : 'actor', subBuilder: Actor.create)
    ..aOS(4, _omitFieldNames ? '' : 'postId')
    ..aOS(5, _omitFieldNames ? '' : 'postText')
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'createdAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(7, _omitFieldNames ? '' : 'read')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Notification clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Notification copyWith(void Function(Notification) updates) =>
      super.copyWith((message) => updates(message as Notification))
          as Notification;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Notification create() => Notification._();
  @$core.override
  Notification createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Notification getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Notification>(create);
  static Notification? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get kind => $_getSZ(1);
  @$pb.TagNumber(2)
  set kind($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => $_clearField(2);

  @$pb.TagNumber(3)
  Actor get actor => $_getN(2);
  @$pb.TagNumber(3)
  set actor(Actor value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasActor() => $_has(2);
  @$pb.TagNumber(3)
  void clearActor() => $_clearField(3);
  @$pb.TagNumber(3)
  Actor ensureActor() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get postId => $_getSZ(3);
  @$pb.TagNumber(4)
  set postId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPostId() => $_has(3);
  @$pb.TagNumber(4)
  void clearPostId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get postText => $_getSZ(4);
  @$pb.TagNumber(5)
  set postText($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPostText() => $_has(4);
  @$pb.TagNumber(5)
  void clearPostText() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get createdAt => $_getI64(5);
  @$pb.TagNumber(6)
  set createdAt($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get read => $_getBF(6);
  @$pb.TagNumber(7)
  set read($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasRead() => $_has(6);
  @$pb.TagNumber(7)
  void clearRead() => $_clearField(7);
}

enum ClientRequest_Payload {
  ping,
  auth,
  getBalance,
  transfer,
  getHistory,
  getProfile,
  closeSession,
  register,
  createPost,
  getFeed,
  like,
  repost,
  follow,
  getActor,
  getThread,
  searchActors,
  getNotifications,
  updateProfile,
  uploadMedia,
  getTrends,
  getFollows,
  editPost,
  deletePost,
  bookmark,
  pinPost,
  votePoll,
  searchPosts,
  sendDm,
  getConversations,
  getMessages,
  moderate,
  securityStatus,
  passkeyRegister,
  passkeyList,
  passkeyDelete,
  passkeyLoginBegin,
  passkeyLoginFinish,
  totpEnrollBegin,
  totpEnrollFinish,
  totpDisable,
  passkeyRegBegin,
  passkeyRegFinish,
  passkeyAuthBegin,
  passkeyAuthFinish,
  getModerationList,
  notSet
}

/// RPC Client Calls (Requests)
class ClientRequest extends $pb.GeneratedMessage {
  factory ClientRequest({
    $fixnum.Int64? requestId,
    PingCall? ping,
    AuthCall? auth,
    GetBalanceCall? getBalance,
    TransferCall? transfer,
    GetHistoryCall? getHistory,
    GetProfileCall? getProfile,
    CloseSessionCall? closeSession,
    RegisterCall? register,
    CreatePostCall? createPost,
    GetFeedCall? getFeed,
    LikeCall? like,
    RepostCall? repost,
    FollowCall? follow,
    GetActorCall? getActor,
    GetThreadCall? getThread,
    SearchActorsCall? searchActors,
    GetNotificationsCall? getNotifications,
    UpdateProfileCall? updateProfile,
    UploadMediaCall? uploadMedia,
    GetTrendsCall? getTrends,
    GetFollowsCall? getFollows,
    EditPostCall? editPost,
    DeletePostCall? deletePost,
    BookmarkCall? bookmark,
    PinPostCall? pinPost,
    VotePollCall? votePoll,
    SearchPostsCall? searchPosts,
    SendDmCall? sendDm,
    GetConversationsCall? getConversations,
    GetMessagesCall? getMessages,
    ModerateCall? moderate,
    SecurityStatusCall? securityStatus,
    PasskeyRegisterCall? passkeyRegister,
    PasskeyListCall? passkeyList,
    PasskeyDeleteCall? passkeyDelete,
    PasskeyLoginBeginCall? passkeyLoginBegin,
    PasskeyLoginFinishCall? passkeyLoginFinish,
    TotpEnrollBeginCall? totpEnrollBegin,
    TotpEnrollFinishCall? totpEnrollFinish,
    TotpDisableCall? totpDisable,
    PasskeyRegBeginCall? passkeyRegBegin,
    PasskeyRegFinishCall? passkeyRegFinish,
    PasskeyAuthBeginCall? passkeyAuthBegin,
    PasskeyAuthFinishCall? passkeyAuthFinish,
    GetModerationListCall? getModerationList,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (ping != null) result.ping = ping;
    if (auth != null) result.auth = auth;
    if (getBalance != null) result.getBalance = getBalance;
    if (transfer != null) result.transfer = transfer;
    if (getHistory != null) result.getHistory = getHistory;
    if (getProfile != null) result.getProfile = getProfile;
    if (closeSession != null) result.closeSession = closeSession;
    if (register != null) result.register = register;
    if (createPost != null) result.createPost = createPost;
    if (getFeed != null) result.getFeed = getFeed;
    if (like != null) result.like = like;
    if (repost != null) result.repost = repost;
    if (follow != null) result.follow = follow;
    if (getActor != null) result.getActor = getActor;
    if (getThread != null) result.getThread = getThread;
    if (searchActors != null) result.searchActors = searchActors;
    if (getNotifications != null) result.getNotifications = getNotifications;
    if (updateProfile != null) result.updateProfile = updateProfile;
    if (uploadMedia != null) result.uploadMedia = uploadMedia;
    if (getTrends != null) result.getTrends = getTrends;
    if (getFollows != null) result.getFollows = getFollows;
    if (editPost != null) result.editPost = editPost;
    if (deletePost != null) result.deletePost = deletePost;
    if (bookmark != null) result.bookmark = bookmark;
    if (pinPost != null) result.pinPost = pinPost;
    if (votePoll != null) result.votePoll = votePoll;
    if (searchPosts != null) result.searchPosts = searchPosts;
    if (sendDm != null) result.sendDm = sendDm;
    if (getConversations != null) result.getConversations = getConversations;
    if (getMessages != null) result.getMessages = getMessages;
    if (moderate != null) result.moderate = moderate;
    if (securityStatus != null) result.securityStatus = securityStatus;
    if (passkeyRegister != null) result.passkeyRegister = passkeyRegister;
    if (passkeyList != null) result.passkeyList = passkeyList;
    if (passkeyDelete != null) result.passkeyDelete = passkeyDelete;
    if (passkeyLoginBegin != null) result.passkeyLoginBegin = passkeyLoginBegin;
    if (passkeyLoginFinish != null)
      result.passkeyLoginFinish = passkeyLoginFinish;
    if (totpEnrollBegin != null) result.totpEnrollBegin = totpEnrollBegin;
    if (totpEnrollFinish != null) result.totpEnrollFinish = totpEnrollFinish;
    if (totpDisable != null) result.totpDisable = totpDisable;
    if (passkeyRegBegin != null) result.passkeyRegBegin = passkeyRegBegin;
    if (passkeyRegFinish != null) result.passkeyRegFinish = passkeyRegFinish;
    if (passkeyAuthBegin != null) result.passkeyAuthBegin = passkeyAuthBegin;
    if (passkeyAuthFinish != null) result.passkeyAuthFinish = passkeyAuthFinish;
    if (getModerationList != null) result.getModerationList = getModerationList;
    return result;
  }

  ClientRequest._();

  factory ClientRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClientRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ClientRequest_Payload>
      _ClientRequest_PayloadByTag = {
    2: ClientRequest_Payload.ping,
    3: ClientRequest_Payload.auth,
    4: ClientRequest_Payload.getBalance,
    5: ClientRequest_Payload.transfer,
    6: ClientRequest_Payload.getHistory,
    7: ClientRequest_Payload.getProfile,
    8: ClientRequest_Payload.closeSession,
    9: ClientRequest_Payload.register,
    10: ClientRequest_Payload.createPost,
    11: ClientRequest_Payload.getFeed,
    12: ClientRequest_Payload.like,
    13: ClientRequest_Payload.repost,
    14: ClientRequest_Payload.follow,
    15: ClientRequest_Payload.getActor,
    16: ClientRequest_Payload.getThread,
    17: ClientRequest_Payload.searchActors,
    18: ClientRequest_Payload.getNotifications,
    19: ClientRequest_Payload.updateProfile,
    20: ClientRequest_Payload.uploadMedia,
    21: ClientRequest_Payload.getTrends,
    22: ClientRequest_Payload.getFollows,
    23: ClientRequest_Payload.editPost,
    24: ClientRequest_Payload.deletePost,
    25: ClientRequest_Payload.bookmark,
    26: ClientRequest_Payload.pinPost,
    27: ClientRequest_Payload.votePoll,
    28: ClientRequest_Payload.searchPosts,
    29: ClientRequest_Payload.sendDm,
    30: ClientRequest_Payload.getConversations,
    31: ClientRequest_Payload.getMessages,
    32: ClientRequest_Payload.moderate,
    33: ClientRequest_Payload.securityStatus,
    34: ClientRequest_Payload.passkeyRegister,
    35: ClientRequest_Payload.passkeyList,
    36: ClientRequest_Payload.passkeyDelete,
    37: ClientRequest_Payload.passkeyLoginBegin,
    38: ClientRequest_Payload.passkeyLoginFinish,
    39: ClientRequest_Payload.totpEnrollBegin,
    40: ClientRequest_Payload.totpEnrollFinish,
    41: ClientRequest_Payload.totpDisable,
    42: ClientRequest_Payload.passkeyRegBegin,
    43: ClientRequest_Payload.passkeyRegFinish,
    44: ClientRequest_Payload.passkeyAuthBegin,
    45: ClientRequest_Payload.passkeyAuthFinish,
    46: ClientRequest_Payload.getModerationList,
    0: ClientRequest_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClientRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..oo(0, [
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      11,
      12,
      13,
      14,
      15,
      16,
      17,
      18,
      19,
      20,
      21,
      22,
      23,
      24,
      25,
      26,
      27,
      28,
      29,
      30,
      31,
      32,
      33,
      34,
      35,
      36,
      37,
      38,
      39,
      40,
      41,
      42,
      43,
      44,
      45,
      46
    ])
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<PingCall>(2, _omitFieldNames ? '' : 'ping',
        subBuilder: PingCall.create)
    ..aOM<AuthCall>(3, _omitFieldNames ? '' : 'auth',
        subBuilder: AuthCall.create)
    ..aOM<GetBalanceCall>(4, _omitFieldNames ? '' : 'getBalance',
        subBuilder: GetBalanceCall.create)
    ..aOM<TransferCall>(5, _omitFieldNames ? '' : 'transfer',
        subBuilder: TransferCall.create)
    ..aOM<GetHistoryCall>(6, _omitFieldNames ? '' : 'getHistory',
        subBuilder: GetHistoryCall.create)
    ..aOM<GetProfileCall>(7, _omitFieldNames ? '' : 'getProfile',
        subBuilder: GetProfileCall.create)
    ..aOM<CloseSessionCall>(8, _omitFieldNames ? '' : 'closeSession',
        subBuilder: CloseSessionCall.create)
    ..aOM<RegisterCall>(9, _omitFieldNames ? '' : 'register',
        subBuilder: RegisterCall.create)
    ..aOM<CreatePostCall>(10, _omitFieldNames ? '' : 'createPost',
        subBuilder: CreatePostCall.create)
    ..aOM<GetFeedCall>(11, _omitFieldNames ? '' : 'getFeed',
        subBuilder: GetFeedCall.create)
    ..aOM<LikeCall>(12, _omitFieldNames ? '' : 'like',
        subBuilder: LikeCall.create)
    ..aOM<RepostCall>(13, _omitFieldNames ? '' : 'repost',
        subBuilder: RepostCall.create)
    ..aOM<FollowCall>(14, _omitFieldNames ? '' : 'follow',
        subBuilder: FollowCall.create)
    ..aOM<GetActorCall>(15, _omitFieldNames ? '' : 'getActor',
        subBuilder: GetActorCall.create)
    ..aOM<GetThreadCall>(16, _omitFieldNames ? '' : 'getThread',
        subBuilder: GetThreadCall.create)
    ..aOM<SearchActorsCall>(17, _omitFieldNames ? '' : 'searchActors',
        subBuilder: SearchActorsCall.create)
    ..aOM<GetNotificationsCall>(18, _omitFieldNames ? '' : 'getNotifications',
        subBuilder: GetNotificationsCall.create)
    ..aOM<UpdateProfileCall>(19, _omitFieldNames ? '' : 'updateProfile',
        subBuilder: UpdateProfileCall.create)
    ..aOM<UploadMediaCall>(20, _omitFieldNames ? '' : 'uploadMedia',
        subBuilder: UploadMediaCall.create)
    ..aOM<GetTrendsCall>(21, _omitFieldNames ? '' : 'getTrends',
        subBuilder: GetTrendsCall.create)
    ..aOM<GetFollowsCall>(22, _omitFieldNames ? '' : 'getFollows',
        subBuilder: GetFollowsCall.create)
    ..aOM<EditPostCall>(23, _omitFieldNames ? '' : 'editPost',
        subBuilder: EditPostCall.create)
    ..aOM<DeletePostCall>(24, _omitFieldNames ? '' : 'deletePost',
        subBuilder: DeletePostCall.create)
    ..aOM<BookmarkCall>(25, _omitFieldNames ? '' : 'bookmark',
        subBuilder: BookmarkCall.create)
    ..aOM<PinPostCall>(26, _omitFieldNames ? '' : 'pinPost',
        subBuilder: PinPostCall.create)
    ..aOM<VotePollCall>(27, _omitFieldNames ? '' : 'votePoll',
        subBuilder: VotePollCall.create)
    ..aOM<SearchPostsCall>(28, _omitFieldNames ? '' : 'searchPosts',
        subBuilder: SearchPostsCall.create)
    ..aOM<SendDmCall>(29, _omitFieldNames ? '' : 'sendDm',
        subBuilder: SendDmCall.create)
    ..aOM<GetConversationsCall>(30, _omitFieldNames ? '' : 'getConversations',
        subBuilder: GetConversationsCall.create)
    ..aOM<GetMessagesCall>(31, _omitFieldNames ? '' : 'getMessages',
        subBuilder: GetMessagesCall.create)
    ..aOM<ModerateCall>(32, _omitFieldNames ? '' : 'moderate',
        subBuilder: ModerateCall.create)
    ..aOM<SecurityStatusCall>(33, _omitFieldNames ? '' : 'securityStatus',
        subBuilder: SecurityStatusCall.create)
    ..aOM<PasskeyRegisterCall>(34, _omitFieldNames ? '' : 'passkeyRegister',
        subBuilder: PasskeyRegisterCall.create)
    ..aOM<PasskeyListCall>(35, _omitFieldNames ? '' : 'passkeyList',
        subBuilder: PasskeyListCall.create)
    ..aOM<PasskeyDeleteCall>(36, _omitFieldNames ? '' : 'passkeyDelete',
        subBuilder: PasskeyDeleteCall.create)
    ..aOM<PasskeyLoginBeginCall>(37, _omitFieldNames ? '' : 'passkeyLoginBegin',
        subBuilder: PasskeyLoginBeginCall.create)
    ..aOM<PasskeyLoginFinishCall>(
        38, _omitFieldNames ? '' : 'passkeyLoginFinish',
        subBuilder: PasskeyLoginFinishCall.create)
    ..aOM<TotpEnrollBeginCall>(39, _omitFieldNames ? '' : 'totpEnrollBegin',
        subBuilder: TotpEnrollBeginCall.create)
    ..aOM<TotpEnrollFinishCall>(40, _omitFieldNames ? '' : 'totpEnrollFinish',
        subBuilder: TotpEnrollFinishCall.create)
    ..aOM<TotpDisableCall>(41, _omitFieldNames ? '' : 'totpDisable',
        subBuilder: TotpDisableCall.create)
    ..aOM<PasskeyRegBeginCall>(42, _omitFieldNames ? '' : 'passkeyRegBegin',
        subBuilder: PasskeyRegBeginCall.create)
    ..aOM<PasskeyRegFinishCall>(43, _omitFieldNames ? '' : 'passkeyRegFinish',
        subBuilder: PasskeyRegFinishCall.create)
    ..aOM<PasskeyAuthBeginCall>(44, _omitFieldNames ? '' : 'passkeyAuthBegin',
        subBuilder: PasskeyAuthBeginCall.create)
    ..aOM<PasskeyAuthFinishCall>(45, _omitFieldNames ? '' : 'passkeyAuthFinish',
        subBuilder: PasskeyAuthFinishCall.create)
    ..aOM<GetModerationListCall>(46, _omitFieldNames ? '' : 'getModerationList',
        subBuilder: GetModerationListCall.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClientRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClientRequest copyWith(void Function(ClientRequest) updates) =>
      super.copyWith((message) => updates(message as ClientRequest))
          as ClientRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientRequest create() => ClientRequest._();
  @$core.override
  ClientRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ClientRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClientRequest>(create);
  static ClientRequest? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  @$pb.TagNumber(23)
  @$pb.TagNumber(24)
  @$pb.TagNumber(25)
  @$pb.TagNumber(26)
  @$pb.TagNumber(27)
  @$pb.TagNumber(28)
  @$pb.TagNumber(29)
  @$pb.TagNumber(30)
  @$pb.TagNumber(31)
  @$pb.TagNumber(32)
  @$pb.TagNumber(33)
  @$pb.TagNumber(34)
  @$pb.TagNumber(35)
  @$pb.TagNumber(36)
  @$pb.TagNumber(37)
  @$pb.TagNumber(38)
  @$pb.TagNumber(39)
  @$pb.TagNumber(40)
  @$pb.TagNumber(41)
  @$pb.TagNumber(42)
  @$pb.TagNumber(43)
  @$pb.TagNumber(44)
  @$pb.TagNumber(45)
  @$pb.TagNumber(46)
  ClientRequest_Payload whichPayload() =>
      _ClientRequest_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  @$pb.TagNumber(23)
  @$pb.TagNumber(24)
  @$pb.TagNumber(25)
  @$pb.TagNumber(26)
  @$pb.TagNumber(27)
  @$pb.TagNumber(28)
  @$pb.TagNumber(29)
  @$pb.TagNumber(30)
  @$pb.TagNumber(31)
  @$pb.TagNumber(32)
  @$pb.TagNumber(33)
  @$pb.TagNumber(34)
  @$pb.TagNumber(35)
  @$pb.TagNumber(36)
  @$pb.TagNumber(37)
  @$pb.TagNumber(38)
  @$pb.TagNumber(39)
  @$pb.TagNumber(40)
  @$pb.TagNumber(41)
  @$pb.TagNumber(42)
  @$pb.TagNumber(43)
  @$pb.TagNumber(44)
  @$pb.TagNumber(45)
  @$pb.TagNumber(46)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  @$pb.TagNumber(2)
  PingCall get ping => $_getN(1);
  @$pb.TagNumber(2)
  set ping(PingCall value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPing() => $_has(1);
  @$pb.TagNumber(2)
  void clearPing() => $_clearField(2);
  @$pb.TagNumber(2)
  PingCall ensurePing() => $_ensure(1);

  @$pb.TagNumber(3)
  AuthCall get auth => $_getN(2);
  @$pb.TagNumber(3)
  set auth(AuthCall value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAuth() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuth() => $_clearField(3);
  @$pb.TagNumber(3)
  AuthCall ensureAuth() => $_ensure(2);

  @$pb.TagNumber(4)
  GetBalanceCall get getBalance => $_getN(3);
  @$pb.TagNumber(4)
  set getBalance(GetBalanceCall value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasGetBalance() => $_has(3);
  @$pb.TagNumber(4)
  void clearGetBalance() => $_clearField(4);
  @$pb.TagNumber(4)
  GetBalanceCall ensureGetBalance() => $_ensure(3);

  @$pb.TagNumber(5)
  TransferCall get transfer => $_getN(4);
  @$pb.TagNumber(5)
  set transfer(TransferCall value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasTransfer() => $_has(4);
  @$pb.TagNumber(5)
  void clearTransfer() => $_clearField(5);
  @$pb.TagNumber(5)
  TransferCall ensureTransfer() => $_ensure(4);

  @$pb.TagNumber(6)
  GetHistoryCall get getHistory => $_getN(5);
  @$pb.TagNumber(6)
  set getHistory(GetHistoryCall value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasGetHistory() => $_has(5);
  @$pb.TagNumber(6)
  void clearGetHistory() => $_clearField(6);
  @$pb.TagNumber(6)
  GetHistoryCall ensureGetHistory() => $_ensure(5);

  @$pb.TagNumber(7)
  GetProfileCall get getProfile => $_getN(6);
  @$pb.TagNumber(7)
  set getProfile(GetProfileCall value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasGetProfile() => $_has(6);
  @$pb.TagNumber(7)
  void clearGetProfile() => $_clearField(7);
  @$pb.TagNumber(7)
  GetProfileCall ensureGetProfile() => $_ensure(6);

  @$pb.TagNumber(8)
  CloseSessionCall get closeSession => $_getN(7);
  @$pb.TagNumber(8)
  set closeSession(CloseSessionCall value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasCloseSession() => $_has(7);
  @$pb.TagNumber(8)
  void clearCloseSession() => $_clearField(8);
  @$pb.TagNumber(8)
  CloseSessionCall ensureCloseSession() => $_ensure(7);

  /// Social plane
  @$pb.TagNumber(9)
  RegisterCall get register => $_getN(8);
  @$pb.TagNumber(9)
  set register(RegisterCall value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasRegister() => $_has(8);
  @$pb.TagNumber(9)
  void clearRegister() => $_clearField(9);
  @$pb.TagNumber(9)
  RegisterCall ensureRegister() => $_ensure(8);

  @$pb.TagNumber(10)
  CreatePostCall get createPost => $_getN(9);
  @$pb.TagNumber(10)
  set createPost(CreatePostCall value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasCreatePost() => $_has(9);
  @$pb.TagNumber(10)
  void clearCreatePost() => $_clearField(10);
  @$pb.TagNumber(10)
  CreatePostCall ensureCreatePost() => $_ensure(9);

  @$pb.TagNumber(11)
  GetFeedCall get getFeed => $_getN(10);
  @$pb.TagNumber(11)
  set getFeed(GetFeedCall value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasGetFeed() => $_has(10);
  @$pb.TagNumber(11)
  void clearGetFeed() => $_clearField(11);
  @$pb.TagNumber(11)
  GetFeedCall ensureGetFeed() => $_ensure(10);

  @$pb.TagNumber(12)
  LikeCall get like => $_getN(11);
  @$pb.TagNumber(12)
  set like(LikeCall value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasLike() => $_has(11);
  @$pb.TagNumber(12)
  void clearLike() => $_clearField(12);
  @$pb.TagNumber(12)
  LikeCall ensureLike() => $_ensure(11);

  @$pb.TagNumber(13)
  RepostCall get repost => $_getN(12);
  @$pb.TagNumber(13)
  set repost(RepostCall value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasRepost() => $_has(12);
  @$pb.TagNumber(13)
  void clearRepost() => $_clearField(13);
  @$pb.TagNumber(13)
  RepostCall ensureRepost() => $_ensure(12);

  @$pb.TagNumber(14)
  FollowCall get follow => $_getN(13);
  @$pb.TagNumber(14)
  set follow(FollowCall value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasFollow() => $_has(13);
  @$pb.TagNumber(14)
  void clearFollow() => $_clearField(14);
  @$pb.TagNumber(14)
  FollowCall ensureFollow() => $_ensure(13);

  @$pb.TagNumber(15)
  GetActorCall get getActor => $_getN(14);
  @$pb.TagNumber(15)
  set getActor(GetActorCall value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasGetActor() => $_has(14);
  @$pb.TagNumber(15)
  void clearGetActor() => $_clearField(15);
  @$pb.TagNumber(15)
  GetActorCall ensureGetActor() => $_ensure(14);

  @$pb.TagNumber(16)
  GetThreadCall get getThread => $_getN(15);
  @$pb.TagNumber(16)
  set getThread(GetThreadCall value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasGetThread() => $_has(15);
  @$pb.TagNumber(16)
  void clearGetThread() => $_clearField(16);
  @$pb.TagNumber(16)
  GetThreadCall ensureGetThread() => $_ensure(15);

  @$pb.TagNumber(17)
  SearchActorsCall get searchActors => $_getN(16);
  @$pb.TagNumber(17)
  set searchActors(SearchActorsCall value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasSearchActors() => $_has(16);
  @$pb.TagNumber(17)
  void clearSearchActors() => $_clearField(17);
  @$pb.TagNumber(17)
  SearchActorsCall ensureSearchActors() => $_ensure(16);

  @$pb.TagNumber(18)
  GetNotificationsCall get getNotifications => $_getN(17);
  @$pb.TagNumber(18)
  set getNotifications(GetNotificationsCall value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasGetNotifications() => $_has(17);
  @$pb.TagNumber(18)
  void clearGetNotifications() => $_clearField(18);
  @$pb.TagNumber(18)
  GetNotificationsCall ensureGetNotifications() => $_ensure(17);

  @$pb.TagNumber(19)
  UpdateProfileCall get updateProfile => $_getN(18);
  @$pb.TagNumber(19)
  set updateProfile(UpdateProfileCall value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasUpdateProfile() => $_has(18);
  @$pb.TagNumber(19)
  void clearUpdateProfile() => $_clearField(19);
  @$pb.TagNumber(19)
  UpdateProfileCall ensureUpdateProfile() => $_ensure(18);

  @$pb.TagNumber(20)
  UploadMediaCall get uploadMedia => $_getN(19);
  @$pb.TagNumber(20)
  set uploadMedia(UploadMediaCall value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasUploadMedia() => $_has(19);
  @$pb.TagNumber(20)
  void clearUploadMedia() => $_clearField(20);
  @$pb.TagNumber(20)
  UploadMediaCall ensureUploadMedia() => $_ensure(19);

  @$pb.TagNumber(21)
  GetTrendsCall get getTrends => $_getN(20);
  @$pb.TagNumber(21)
  set getTrends(GetTrendsCall value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasGetTrends() => $_has(20);
  @$pb.TagNumber(21)
  void clearGetTrends() => $_clearField(21);
  @$pb.TagNumber(21)
  GetTrendsCall ensureGetTrends() => $_ensure(20);

  @$pb.TagNumber(22)
  GetFollowsCall get getFollows => $_getN(21);
  @$pb.TagNumber(22)
  set getFollows(GetFollowsCall value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasGetFollows() => $_has(21);
  @$pb.TagNumber(22)
  void clearGetFollows() => $_clearField(22);
  @$pb.TagNumber(22)
  GetFollowsCall ensureGetFollows() => $_ensure(21);

  @$pb.TagNumber(23)
  EditPostCall get editPost => $_getN(22);
  @$pb.TagNumber(23)
  set editPost(EditPostCall value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasEditPost() => $_has(22);
  @$pb.TagNumber(23)
  void clearEditPost() => $_clearField(23);
  @$pb.TagNumber(23)
  EditPostCall ensureEditPost() => $_ensure(22);

  @$pb.TagNumber(24)
  DeletePostCall get deletePost => $_getN(23);
  @$pb.TagNumber(24)
  set deletePost(DeletePostCall value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasDeletePost() => $_has(23);
  @$pb.TagNumber(24)
  void clearDeletePost() => $_clearField(24);
  @$pb.TagNumber(24)
  DeletePostCall ensureDeletePost() => $_ensure(23);

  @$pb.TagNumber(25)
  BookmarkCall get bookmark => $_getN(24);
  @$pb.TagNumber(25)
  set bookmark(BookmarkCall value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasBookmark() => $_has(24);
  @$pb.TagNumber(25)
  void clearBookmark() => $_clearField(25);
  @$pb.TagNumber(25)
  BookmarkCall ensureBookmark() => $_ensure(24);

  @$pb.TagNumber(26)
  PinPostCall get pinPost => $_getN(25);
  @$pb.TagNumber(26)
  set pinPost(PinPostCall value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasPinPost() => $_has(25);
  @$pb.TagNumber(26)
  void clearPinPost() => $_clearField(26);
  @$pb.TagNumber(26)
  PinPostCall ensurePinPost() => $_ensure(25);

  @$pb.TagNumber(27)
  VotePollCall get votePoll => $_getN(26);
  @$pb.TagNumber(27)
  set votePoll(VotePollCall value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasVotePoll() => $_has(26);
  @$pb.TagNumber(27)
  void clearVotePoll() => $_clearField(27);
  @$pb.TagNumber(27)
  VotePollCall ensureVotePoll() => $_ensure(26);

  @$pb.TagNumber(28)
  SearchPostsCall get searchPosts => $_getN(27);
  @$pb.TagNumber(28)
  set searchPosts(SearchPostsCall value) => $_setField(28, value);
  @$pb.TagNumber(28)
  $core.bool hasSearchPosts() => $_has(27);
  @$pb.TagNumber(28)
  void clearSearchPosts() => $_clearField(28);
  @$pb.TagNumber(28)
  SearchPostsCall ensureSearchPosts() => $_ensure(27);

  @$pb.TagNumber(29)
  SendDmCall get sendDm => $_getN(28);
  @$pb.TagNumber(29)
  set sendDm(SendDmCall value) => $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasSendDm() => $_has(28);
  @$pb.TagNumber(29)
  void clearSendDm() => $_clearField(29);
  @$pb.TagNumber(29)
  SendDmCall ensureSendDm() => $_ensure(28);

  @$pb.TagNumber(30)
  GetConversationsCall get getConversations => $_getN(29);
  @$pb.TagNumber(30)
  set getConversations(GetConversationsCall value) => $_setField(30, value);
  @$pb.TagNumber(30)
  $core.bool hasGetConversations() => $_has(29);
  @$pb.TagNumber(30)
  void clearGetConversations() => $_clearField(30);
  @$pb.TagNumber(30)
  GetConversationsCall ensureGetConversations() => $_ensure(29);

  @$pb.TagNumber(31)
  GetMessagesCall get getMessages => $_getN(30);
  @$pb.TagNumber(31)
  set getMessages(GetMessagesCall value) => $_setField(31, value);
  @$pb.TagNumber(31)
  $core.bool hasGetMessages() => $_has(30);
  @$pb.TagNumber(31)
  void clearGetMessages() => $_clearField(31);
  @$pb.TagNumber(31)
  GetMessagesCall ensureGetMessages() => $_ensure(30);

  @$pb.TagNumber(32)
  ModerateCall get moderate => $_getN(31);
  @$pb.TagNumber(32)
  set moderate(ModerateCall value) => $_setField(32, value);
  @$pb.TagNumber(32)
  $core.bool hasModerate() => $_has(31);
  @$pb.TagNumber(32)
  void clearModerate() => $_clearField(32);
  @$pb.TagNumber(32)
  ModerateCall ensureModerate() => $_ensure(31);

  /// Account security plane
  @$pb.TagNumber(33)
  SecurityStatusCall get securityStatus => $_getN(32);
  @$pb.TagNumber(33)
  set securityStatus(SecurityStatusCall value) => $_setField(33, value);
  @$pb.TagNumber(33)
  $core.bool hasSecurityStatus() => $_has(32);
  @$pb.TagNumber(33)
  void clearSecurityStatus() => $_clearField(33);
  @$pb.TagNumber(33)
  SecurityStatusCall ensureSecurityStatus() => $_ensure(32);

  @$pb.TagNumber(34)
  PasskeyRegisterCall get passkeyRegister => $_getN(33);
  @$pb.TagNumber(34)
  set passkeyRegister(PasskeyRegisterCall value) => $_setField(34, value);
  @$pb.TagNumber(34)
  $core.bool hasPasskeyRegister() => $_has(33);
  @$pb.TagNumber(34)
  void clearPasskeyRegister() => $_clearField(34);
  @$pb.TagNumber(34)
  PasskeyRegisterCall ensurePasskeyRegister() => $_ensure(33);

  @$pb.TagNumber(35)
  PasskeyListCall get passkeyList => $_getN(34);
  @$pb.TagNumber(35)
  set passkeyList(PasskeyListCall value) => $_setField(35, value);
  @$pb.TagNumber(35)
  $core.bool hasPasskeyList() => $_has(34);
  @$pb.TagNumber(35)
  void clearPasskeyList() => $_clearField(35);
  @$pb.TagNumber(35)
  PasskeyListCall ensurePasskeyList() => $_ensure(34);

  @$pb.TagNumber(36)
  PasskeyDeleteCall get passkeyDelete => $_getN(35);
  @$pb.TagNumber(36)
  set passkeyDelete(PasskeyDeleteCall value) => $_setField(36, value);
  @$pb.TagNumber(36)
  $core.bool hasPasskeyDelete() => $_has(35);
  @$pb.TagNumber(36)
  void clearPasskeyDelete() => $_clearField(36);
  @$pb.TagNumber(36)
  PasskeyDeleteCall ensurePasskeyDelete() => $_ensure(35);

  @$pb.TagNumber(37)
  PasskeyLoginBeginCall get passkeyLoginBegin => $_getN(36);
  @$pb.TagNumber(37)
  set passkeyLoginBegin(PasskeyLoginBeginCall value) => $_setField(37, value);
  @$pb.TagNumber(37)
  $core.bool hasPasskeyLoginBegin() => $_has(36);
  @$pb.TagNumber(37)
  void clearPasskeyLoginBegin() => $_clearField(37);
  @$pb.TagNumber(37)
  PasskeyLoginBeginCall ensurePasskeyLoginBegin() => $_ensure(36);

  @$pb.TagNumber(38)
  PasskeyLoginFinishCall get passkeyLoginFinish => $_getN(37);
  @$pb.TagNumber(38)
  set passkeyLoginFinish(PasskeyLoginFinishCall value) => $_setField(38, value);
  @$pb.TagNumber(38)
  $core.bool hasPasskeyLoginFinish() => $_has(37);
  @$pb.TagNumber(38)
  void clearPasskeyLoginFinish() => $_clearField(38);
  @$pb.TagNumber(38)
  PasskeyLoginFinishCall ensurePasskeyLoginFinish() => $_ensure(37);

  @$pb.TagNumber(39)
  TotpEnrollBeginCall get totpEnrollBegin => $_getN(38);
  @$pb.TagNumber(39)
  set totpEnrollBegin(TotpEnrollBeginCall value) => $_setField(39, value);
  @$pb.TagNumber(39)
  $core.bool hasTotpEnrollBegin() => $_has(38);
  @$pb.TagNumber(39)
  void clearTotpEnrollBegin() => $_clearField(39);
  @$pb.TagNumber(39)
  TotpEnrollBeginCall ensureTotpEnrollBegin() => $_ensure(38);

  @$pb.TagNumber(40)
  TotpEnrollFinishCall get totpEnrollFinish => $_getN(39);
  @$pb.TagNumber(40)
  set totpEnrollFinish(TotpEnrollFinishCall value) => $_setField(40, value);
  @$pb.TagNumber(40)
  $core.bool hasTotpEnrollFinish() => $_has(39);
  @$pb.TagNumber(40)
  void clearTotpEnrollFinish() => $_clearField(40);
  @$pb.TagNumber(40)
  TotpEnrollFinishCall ensureTotpEnrollFinish() => $_ensure(39);

  @$pb.TagNumber(41)
  TotpDisableCall get totpDisable => $_getN(40);
  @$pb.TagNumber(41)
  set totpDisable(TotpDisableCall value) => $_setField(41, value);
  @$pb.TagNumber(41)
  $core.bool hasTotpDisable() => $_has(40);
  @$pb.TagNumber(41)
  void clearTotpDisable() => $_clearField(41);
  @$pb.TagNumber(41)
  TotpDisableCall ensureTotpDisable() => $_ensure(40);

  /// Platform passkeys (WebAuthn)
  @$pb.TagNumber(42)
  PasskeyRegBeginCall get passkeyRegBegin => $_getN(41);
  @$pb.TagNumber(42)
  set passkeyRegBegin(PasskeyRegBeginCall value) => $_setField(42, value);
  @$pb.TagNumber(42)
  $core.bool hasPasskeyRegBegin() => $_has(41);
  @$pb.TagNumber(42)
  void clearPasskeyRegBegin() => $_clearField(42);
  @$pb.TagNumber(42)
  PasskeyRegBeginCall ensurePasskeyRegBegin() => $_ensure(41);

  @$pb.TagNumber(43)
  PasskeyRegFinishCall get passkeyRegFinish => $_getN(42);
  @$pb.TagNumber(43)
  set passkeyRegFinish(PasskeyRegFinishCall value) => $_setField(43, value);
  @$pb.TagNumber(43)
  $core.bool hasPasskeyRegFinish() => $_has(42);
  @$pb.TagNumber(43)
  void clearPasskeyRegFinish() => $_clearField(43);
  @$pb.TagNumber(43)
  PasskeyRegFinishCall ensurePasskeyRegFinish() => $_ensure(42);

  @$pb.TagNumber(44)
  PasskeyAuthBeginCall get passkeyAuthBegin => $_getN(43);
  @$pb.TagNumber(44)
  set passkeyAuthBegin(PasskeyAuthBeginCall value) => $_setField(44, value);
  @$pb.TagNumber(44)
  $core.bool hasPasskeyAuthBegin() => $_has(43);
  @$pb.TagNumber(44)
  void clearPasskeyAuthBegin() => $_clearField(44);
  @$pb.TagNumber(44)
  PasskeyAuthBeginCall ensurePasskeyAuthBegin() => $_ensure(43);

  @$pb.TagNumber(45)
  PasskeyAuthFinishCall get passkeyAuthFinish => $_getN(44);
  @$pb.TagNumber(45)
  set passkeyAuthFinish(PasskeyAuthFinishCall value) => $_setField(45, value);
  @$pb.TagNumber(45)
  $core.bool hasPasskeyAuthFinish() => $_has(44);
  @$pb.TagNumber(45)
  void clearPasskeyAuthFinish() => $_clearField(45);
  @$pb.TagNumber(45)
  PasskeyAuthFinishCall ensurePasskeyAuthFinish() => $_ensure(44);

  @$pb.TagNumber(46)
  GetModerationListCall get getModerationList => $_getN(45);
  @$pb.TagNumber(46)
  set getModerationList(GetModerationListCall value) => $_setField(46, value);
  @$pb.TagNumber(46)
  $core.bool hasGetModerationList() => $_has(45);
  @$pb.TagNumber(46)
  void clearGetModerationList() => $_clearField(46);
  @$pb.TagNumber(46)
  GetModerationListCall ensureGetModerationList() => $_ensure(45);
}

class GetModerationListCall extends $pb.GeneratedMessage {
  factory GetModerationListCall({
    ModerationKind? kind,
  }) {
    final result = create();
    if (kind != null) result.kind = kind;
    return result;
  }

  GetModerationListCall._();

  factory GetModerationListCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetModerationListCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetModerationListCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aE<ModerationKind>(1, _omitFieldNames ? '' : 'kind',
        enumValues: ModerationKind.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetModerationListCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetModerationListCall copyWith(
          void Function(GetModerationListCall) updates) =>
      super.copyWith((message) => updates(message as GetModerationListCall))
          as GetModerationListCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetModerationListCall create() => GetModerationListCall._();
  @$core.override
  GetModerationListCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetModerationListCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetModerationListCall>(create);
  static GetModerationListCall? _defaultInstance;

  @$pb.TagNumber(1)
  ModerationKind get kind => $_getN(0);
  @$pb.TagNumber(1)
  set kind(ModerationKind value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => $_clearField(1);
}

class PasskeyRegBeginCall extends $pb.GeneratedMessage {
  factory PasskeyRegBeginCall() => create();

  PasskeyRegBeginCall._();

  factory PasskeyRegBeginCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PasskeyRegBeginCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PasskeyRegBeginCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyRegBeginCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyRegBeginCall copyWith(void Function(PasskeyRegBeginCall) updates) =>
      super.copyWith((message) => updates(message as PasskeyRegBeginCall))
          as PasskeyRegBeginCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PasskeyRegBeginCall create() => PasskeyRegBeginCall._();
  @$core.override
  PasskeyRegBeginCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PasskeyRegBeginCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PasskeyRegBeginCall>(create);
  static PasskeyRegBeginCall? _defaultInstance;
}

class PasskeyRegFinishCall extends $pb.GeneratedMessage {
  factory PasskeyRegFinishCall({
    $core.String? responseJson,
    $core.String? deviceName,
  }) {
    final result = create();
    if (responseJson != null) result.responseJson = responseJson;
    if (deviceName != null) result.deviceName = deviceName;
    return result;
  }

  PasskeyRegFinishCall._();

  factory PasskeyRegFinishCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PasskeyRegFinishCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PasskeyRegFinishCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'responseJson')
    ..aOS(2, _omitFieldNames ? '' : 'deviceName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyRegFinishCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyRegFinishCall copyWith(void Function(PasskeyRegFinishCall) updates) =>
      super.copyWith((message) => updates(message as PasskeyRegFinishCall))
          as PasskeyRegFinishCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PasskeyRegFinishCall create() => PasskeyRegFinishCall._();
  @$core.override
  PasskeyRegFinishCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PasskeyRegFinishCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PasskeyRegFinishCall>(create);
  static PasskeyRegFinishCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get responseJson => $_getSZ(0);
  @$pb.TagNumber(1)
  set responseJson($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasResponseJson() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponseJson() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get deviceName => $_getSZ(1);
  @$pb.TagNumber(2)
  set deviceName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDeviceName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceName() => $_clearField(2);
}

class PasskeyAuthBeginCall extends $pb.GeneratedMessage {
  factory PasskeyAuthBeginCall() => create();

  PasskeyAuthBeginCall._();

  factory PasskeyAuthBeginCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PasskeyAuthBeginCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PasskeyAuthBeginCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyAuthBeginCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyAuthBeginCall copyWith(void Function(PasskeyAuthBeginCall) updates) =>
      super.copyWith((message) => updates(message as PasskeyAuthBeginCall))
          as PasskeyAuthBeginCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PasskeyAuthBeginCall create() => PasskeyAuthBeginCall._();
  @$core.override
  PasskeyAuthBeginCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PasskeyAuthBeginCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PasskeyAuthBeginCall>(create);
  static PasskeyAuthBeginCall? _defaultInstance;
}

class PasskeyAuthFinishCall extends $pb.GeneratedMessage {
  factory PasskeyAuthFinishCall({
    $core.String? flowId,
    $core.String? responseJson,
  }) {
    final result = create();
    if (flowId != null) result.flowId = flowId;
    if (responseJson != null) result.responseJson = responseJson;
    return result;
  }

  PasskeyAuthFinishCall._();

  factory PasskeyAuthFinishCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PasskeyAuthFinishCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PasskeyAuthFinishCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'flowId')
    ..aOS(2, _omitFieldNames ? '' : 'responseJson')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyAuthFinishCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyAuthFinishCall copyWith(
          void Function(PasskeyAuthFinishCall) updates) =>
      super.copyWith((message) => updates(message as PasskeyAuthFinishCall))
          as PasskeyAuthFinishCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PasskeyAuthFinishCall create() => PasskeyAuthFinishCall._();
  @$core.override
  PasskeyAuthFinishCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PasskeyAuthFinishCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PasskeyAuthFinishCall>(create);
  static PasskeyAuthFinishCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get flowId => $_getSZ(0);
  @$pb.TagNumber(1)
  set flowId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFlowId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFlowId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get responseJson => $_getSZ(1);
  @$pb.TagNumber(2)
  set responseJson($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasResponseJson() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseJson() => $_clearField(2);
}

/// ── Account security calls ─────────────────────────────────────────────────
class Passkey extends $pb.GeneratedMessage {
  factory Passkey({
    $core.String? credentialId,
    $core.String? deviceName,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? lastUsedAt,
  }) {
    final result = create();
    if (credentialId != null) result.credentialId = credentialId;
    if (deviceName != null) result.deviceName = deviceName;
    if (createdAt != null) result.createdAt = createdAt;
    if (lastUsedAt != null) result.lastUsedAt = lastUsedAt;
    return result;
  }

  Passkey._();

  factory Passkey.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Passkey.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Passkey',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'credentialId')
    ..aOS(2, _omitFieldNames ? '' : 'deviceName')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'createdAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'lastUsedAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Passkey clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Passkey copyWith(void Function(Passkey) updates) =>
      super.copyWith((message) => updates(message as Passkey)) as Passkey;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Passkey create() => Passkey._();
  @$core.override
  Passkey createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Passkey getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Passkey>(create);
  static Passkey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get credentialId => $_getSZ(0);
  @$pb.TagNumber(1)
  set credentialId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCredentialId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCredentialId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get deviceName => $_getSZ(1);
  @$pb.TagNumber(2)
  set deviceName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDeviceName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceName() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get createdAt => $_getI64(2);
  @$pb.TagNumber(3)
  set createdAt($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCreatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedAt() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get lastUsedAt => $_getI64(3);
  @$pb.TagNumber(4)
  set lastUsedAt($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLastUsedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastUsedAt() => $_clearField(4);
}

class SecurityStatusCall extends $pb.GeneratedMessage {
  factory SecurityStatusCall() => create();

  SecurityStatusCall._();

  factory SecurityStatusCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SecurityStatusCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SecurityStatusCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SecurityStatusCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SecurityStatusCall copyWith(void Function(SecurityStatusCall) updates) =>
      super.copyWith((message) => updates(message as SecurityStatusCall))
          as SecurityStatusCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SecurityStatusCall create() => SecurityStatusCall._();
  @$core.override
  SecurityStatusCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SecurityStatusCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SecurityStatusCall>(create);
  static SecurityStatusCall? _defaultInstance;
}

class PasskeyRegisterCall extends $pb.GeneratedMessage {
  factory PasskeyRegisterCall({
    $core.String? credentialId,
    $core.List<$core.int>? publicKey,
    $core.String? deviceName,
  }) {
    final result = create();
    if (credentialId != null) result.credentialId = credentialId;
    if (publicKey != null) result.publicKey = publicKey;
    if (deviceName != null) result.deviceName = deviceName;
    return result;
  }

  PasskeyRegisterCall._();

  factory PasskeyRegisterCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PasskeyRegisterCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PasskeyRegisterCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'credentialId')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'publicKey', $pb.PbFieldType.OY)
    ..aOS(3, _omitFieldNames ? '' : 'deviceName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyRegisterCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyRegisterCall copyWith(void Function(PasskeyRegisterCall) updates) =>
      super.copyWith((message) => updates(message as PasskeyRegisterCall))
          as PasskeyRegisterCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PasskeyRegisterCall create() => PasskeyRegisterCall._();
  @$core.override
  PasskeyRegisterCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PasskeyRegisterCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PasskeyRegisterCall>(create);
  static PasskeyRegisterCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get credentialId => $_getSZ(0);
  @$pb.TagNumber(1)
  set credentialId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCredentialId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCredentialId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get publicKey => $_getN(1);
  @$pb.TagNumber(2)
  set publicKey($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPublicKey() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get deviceName => $_getSZ(2);
  @$pb.TagNumber(3)
  set deviceName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDeviceName() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeviceName() => $_clearField(3);
}

class PasskeyListCall extends $pb.GeneratedMessage {
  factory PasskeyListCall() => create();

  PasskeyListCall._();

  factory PasskeyListCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PasskeyListCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PasskeyListCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyListCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyListCall copyWith(void Function(PasskeyListCall) updates) =>
      super.copyWith((message) => updates(message as PasskeyListCall))
          as PasskeyListCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PasskeyListCall create() => PasskeyListCall._();
  @$core.override
  PasskeyListCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PasskeyListCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PasskeyListCall>(create);
  static PasskeyListCall? _defaultInstance;
}

class PasskeyDeleteCall extends $pb.GeneratedMessage {
  factory PasskeyDeleteCall({
    $core.String? credentialId,
  }) {
    final result = create();
    if (credentialId != null) result.credentialId = credentialId;
    return result;
  }

  PasskeyDeleteCall._();

  factory PasskeyDeleteCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PasskeyDeleteCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PasskeyDeleteCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'credentialId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyDeleteCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyDeleteCall copyWith(void Function(PasskeyDeleteCall) updates) =>
      super.copyWith((message) => updates(message as PasskeyDeleteCall))
          as PasskeyDeleteCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PasskeyDeleteCall create() => PasskeyDeleteCall._();
  @$core.override
  PasskeyDeleteCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PasskeyDeleteCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PasskeyDeleteCall>(create);
  static PasskeyDeleteCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get credentialId => $_getSZ(0);
  @$pb.TagNumber(1)
  set credentialId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCredentialId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCredentialId() => $_clearField(1);
}

class PasskeyLoginBeginCall extends $pb.GeneratedMessage {
  factory PasskeyLoginBeginCall({
    $core.String? handle,
  }) {
    final result = create();
    if (handle != null) result.handle = handle;
    return result;
  }

  PasskeyLoginBeginCall._();

  factory PasskeyLoginBeginCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PasskeyLoginBeginCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PasskeyLoginBeginCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'handle')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyLoginBeginCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyLoginBeginCall copyWith(
          void Function(PasskeyLoginBeginCall) updates) =>
      super.copyWith((message) => updates(message as PasskeyLoginBeginCall))
          as PasskeyLoginBeginCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PasskeyLoginBeginCall create() => PasskeyLoginBeginCall._();
  @$core.override
  PasskeyLoginBeginCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PasskeyLoginBeginCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PasskeyLoginBeginCall>(create);
  static PasskeyLoginBeginCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get handle => $_getSZ(0);
  @$pb.TagNumber(1)
  set handle($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHandle() => $_has(0);
  @$pb.TagNumber(1)
  void clearHandle() => $_clearField(1);
}

class PasskeyLoginFinishCall extends $pb.GeneratedMessage {
  factory PasskeyLoginFinishCall({
    $core.String? handle,
    $core.String? credentialId,
    $core.List<$core.int>? signature,
  }) {
    final result = create();
    if (handle != null) result.handle = handle;
    if (credentialId != null) result.credentialId = credentialId;
    if (signature != null) result.signature = signature;
    return result;
  }

  PasskeyLoginFinishCall._();

  factory PasskeyLoginFinishCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PasskeyLoginFinishCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PasskeyLoginFinishCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'handle')
    ..aOS(2, _omitFieldNames ? '' : 'credentialId')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyLoginFinishCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyLoginFinishCall copyWith(
          void Function(PasskeyLoginFinishCall) updates) =>
      super.copyWith((message) => updates(message as PasskeyLoginFinishCall))
          as PasskeyLoginFinishCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PasskeyLoginFinishCall create() => PasskeyLoginFinishCall._();
  @$core.override
  PasskeyLoginFinishCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PasskeyLoginFinishCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PasskeyLoginFinishCall>(create);
  static PasskeyLoginFinishCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get handle => $_getSZ(0);
  @$pb.TagNumber(1)
  set handle($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHandle() => $_has(0);
  @$pb.TagNumber(1)
  void clearHandle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get credentialId => $_getSZ(1);
  @$pb.TagNumber(2)
  set credentialId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCredentialId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredentialId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get signature => $_getN(2);
  @$pb.TagNumber(3)
  set signature($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSignature() => $_has(2);
  @$pb.TagNumber(3)
  void clearSignature() => $_clearField(3);
}

class TotpEnrollBeginCall extends $pb.GeneratedMessage {
  factory TotpEnrollBeginCall() => create();

  TotpEnrollBeginCall._();

  factory TotpEnrollBeginCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TotpEnrollBeginCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TotpEnrollBeginCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TotpEnrollBeginCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TotpEnrollBeginCall copyWith(void Function(TotpEnrollBeginCall) updates) =>
      super.copyWith((message) => updates(message as TotpEnrollBeginCall))
          as TotpEnrollBeginCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TotpEnrollBeginCall create() => TotpEnrollBeginCall._();
  @$core.override
  TotpEnrollBeginCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TotpEnrollBeginCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TotpEnrollBeginCall>(create);
  static TotpEnrollBeginCall? _defaultInstance;
}

class TotpEnrollFinishCall extends $pb.GeneratedMessage {
  factory TotpEnrollFinishCall({
    $core.String? code,
  }) {
    final result = create();
    if (code != null) result.code = code;
    return result;
  }

  TotpEnrollFinishCall._();

  factory TotpEnrollFinishCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TotpEnrollFinishCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TotpEnrollFinishCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TotpEnrollFinishCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TotpEnrollFinishCall copyWith(void Function(TotpEnrollFinishCall) updates) =>
      super.copyWith((message) => updates(message as TotpEnrollFinishCall))
          as TotpEnrollFinishCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TotpEnrollFinishCall create() => TotpEnrollFinishCall._();
  @$core.override
  TotpEnrollFinishCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TotpEnrollFinishCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TotpEnrollFinishCall>(create);
  static TotpEnrollFinishCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);
}

class TotpDisableCall extends $pb.GeneratedMessage {
  factory TotpDisableCall({
    $core.String? code,
  }) {
    final result = create();
    if (code != null) result.code = code;
    return result;
  }

  TotpDisableCall._();

  factory TotpDisableCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TotpDisableCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TotpDisableCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TotpDisableCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TotpDisableCall copyWith(void Function(TotpDisableCall) updates) =>
      super.copyWith((message) => updates(message as TotpDisableCall))
          as TotpDisableCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TotpDisableCall create() => TotpDisableCall._();
  @$core.override
  TotpDisableCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TotpDisableCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TotpDisableCall>(create);
  static TotpDisableCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);
}

class PinPostCall extends $pb.GeneratedMessage {
  factory PinPostCall({
    $core.String? postId,
  }) {
    final result = create();
    if (postId != null) result.postId = postId;
    return result;
  }

  PinPostCall._();

  factory PinPostCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PinPostCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PinPostCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'postId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PinPostCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PinPostCall copyWith(void Function(PinPostCall) updates) =>
      super.copyWith((message) => updates(message as PinPostCall))
          as PinPostCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PinPostCall create() => PinPostCall._();
  @$core.override
  PinPostCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PinPostCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PinPostCall>(create);
  static PinPostCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get postId => $_getSZ(0);
  @$pb.TagNumber(1)
  set postId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => $_clearField(1);
}

class VotePollCall extends $pb.GeneratedMessage {
  factory VotePollCall({
    $core.String? postId,
    $core.int? optionIndex,
  }) {
    final result = create();
    if (postId != null) result.postId = postId;
    if (optionIndex != null) result.optionIndex = optionIndex;
    return result;
  }

  VotePollCall._();

  factory VotePollCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VotePollCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VotePollCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'postId')
    ..aI(2, _omitFieldNames ? '' : 'optionIndex',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VotePollCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VotePollCall copyWith(void Function(VotePollCall) updates) =>
      super.copyWith((message) => updates(message as VotePollCall))
          as VotePollCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VotePollCall create() => VotePollCall._();
  @$core.override
  VotePollCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VotePollCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VotePollCall>(create);
  static VotePollCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get postId => $_getSZ(0);
  @$pb.TagNumber(1)
  set postId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get optionIndex => $_getIZ(1);
  @$pb.TagNumber(2)
  set optionIndex($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOptionIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptionIndex() => $_clearField(2);
}

class SearchPostsCall extends $pb.GeneratedMessage {
  factory SearchPostsCall({
    $core.String? query,
    $core.String? cursor,
    $core.int? limit,
  }) {
    final result = create();
    if (query != null) result.query = query;
    if (cursor != null) result.cursor = cursor;
    if (limit != null) result.limit = limit;
    return result;
  }

  SearchPostsCall._();

  factory SearchPostsCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SearchPostsCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchPostsCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..aOS(2, _omitFieldNames ? '' : 'cursor')
    ..aI(3, _omitFieldNames ? '' : 'limit', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchPostsCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchPostsCall copyWith(void Function(SearchPostsCall) updates) =>
      super.copyWith((message) => updates(message as SearchPostsCall))
          as SearchPostsCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchPostsCall create() => SearchPostsCall._();
  @$core.override
  SearchPostsCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SearchPostsCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchPostsCall>(create);
  static SearchPostsCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get cursor => $_getSZ(1);
  @$pb.TagNumber(2)
  set cursor($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCursor() => $_has(1);
  @$pb.TagNumber(2)
  void clearCursor() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(3)
  set limit($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => $_clearField(3);
}

class SendDmCall extends $pb.GeneratedMessage {
  factory SendDmCall({
    $core.String? toHandle,
    $core.String? text,
  }) {
    final result = create();
    if (toHandle != null) result.toHandle = toHandle;
    if (text != null) result.text = text;
    return result;
  }

  SendDmCall._();

  factory SendDmCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SendDmCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SendDmCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'toHandle')
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SendDmCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SendDmCall copyWith(void Function(SendDmCall) updates) =>
      super.copyWith((message) => updates(message as SendDmCall)) as SendDmCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendDmCall create() => SendDmCall._();
  @$core.override
  SendDmCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SendDmCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SendDmCall>(create);
  static SendDmCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get toHandle => $_getSZ(0);
  @$pb.TagNumber(1)
  set toHandle($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasToHandle() => $_has(0);
  @$pb.TagNumber(1)
  void clearToHandle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);
}

class GetConversationsCall extends $pb.GeneratedMessage {
  factory GetConversationsCall({
    $core.String? cursor,
    $core.int? limit,
  }) {
    final result = create();
    if (cursor != null) result.cursor = cursor;
    if (limit != null) result.limit = limit;
    return result;
  }

  GetConversationsCall._();

  factory GetConversationsCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetConversationsCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetConversationsCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cursor')
    ..aI(2, _omitFieldNames ? '' : 'limit', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetConversationsCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetConversationsCall copyWith(void Function(GetConversationsCall) updates) =>
      super.copyWith((message) => updates(message as GetConversationsCall))
          as GetConversationsCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetConversationsCall create() => GetConversationsCall._();
  @$core.override
  GetConversationsCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetConversationsCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetConversationsCall>(create);
  static GetConversationsCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cursor => $_getSZ(0);
  @$pb.TagNumber(1)
  set cursor($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCursor() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursor() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => $_clearField(2);
}

class GetMessagesCall extends $pb.GeneratedMessage {
  factory GetMessagesCall({
    $core.String? peerHandle,
    $core.String? cursor,
    $core.int? limit,
    $core.bool? markRead,
  }) {
    final result = create();
    if (peerHandle != null) result.peerHandle = peerHandle;
    if (cursor != null) result.cursor = cursor;
    if (limit != null) result.limit = limit;
    if (markRead != null) result.markRead = markRead;
    return result;
  }

  GetMessagesCall._();

  factory GetMessagesCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMessagesCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMessagesCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'peerHandle')
    ..aOS(2, _omitFieldNames ? '' : 'cursor')
    ..aI(3, _omitFieldNames ? '' : 'limit', fieldType: $pb.PbFieldType.OU3)
    ..aOB(4, _omitFieldNames ? '' : 'markRead')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMessagesCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMessagesCall copyWith(void Function(GetMessagesCall) updates) =>
      super.copyWith((message) => updates(message as GetMessagesCall))
          as GetMessagesCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMessagesCall create() => GetMessagesCall._();
  @$core.override
  GetMessagesCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMessagesCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMessagesCall>(create);
  static GetMessagesCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get peerHandle => $_getSZ(0);
  @$pb.TagNumber(1)
  set peerHandle($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPeerHandle() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeerHandle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get cursor => $_getSZ(1);
  @$pb.TagNumber(2)
  set cursor($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCursor() => $_has(1);
  @$pb.TagNumber(2)
  void clearCursor() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(3)
  set limit($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get markRead => $_getBF(3);
  @$pb.TagNumber(4)
  set markRead($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMarkRead() => $_has(3);
  @$pb.TagNumber(4)
  void clearMarkRead() => $_clearField(4);
}

class ModerateCall extends $pb.GeneratedMessage {
  factory ModerateCall({
    $core.String? handle,
    ModAction? action,
  }) {
    final result = create();
    if (handle != null) result.handle = handle;
    if (action != null) result.action = action;
    return result;
  }

  ModerateCall._();

  factory ModerateCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModerateCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModerateCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'handle')
    ..aE<ModAction>(2, _omitFieldNames ? '' : 'action',
        enumValues: ModAction.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ModerateCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ModerateCall copyWith(void Function(ModerateCall) updates) =>
      super.copyWith((message) => updates(message as ModerateCall))
          as ModerateCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModerateCall create() => ModerateCall._();
  @$core.override
  ModerateCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ModerateCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModerateCall>(create);
  static ModerateCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get handle => $_getSZ(0);
  @$pb.TagNumber(1)
  set handle($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHandle() => $_has(0);
  @$pb.TagNumber(1)
  void clearHandle() => $_clearField(1);

  @$pb.TagNumber(2)
  ModAction get action => $_getN(1);
  @$pb.TagNumber(2)
  set action(ModAction value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearAction() => $_clearField(2);
}

class GetFollowsCall extends $pb.GeneratedMessage {
  factory GetFollowsCall({
    $core.String? handle,
    FollowsWhich? which,
    $core.String? cursor,
    $core.int? limit,
  }) {
    final result = create();
    if (handle != null) result.handle = handle;
    if (which != null) result.which = which;
    if (cursor != null) result.cursor = cursor;
    if (limit != null) result.limit = limit;
    return result;
  }

  GetFollowsCall._();

  factory GetFollowsCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFollowsCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFollowsCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'handle')
    ..aE<FollowsWhich>(2, _omitFieldNames ? '' : 'which',
        enumValues: FollowsWhich.values)
    ..aOS(3, _omitFieldNames ? '' : 'cursor')
    ..aI(4, _omitFieldNames ? '' : 'limit', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFollowsCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFollowsCall copyWith(void Function(GetFollowsCall) updates) =>
      super.copyWith((message) => updates(message as GetFollowsCall))
          as GetFollowsCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFollowsCall create() => GetFollowsCall._();
  @$core.override
  GetFollowsCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetFollowsCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFollowsCall>(create);
  static GetFollowsCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get handle => $_getSZ(0);
  @$pb.TagNumber(1)
  set handle($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHandle() => $_has(0);
  @$pb.TagNumber(1)
  void clearHandle() => $_clearField(1);

  @$pb.TagNumber(2)
  FollowsWhich get which => $_getN(1);
  @$pb.TagNumber(2)
  set which(FollowsWhich value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasWhich() => $_has(1);
  @$pb.TagNumber(2)
  void clearWhich() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get cursor => $_getSZ(2);
  @$pb.TagNumber(3)
  set cursor($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCursor() => $_has(2);
  @$pb.TagNumber(3)
  void clearCursor() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get limit => $_getIZ(3);
  @$pb.TagNumber(4)
  set limit($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearLimit() => $_clearField(4);
}

class EditPostCall extends $pb.GeneratedMessage {
  factory EditPostCall({
    $core.String? postId,
    $core.String? text,
  }) {
    final result = create();
    if (postId != null) result.postId = postId;
    if (text != null) result.text = text;
    return result;
  }

  EditPostCall._();

  factory EditPostCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditPostCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditPostCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'postId')
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditPostCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditPostCall copyWith(void Function(EditPostCall) updates) =>
      super.copyWith((message) => updates(message as EditPostCall))
          as EditPostCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditPostCall create() => EditPostCall._();
  @$core.override
  EditPostCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditPostCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditPostCall>(create);
  static EditPostCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get postId => $_getSZ(0);
  @$pb.TagNumber(1)
  set postId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);
}

class DeletePostCall extends $pb.GeneratedMessage {
  factory DeletePostCall({
    $core.String? postId,
  }) {
    final result = create();
    if (postId != null) result.postId = postId;
    return result;
  }

  DeletePostCall._();

  factory DeletePostCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeletePostCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeletePostCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'postId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeletePostCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeletePostCall copyWith(void Function(DeletePostCall) updates) =>
      super.copyWith((message) => updates(message as DeletePostCall))
          as DeletePostCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePostCall create() => DeletePostCall._();
  @$core.override
  DeletePostCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeletePostCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeletePostCall>(create);
  static DeletePostCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get postId => $_getSZ(0);
  @$pb.TagNumber(1)
  set postId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => $_clearField(1);
}

class BookmarkCall extends $pb.GeneratedMessage {
  factory BookmarkCall({
    $core.String? postId,
    $core.bool? undo,
  }) {
    final result = create();
    if (postId != null) result.postId = postId;
    if (undo != null) result.undo = undo;
    return result;
  }

  BookmarkCall._();

  factory BookmarkCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BookmarkCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BookmarkCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'postId')
    ..aOB(2, _omitFieldNames ? '' : 'undo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BookmarkCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BookmarkCall copyWith(void Function(BookmarkCall) updates) =>
      super.copyWith((message) => updates(message as BookmarkCall))
          as BookmarkCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BookmarkCall create() => BookmarkCall._();
  @$core.override
  BookmarkCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BookmarkCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BookmarkCall>(create);
  static BookmarkCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get postId => $_getSZ(0);
  @$pb.TagNumber(1)
  set postId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get undo => $_getBF(1);
  @$pb.TagNumber(2)
  set undo($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUndo() => $_has(1);
  @$pb.TagNumber(2)
  void clearUndo() => $_clearField(2);
}

class GetTrendsCall extends $pb.GeneratedMessage {
  factory GetTrendsCall({
    $core.int? limit,
  }) {
    final result = create();
    if (limit != null) result.limit = limit;
    return result;
  }

  GetTrendsCall._();

  factory GetTrendsCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTrendsCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTrendsCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'limit', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTrendsCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTrendsCall copyWith(void Function(GetTrendsCall) updates) =>
      super.copyWith((message) => updates(message as GetTrendsCall))
          as GetTrendsCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTrendsCall create() => GetTrendsCall._();
  @$core.override
  GetTrendsCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTrendsCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTrendsCall>(create);
  static GetTrendsCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get limit => $_getIZ(0);
  @$pb.TagNumber(1)
  set limit($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => $_clearField(1);
}

class UploadMediaCall extends $pb.GeneratedMessage {
  factory UploadMediaCall({
    $core.String? fileName,
    $core.String? mime,
    $fixnum.Int64? sizeBytes,
  }) {
    final result = create();
    if (fileName != null) result.fileName = fileName;
    if (mime != null) result.mime = mime;
    if (sizeBytes != null) result.sizeBytes = sizeBytes;
    return result;
  }

  UploadMediaCall._();

  factory UploadMediaCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UploadMediaCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UploadMediaCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fileName')
    ..aOS(2, _omitFieldNames ? '' : 'mime')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'sizeBytes', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadMediaCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadMediaCall copyWith(void Function(UploadMediaCall) updates) =>
      super.copyWith((message) => updates(message as UploadMediaCall))
          as UploadMediaCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadMediaCall create() => UploadMediaCall._();
  @$core.override
  UploadMediaCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UploadMediaCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UploadMediaCall>(create);
  static UploadMediaCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fileName => $_getSZ(0);
  @$pb.TagNumber(1)
  set fileName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFileName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get mime => $_getSZ(1);
  @$pb.TagNumber(2)
  set mime($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMime() => $_has(1);
  @$pb.TagNumber(2)
  void clearMime() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get sizeBytes => $_getI64(2);
  @$pb.TagNumber(3)
  set sizeBytes($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSizeBytes() => $_has(2);
  @$pb.TagNumber(3)
  void clearSizeBytes() => $_clearField(3);
}

class RegisterCall extends $pb.GeneratedMessage {
  factory RegisterCall({
    $core.String? handle,
    $core.String? password,
    $core.String? displayName,
  }) {
    final result = create();
    if (handle != null) result.handle = handle;
    if (password != null) result.password = password;
    if (displayName != null) result.displayName = displayName;
    return result;
  }

  RegisterCall._();

  factory RegisterCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'handle')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(3, _omitFieldNames ? '' : 'displayName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterCall copyWith(void Function(RegisterCall) updates) =>
      super.copyWith((message) => updates(message as RegisterCall))
          as RegisterCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterCall create() => RegisterCall._();
  @$core.override
  RegisterCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegisterCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterCall>(create);
  static RegisterCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get handle => $_getSZ(0);
  @$pb.TagNumber(1)
  set handle($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHandle() => $_has(0);
  @$pb.TagNumber(1)
  void clearHandle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get displayName => $_getSZ(2);
  @$pb.TagNumber(3)
  set displayName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDisplayName() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplayName() => $_clearField(3);
}

class CreatePostCall extends $pb.GeneratedMessage {
  factory CreatePostCall({
    $core.String? text,
    $core.String? replyToPostId,
    $core.Iterable<$core.String>? mediaIds,
    $core.String? quotedPostId,
    $core.Iterable<$core.String>? pollOptions,
    $core.int? pollDurationHours,
  }) {
    final result = create();
    if (text != null) result.text = text;
    if (replyToPostId != null) result.replyToPostId = replyToPostId;
    if (mediaIds != null) result.mediaIds.addAll(mediaIds);
    if (quotedPostId != null) result.quotedPostId = quotedPostId;
    if (pollOptions != null) result.pollOptions.addAll(pollOptions);
    if (pollDurationHours != null) result.pollDurationHours = pollDurationHours;
    return result;
  }

  CreatePostCall._();

  factory CreatePostCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreatePostCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreatePostCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..aOS(2, _omitFieldNames ? '' : 'replyToPostId')
    ..pPS(3, _omitFieldNames ? '' : 'mediaIds')
    ..aOS(4, _omitFieldNames ? '' : 'quotedPostId')
    ..pPS(5, _omitFieldNames ? '' : 'pollOptions')
    ..aI(6, _omitFieldNames ? '' : 'pollDurationHours',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreatePostCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreatePostCall copyWith(void Function(CreatePostCall) updates) =>
      super.copyWith((message) => updates(message as CreatePostCall))
          as CreatePostCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePostCall create() => CreatePostCall._();
  @$core.override
  CreatePostCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreatePostCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreatePostCall>(create);
  static CreatePostCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get replyToPostId => $_getSZ(1);
  @$pb.TagNumber(2)
  set replyToPostId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReplyToPostId() => $_has(1);
  @$pb.TagNumber(2)
  void clearReplyToPostId() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get mediaIds => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get quotedPostId => $_getSZ(3);
  @$pb.TagNumber(4)
  set quotedPostId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasQuotedPostId() => $_has(3);
  @$pb.TagNumber(4)
  void clearQuotedPostId() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get pollOptions => $_getList(4);

  @$pb.TagNumber(6)
  $core.int get pollDurationHours => $_getIZ(5);
  @$pb.TagNumber(6)
  set pollDurationHours($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPollDurationHours() => $_has(5);
  @$pb.TagNumber(6)
  void clearPollDurationHours() => $_clearField(6);
}

class GetFeedCall extends $pb.GeneratedMessage {
  factory GetFeedCall({
    FeedKind? kind,
    $core.String? actorHandle,
    $core.String? cursor,
    $core.int? limit,
    $core.String? hashtag,
  }) {
    final result = create();
    if (kind != null) result.kind = kind;
    if (actorHandle != null) result.actorHandle = actorHandle;
    if (cursor != null) result.cursor = cursor;
    if (limit != null) result.limit = limit;
    if (hashtag != null) result.hashtag = hashtag;
    return result;
  }

  GetFeedCall._();

  factory GetFeedCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFeedCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFeedCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aE<FeedKind>(1, _omitFieldNames ? '' : 'kind',
        enumValues: FeedKind.values)
    ..aOS(2, _omitFieldNames ? '' : 'actorHandle')
    ..aOS(3, _omitFieldNames ? '' : 'cursor')
    ..aI(4, _omitFieldNames ? '' : 'limit', fieldType: $pb.PbFieldType.OU3)
    ..aOS(5, _omitFieldNames ? '' : 'hashtag')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFeedCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFeedCall copyWith(void Function(GetFeedCall) updates) =>
      super.copyWith((message) => updates(message as GetFeedCall))
          as GetFeedCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFeedCall create() => GetFeedCall._();
  @$core.override
  GetFeedCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetFeedCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFeedCall>(create);
  static GetFeedCall? _defaultInstance;

  @$pb.TagNumber(1)
  FeedKind get kind => $_getN(0);
  @$pb.TagNumber(1)
  set kind(FeedKind value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get actorHandle => $_getSZ(1);
  @$pb.TagNumber(2)
  set actorHandle($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasActorHandle() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorHandle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get cursor => $_getSZ(2);
  @$pb.TagNumber(3)
  set cursor($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCursor() => $_has(2);
  @$pb.TagNumber(3)
  void clearCursor() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get limit => $_getIZ(3);
  @$pb.TagNumber(4)
  set limit($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearLimit() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get hashtag => $_getSZ(4);
  @$pb.TagNumber(5)
  set hashtag($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasHashtag() => $_has(4);
  @$pb.TagNumber(5)
  void clearHashtag() => $_clearField(5);
}

class LikeCall extends $pb.GeneratedMessage {
  factory LikeCall({
    $core.String? postId,
    $core.bool? undo,
  }) {
    final result = create();
    if (postId != null) result.postId = postId;
    if (undo != null) result.undo = undo;
    return result;
  }

  LikeCall._();

  factory LikeCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LikeCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LikeCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'postId')
    ..aOB(2, _omitFieldNames ? '' : 'undo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LikeCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LikeCall copyWith(void Function(LikeCall) updates) =>
      super.copyWith((message) => updates(message as LikeCall)) as LikeCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LikeCall create() => LikeCall._();
  @$core.override
  LikeCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LikeCall getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LikeCall>(create);
  static LikeCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get postId => $_getSZ(0);
  @$pb.TagNumber(1)
  set postId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get undo => $_getBF(1);
  @$pb.TagNumber(2)
  set undo($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUndo() => $_has(1);
  @$pb.TagNumber(2)
  void clearUndo() => $_clearField(2);
}

class RepostCall extends $pb.GeneratedMessage {
  factory RepostCall({
    $core.String? postId,
    $core.bool? undo,
  }) {
    final result = create();
    if (postId != null) result.postId = postId;
    if (undo != null) result.undo = undo;
    return result;
  }

  RepostCall._();

  factory RepostCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepostCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepostCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'postId')
    ..aOB(2, _omitFieldNames ? '' : 'undo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepostCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepostCall copyWith(void Function(RepostCall) updates) =>
      super.copyWith((message) => updates(message as RepostCall)) as RepostCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepostCall create() => RepostCall._();
  @$core.override
  RepostCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepostCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepostCall>(create);
  static RepostCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get postId => $_getSZ(0);
  @$pb.TagNumber(1)
  set postId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get undo => $_getBF(1);
  @$pb.TagNumber(2)
  set undo($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUndo() => $_has(1);
  @$pb.TagNumber(2)
  void clearUndo() => $_clearField(2);
}

class FollowCall extends $pb.GeneratedMessage {
  factory FollowCall({
    $core.String? handle,
    $core.bool? undo,
  }) {
    final result = create();
    if (handle != null) result.handle = handle;
    if (undo != null) result.undo = undo;
    return result;
  }

  FollowCall._();

  factory FollowCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FollowCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FollowCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'handle')
    ..aOB(2, _omitFieldNames ? '' : 'undo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FollowCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FollowCall copyWith(void Function(FollowCall) updates) =>
      super.copyWith((message) => updates(message as FollowCall)) as FollowCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FollowCall create() => FollowCall._();
  @$core.override
  FollowCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FollowCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FollowCall>(create);
  static FollowCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get handle => $_getSZ(0);
  @$pb.TagNumber(1)
  set handle($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHandle() => $_has(0);
  @$pb.TagNumber(1)
  void clearHandle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get undo => $_getBF(1);
  @$pb.TagNumber(2)
  set undo($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUndo() => $_has(1);
  @$pb.TagNumber(2)
  void clearUndo() => $_clearField(2);
}

class GetActorCall extends $pb.GeneratedMessage {
  factory GetActorCall({
    $core.String? handle,
  }) {
    final result = create();
    if (handle != null) result.handle = handle;
    return result;
  }

  GetActorCall._();

  factory GetActorCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetActorCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetActorCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'handle')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetActorCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetActorCall copyWith(void Function(GetActorCall) updates) =>
      super.copyWith((message) => updates(message as GetActorCall))
          as GetActorCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetActorCall create() => GetActorCall._();
  @$core.override
  GetActorCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetActorCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetActorCall>(create);
  static GetActorCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get handle => $_getSZ(0);
  @$pb.TagNumber(1)
  set handle($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHandle() => $_has(0);
  @$pb.TagNumber(1)
  void clearHandle() => $_clearField(1);
}

class GetThreadCall extends $pb.GeneratedMessage {
  factory GetThreadCall({
    $core.String? postId,
  }) {
    final result = create();
    if (postId != null) result.postId = postId;
    return result;
  }

  GetThreadCall._();

  factory GetThreadCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetThreadCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetThreadCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'postId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetThreadCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetThreadCall copyWith(void Function(GetThreadCall) updates) =>
      super.copyWith((message) => updates(message as GetThreadCall))
          as GetThreadCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetThreadCall create() => GetThreadCall._();
  @$core.override
  GetThreadCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetThreadCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetThreadCall>(create);
  static GetThreadCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get postId => $_getSZ(0);
  @$pb.TagNumber(1)
  set postId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => $_clearField(1);
}

class SearchActorsCall extends $pb.GeneratedMessage {
  factory SearchActorsCall({
    $core.String? query,
    $core.int? limit,
  }) {
    final result = create();
    if (query != null) result.query = query;
    if (limit != null) result.limit = limit;
    return result;
  }

  SearchActorsCall._();

  factory SearchActorsCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SearchActorsCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchActorsCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..aI(2, _omitFieldNames ? '' : 'limit', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchActorsCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchActorsCall copyWith(void Function(SearchActorsCall) updates) =>
      super.copyWith((message) => updates(message as SearchActorsCall))
          as SearchActorsCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchActorsCall create() => SearchActorsCall._();
  @$core.override
  SearchActorsCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SearchActorsCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchActorsCall>(create);
  static SearchActorsCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => $_clearField(2);
}

class GetNotificationsCall extends $pb.GeneratedMessage {
  factory GetNotificationsCall({
    $core.String? cursor,
    $core.int? limit,
    $core.bool? markRead,
  }) {
    final result = create();
    if (cursor != null) result.cursor = cursor;
    if (limit != null) result.limit = limit;
    if (markRead != null) result.markRead = markRead;
    return result;
  }

  GetNotificationsCall._();

  factory GetNotificationsCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetNotificationsCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetNotificationsCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cursor')
    ..aI(2, _omitFieldNames ? '' : 'limit', fieldType: $pb.PbFieldType.OU3)
    ..aOB(3, _omitFieldNames ? '' : 'markRead')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNotificationsCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNotificationsCall copyWith(void Function(GetNotificationsCall) updates) =>
      super.copyWith((message) => updates(message as GetNotificationsCall))
          as GetNotificationsCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNotificationsCall create() => GetNotificationsCall._();
  @$core.override
  GetNotificationsCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetNotificationsCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetNotificationsCall>(create);
  static GetNotificationsCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cursor => $_getSZ(0);
  @$pb.TagNumber(1)
  set cursor($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCursor() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursor() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get markRead => $_getBF(2);
  @$pb.TagNumber(3)
  set markRead($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMarkRead() => $_has(2);
  @$pb.TagNumber(3)
  void clearMarkRead() => $_clearField(3);
}

class UpdateProfileCall extends $pb.GeneratedMessage {
  factory UpdateProfileCall({
    $core.String? displayName,
    $core.String? bio,
    $core.String? avatarMediaId,
    $core.String? bannerMediaId,
  }) {
    final result = create();
    if (displayName != null) result.displayName = displayName;
    if (bio != null) result.bio = bio;
    if (avatarMediaId != null) result.avatarMediaId = avatarMediaId;
    if (bannerMediaId != null) result.bannerMediaId = bannerMediaId;
    return result;
  }

  UpdateProfileCall._();

  factory UpdateProfileCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateProfileCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateProfileCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'displayName')
    ..aOS(2, _omitFieldNames ? '' : 'bio')
    ..aOS(3, _omitFieldNames ? '' : 'avatarMediaId')
    ..aOS(4, _omitFieldNames ? '' : 'bannerMediaId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateProfileCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateProfileCall copyWith(void Function(UpdateProfileCall) updates) =>
      super.copyWith((message) => updates(message as UpdateProfileCall))
          as UpdateProfileCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateProfileCall create() => UpdateProfileCall._();
  @$core.override
  UpdateProfileCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateProfileCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateProfileCall>(create);
  static UpdateProfileCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get displayName => $_getSZ(0);
  @$pb.TagNumber(1)
  set displayName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDisplayName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisplayName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get bio => $_getSZ(1);
  @$pb.TagNumber(2)
  set bio($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBio() => $_has(1);
  @$pb.TagNumber(2)
  void clearBio() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatarMediaId => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatarMediaId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAvatarMediaId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatarMediaId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get bannerMediaId => $_getSZ(3);
  @$pb.TagNumber(4)
  set bannerMediaId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBannerMediaId() => $_has(3);
  @$pb.TagNumber(4)
  void clearBannerMediaId() => $_clearField(4);
}

class PingCall extends $pb.GeneratedMessage {
  factory PingCall({
    $core.List<$core.int>? echoData,
  }) {
    final result = create();
    if (echoData != null) result.echoData = echoData;
    return result;
  }

  PingCall._();

  factory PingCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PingCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PingCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'echoData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PingCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PingCall copyWith(void Function(PingCall) updates) =>
      super.copyWith((message) => updates(message as PingCall)) as PingCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingCall create() => PingCall._();
  @$core.override
  PingCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PingCall getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingCall>(create);
  static PingCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get echoData => $_getN(0);
  @$pb.TagNumber(1)
  set echoData($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEchoData() => $_has(0);
  @$pb.TagNumber(1)
  void clearEchoData() => $_clearField(1);
}

class AuthCall extends $pb.GeneratedMessage {
  factory AuthCall({
    $core.String? identity,
    $core.List<$core.int>? credential,
    $core.String? totpCode,
  }) {
    final result = create();
    if (identity != null) result.identity = identity;
    if (credential != null) result.credential = credential;
    if (totpCode != null) result.totpCode = totpCode;
    return result;
  }

  AuthCall._();

  factory AuthCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AuthCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'identity')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'credential', $pb.PbFieldType.OY)
    ..aOS(3, _omitFieldNames ? '' : 'totpCode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthCall copyWith(void Function(AuthCall) updates) =>
      super.copyWith((message) => updates(message as AuthCall)) as AuthCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthCall create() => AuthCall._();
  @$core.override
  AuthCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AuthCall getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthCall>(create);
  static AuthCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get identity => $_getSZ(0);
  @$pb.TagNumber(1)
  set identity($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIdentity() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentity() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get credential => $_getN(1);
  @$pb.TagNumber(2)
  set credential($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCredential() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredential() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get totpCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set totpCode($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTotpCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotpCode() => $_clearField(3);
}

class GetBalanceCall extends $pb.GeneratedMessage {
  factory GetBalanceCall({
    $core.String? currency,
    $core.bool? forceRefresh,
  }) {
    final result = create();
    if (currency != null) result.currency = currency;
    if (forceRefresh != null) result.forceRefresh = forceRefresh;
    return result;
  }

  GetBalanceCall._();

  factory GetBalanceCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetBalanceCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetBalanceCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'currency')
    ..aOB(2, _omitFieldNames ? '' : 'forceRefresh')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBalanceCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBalanceCall copyWith(void Function(GetBalanceCall) updates) =>
      super.copyWith((message) => updates(message as GetBalanceCall))
          as GetBalanceCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBalanceCall create() => GetBalanceCall._();
  @$core.override
  GetBalanceCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetBalanceCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBalanceCall>(create);
  static GetBalanceCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get currency => $_getSZ(0);
  @$pb.TagNumber(1)
  set currency($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCurrency() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrency() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get forceRefresh => $_getBF(1);
  @$pb.TagNumber(2)
  set forceRefresh($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasForceRefresh() => $_has(1);
  @$pb.TagNumber(2)
  void clearForceRefresh() => $_clearField(2);
}

class TransferCall extends $pb.GeneratedMessage {
  factory TransferCall({
    $core.String? recipientId,
    $core.String? currency,
    $fixnum.Int64? amountMinor,
    $core.String? reference,
  }) {
    final result = create();
    if (recipientId != null) result.recipientId = recipientId;
    if (currency != null) result.currency = currency;
    if (amountMinor != null) result.amountMinor = amountMinor;
    if (reference != null) result.reference = reference;
    return result;
  }

  TransferCall._();

  factory TransferCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransferCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransferCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'recipientId')
    ..aOS(2, _omitFieldNames ? '' : 'currency')
    ..aInt64(3, _omitFieldNames ? '' : 'amountMinor')
    ..aOS(4, _omitFieldNames ? '' : 'reference')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransferCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransferCall copyWith(void Function(TransferCall) updates) =>
      super.copyWith((message) => updates(message as TransferCall))
          as TransferCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransferCall create() => TransferCall._();
  @$core.override
  TransferCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransferCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransferCall>(create);
  static TransferCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get recipientId => $_getSZ(0);
  @$pb.TagNumber(1)
  set recipientId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRecipientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecipientId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get currency => $_getSZ(1);
  @$pb.TagNumber(2)
  set currency($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCurrency() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrency() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get amountMinor => $_getI64(2);
  @$pb.TagNumber(3)
  set amountMinor($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAmountMinor() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmountMinor() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get reference => $_getSZ(3);
  @$pb.TagNumber(4)
  set reference($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasReference() => $_has(3);
  @$pb.TagNumber(4)
  void clearReference() => $_clearField(4);
}

class GetHistoryCall extends $pb.GeneratedMessage {
  factory GetHistoryCall({
    $core.String? currency,
    $fixnum.Int64? fromEpoch,
    $fixnum.Int64? toEpoch,
    $core.int? pageSize,
    $core.String? pageToken,
    $core.bool? forceRefresh,
  }) {
    final result = create();
    if (currency != null) result.currency = currency;
    if (fromEpoch != null) result.fromEpoch = fromEpoch;
    if (toEpoch != null) result.toEpoch = toEpoch;
    if (pageSize != null) result.pageSize = pageSize;
    if (pageToken != null) result.pageToken = pageToken;
    if (forceRefresh != null) result.forceRefresh = forceRefresh;
    return result;
  }

  GetHistoryCall._();

  factory GetHistoryCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetHistoryCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetHistoryCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'currency')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'fromEpoch', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'toEpoch', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(4, _omitFieldNames ? '' : 'pageSize', fieldType: $pb.PbFieldType.OU3)
    ..aOS(5, _omitFieldNames ? '' : 'pageToken')
    ..aOB(6, _omitFieldNames ? '' : 'forceRefresh')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetHistoryCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetHistoryCall copyWith(void Function(GetHistoryCall) updates) =>
      super.copyWith((message) => updates(message as GetHistoryCall))
          as GetHistoryCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetHistoryCall create() => GetHistoryCall._();
  @$core.override
  GetHistoryCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetHistoryCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetHistoryCall>(create);
  static GetHistoryCall? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get currency => $_getSZ(0);
  @$pb.TagNumber(1)
  set currency($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCurrency() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrency() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get fromEpoch => $_getI64(1);
  @$pb.TagNumber(2)
  set fromEpoch($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFromEpoch() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromEpoch() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get toEpoch => $_getI64(2);
  @$pb.TagNumber(3)
  set toEpoch($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasToEpoch() => $_has(2);
  @$pb.TagNumber(3)
  void clearToEpoch() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get pageSize => $_getIZ(3);
  @$pb.TagNumber(4)
  set pageSize($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPageSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearPageSize() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get pageToken => $_getSZ(4);
  @$pb.TagNumber(5)
  set pageToken($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPageToken() => $_has(4);
  @$pb.TagNumber(5)
  void clearPageToken() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get forceRefresh => $_getBF(5);
  @$pb.TagNumber(6)
  set forceRefresh($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasForceRefresh() => $_has(5);
  @$pb.TagNumber(6)
  void clearForceRefresh() => $_clearField(6);
}

class GetProfileCall extends $pb.GeneratedMessage {
  factory GetProfileCall() => create();

  GetProfileCall._();

  factory GetProfileCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetProfileCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetProfileCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetProfileCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetProfileCall copyWith(void Function(GetProfileCall) updates) =>
      super.copyWith((message) => updates(message as GetProfileCall))
          as GetProfileCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetProfileCall create() => GetProfileCall._();
  @$core.override
  GetProfileCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetProfileCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetProfileCall>(create);
  static GetProfileCall? _defaultInstance;
}

class CloseSessionCall extends $pb.GeneratedMessage {
  factory CloseSessionCall() => create();

  CloseSessionCall._();

  factory CloseSessionCall.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CloseSessionCall.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CloseSessionCall',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CloseSessionCall clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CloseSessionCall copyWith(void Function(CloseSessionCall) updates) =>
      super.copyWith((message) => updates(message as CloseSessionCall))
          as CloseSessionCall;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CloseSessionCall create() => CloseSessionCall._();
  @$core.override
  CloseSessionCall createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CloseSessionCall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CloseSessionCall>(create);
  static CloseSessionCall? _defaultInstance;
}

enum ClientResponse_Payload {
  ping,
  auth,
  getBalance,
  transfer,
  getHistory,
  getProfile,
  register,
  createPost,
  getFeed,
  like,
  repost,
  follow,
  getActor,
  getThread,
  searchActors,
  getNotifications,
  updateProfile,
  uploadMedia,
  getTrends,
  getFollows,
  editPost,
  deletePost,
  bookmark,
  pinPost,
  votePoll,
  searchPosts,
  sendDm,
  getConversations,
  getMessages,
  moderate,
  securityStatus,
  passkeyRegister,
  passkeyList,
  passkeyDelete,
  passkeyLoginBegin,
  totpEnrollBegin,
  totpEnrollFinish,
  totpDisable,
  passkeyRegBegin,
  passkeyRegFinish,
  passkeyAuthBegin,
  getModerationList,
  notSet
}

/// RPC Client Results (Responses)
class ClientResponse extends $pb.GeneratedMessage {
  factory ClientResponse({
    $fixnum.Int64? requestId,
    $core.bool? success,
    $core.String? errorMessage,
    PingResult? ping,
    AuthResult? auth,
    GetBalanceResult? getBalance,
    TransferResult? transfer,
    GetHistoryResult? getHistory,
    GetProfileResult? getProfile,
    RegisterResult? register,
    CreatePostResult? createPost,
    GetFeedResult? getFeed,
    LikeResult? like,
    RepostResult? repost,
    FollowResult? follow,
    GetActorResult? getActor,
    GetThreadResult? getThread,
    SearchActorsResult? searchActors,
    GetNotificationsResult? getNotifications,
    UpdateProfileResult? updateProfile,
    UploadMediaResult? uploadMedia,
    GetTrendsResult? getTrends,
    GetFollowsResult? getFollows,
    EditPostResult? editPost,
    DeletePostResult? deletePost,
    BookmarkResult? bookmark,
    PinPostResult? pinPost,
    VotePollResult? votePoll,
    SearchPostsResult? searchPosts,
    SendDmResult? sendDm,
    GetConversationsResult? getConversations,
    GetMessagesResult? getMessages,
    ModerateResult? moderate,
    SecurityStatusResult? securityStatus,
    PasskeyRegisterResult? passkeyRegister,
    PasskeyListResult? passkeyList,
    PasskeyDeleteResult? passkeyDelete,
    PasskeyLoginBeginResult? passkeyLoginBegin,
    TotpEnrollBeginResult? totpEnrollBegin,
    TotpEnrollFinishResult? totpEnrollFinish,
    TotpDisableResult? totpDisable,
    PasskeyRegBeginResult? passkeyRegBegin,
    PasskeyRegFinishResult? passkeyRegFinish,
    PasskeyAuthBeginResult? passkeyAuthBegin,
    GetModerationListResult? getModerationList,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (success != null) result.success = success;
    if (errorMessage != null) result.errorMessage = errorMessage;
    if (ping != null) result.ping = ping;
    if (auth != null) result.auth = auth;
    if (getBalance != null) result.getBalance = getBalance;
    if (transfer != null) result.transfer = transfer;
    if (getHistory != null) result.getHistory = getHistory;
    if (getProfile != null) result.getProfile = getProfile;
    if (register != null) result.register = register;
    if (createPost != null) result.createPost = createPost;
    if (getFeed != null) result.getFeed = getFeed;
    if (like != null) result.like = like;
    if (repost != null) result.repost = repost;
    if (follow != null) result.follow = follow;
    if (getActor != null) result.getActor = getActor;
    if (getThread != null) result.getThread = getThread;
    if (searchActors != null) result.searchActors = searchActors;
    if (getNotifications != null) result.getNotifications = getNotifications;
    if (updateProfile != null) result.updateProfile = updateProfile;
    if (uploadMedia != null) result.uploadMedia = uploadMedia;
    if (getTrends != null) result.getTrends = getTrends;
    if (getFollows != null) result.getFollows = getFollows;
    if (editPost != null) result.editPost = editPost;
    if (deletePost != null) result.deletePost = deletePost;
    if (bookmark != null) result.bookmark = bookmark;
    if (pinPost != null) result.pinPost = pinPost;
    if (votePoll != null) result.votePoll = votePoll;
    if (searchPosts != null) result.searchPosts = searchPosts;
    if (sendDm != null) result.sendDm = sendDm;
    if (getConversations != null) result.getConversations = getConversations;
    if (getMessages != null) result.getMessages = getMessages;
    if (moderate != null) result.moderate = moderate;
    if (securityStatus != null) result.securityStatus = securityStatus;
    if (passkeyRegister != null) result.passkeyRegister = passkeyRegister;
    if (passkeyList != null) result.passkeyList = passkeyList;
    if (passkeyDelete != null) result.passkeyDelete = passkeyDelete;
    if (passkeyLoginBegin != null) result.passkeyLoginBegin = passkeyLoginBegin;
    if (totpEnrollBegin != null) result.totpEnrollBegin = totpEnrollBegin;
    if (totpEnrollFinish != null) result.totpEnrollFinish = totpEnrollFinish;
    if (totpDisable != null) result.totpDisable = totpDisable;
    if (passkeyRegBegin != null) result.passkeyRegBegin = passkeyRegBegin;
    if (passkeyRegFinish != null) result.passkeyRegFinish = passkeyRegFinish;
    if (passkeyAuthBegin != null) result.passkeyAuthBegin = passkeyAuthBegin;
    if (getModerationList != null) result.getModerationList = getModerationList;
    return result;
  }

  ClientResponse._();

  factory ClientResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClientResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ClientResponse_Payload>
      _ClientResponse_PayloadByTag = {
    4: ClientResponse_Payload.ping,
    5: ClientResponse_Payload.auth,
    6: ClientResponse_Payload.getBalance,
    7: ClientResponse_Payload.transfer,
    8: ClientResponse_Payload.getHistory,
    9: ClientResponse_Payload.getProfile,
    10: ClientResponse_Payload.register,
    11: ClientResponse_Payload.createPost,
    12: ClientResponse_Payload.getFeed,
    13: ClientResponse_Payload.like,
    14: ClientResponse_Payload.repost,
    15: ClientResponse_Payload.follow,
    16: ClientResponse_Payload.getActor,
    17: ClientResponse_Payload.getThread,
    18: ClientResponse_Payload.searchActors,
    19: ClientResponse_Payload.getNotifications,
    20: ClientResponse_Payload.updateProfile,
    21: ClientResponse_Payload.uploadMedia,
    22: ClientResponse_Payload.getTrends,
    23: ClientResponse_Payload.getFollows,
    24: ClientResponse_Payload.editPost,
    25: ClientResponse_Payload.deletePost,
    26: ClientResponse_Payload.bookmark,
    27: ClientResponse_Payload.pinPost,
    28: ClientResponse_Payload.votePoll,
    29: ClientResponse_Payload.searchPosts,
    30: ClientResponse_Payload.sendDm,
    31: ClientResponse_Payload.getConversations,
    32: ClientResponse_Payload.getMessages,
    33: ClientResponse_Payload.moderate,
    34: ClientResponse_Payload.securityStatus,
    35: ClientResponse_Payload.passkeyRegister,
    36: ClientResponse_Payload.passkeyList,
    37: ClientResponse_Payload.passkeyDelete,
    38: ClientResponse_Payload.passkeyLoginBegin,
    39: ClientResponse_Payload.totpEnrollBegin,
    40: ClientResponse_Payload.totpEnrollFinish,
    41: ClientResponse_Payload.totpDisable,
    42: ClientResponse_Payload.passkeyRegBegin,
    43: ClientResponse_Payload.passkeyRegFinish,
    44: ClientResponse_Payload.passkeyAuthBegin,
    45: ClientResponse_Payload.getModerationList,
    0: ClientResponse_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClientResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..oo(0, [
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      11,
      12,
      13,
      14,
      15,
      16,
      17,
      18,
      19,
      20,
      21,
      22,
      23,
      24,
      25,
      26,
      27,
      28,
      29,
      30,
      31,
      32,
      33,
      34,
      35,
      36,
      37,
      38,
      39,
      40,
      41,
      42,
      43,
      44,
      45
    ])
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(2, _omitFieldNames ? '' : 'success')
    ..aOS(3, _omitFieldNames ? '' : 'errorMessage')
    ..aOM<PingResult>(4, _omitFieldNames ? '' : 'ping',
        subBuilder: PingResult.create)
    ..aOM<AuthResult>(5, _omitFieldNames ? '' : 'auth',
        subBuilder: AuthResult.create)
    ..aOM<GetBalanceResult>(6, _omitFieldNames ? '' : 'getBalance',
        subBuilder: GetBalanceResult.create)
    ..aOM<TransferResult>(7, _omitFieldNames ? '' : 'transfer',
        subBuilder: TransferResult.create)
    ..aOM<GetHistoryResult>(8, _omitFieldNames ? '' : 'getHistory',
        subBuilder: GetHistoryResult.create)
    ..aOM<GetProfileResult>(9, _omitFieldNames ? '' : 'getProfile',
        subBuilder: GetProfileResult.create)
    ..aOM<RegisterResult>(10, _omitFieldNames ? '' : 'register',
        subBuilder: RegisterResult.create)
    ..aOM<CreatePostResult>(11, _omitFieldNames ? '' : 'createPost',
        subBuilder: CreatePostResult.create)
    ..aOM<GetFeedResult>(12, _omitFieldNames ? '' : 'getFeed',
        subBuilder: GetFeedResult.create)
    ..aOM<LikeResult>(13, _omitFieldNames ? '' : 'like',
        subBuilder: LikeResult.create)
    ..aOM<RepostResult>(14, _omitFieldNames ? '' : 'repost',
        subBuilder: RepostResult.create)
    ..aOM<FollowResult>(15, _omitFieldNames ? '' : 'follow',
        subBuilder: FollowResult.create)
    ..aOM<GetActorResult>(16, _omitFieldNames ? '' : 'getActor',
        subBuilder: GetActorResult.create)
    ..aOM<GetThreadResult>(17, _omitFieldNames ? '' : 'getThread',
        subBuilder: GetThreadResult.create)
    ..aOM<SearchActorsResult>(18, _omitFieldNames ? '' : 'searchActors',
        subBuilder: SearchActorsResult.create)
    ..aOM<GetNotificationsResult>(19, _omitFieldNames ? '' : 'getNotifications',
        subBuilder: GetNotificationsResult.create)
    ..aOM<UpdateProfileResult>(20, _omitFieldNames ? '' : 'updateProfile',
        subBuilder: UpdateProfileResult.create)
    ..aOM<UploadMediaResult>(21, _omitFieldNames ? '' : 'uploadMedia',
        subBuilder: UploadMediaResult.create)
    ..aOM<GetTrendsResult>(22, _omitFieldNames ? '' : 'getTrends',
        subBuilder: GetTrendsResult.create)
    ..aOM<GetFollowsResult>(23, _omitFieldNames ? '' : 'getFollows',
        subBuilder: GetFollowsResult.create)
    ..aOM<EditPostResult>(24, _omitFieldNames ? '' : 'editPost',
        subBuilder: EditPostResult.create)
    ..aOM<DeletePostResult>(25, _omitFieldNames ? '' : 'deletePost',
        subBuilder: DeletePostResult.create)
    ..aOM<BookmarkResult>(26, _omitFieldNames ? '' : 'bookmark',
        subBuilder: BookmarkResult.create)
    ..aOM<PinPostResult>(27, _omitFieldNames ? '' : 'pinPost',
        subBuilder: PinPostResult.create)
    ..aOM<VotePollResult>(28, _omitFieldNames ? '' : 'votePoll',
        subBuilder: VotePollResult.create)
    ..aOM<SearchPostsResult>(29, _omitFieldNames ? '' : 'searchPosts',
        subBuilder: SearchPostsResult.create)
    ..aOM<SendDmResult>(30, _omitFieldNames ? '' : 'sendDm',
        subBuilder: SendDmResult.create)
    ..aOM<GetConversationsResult>(31, _omitFieldNames ? '' : 'getConversations',
        subBuilder: GetConversationsResult.create)
    ..aOM<GetMessagesResult>(32, _omitFieldNames ? '' : 'getMessages',
        subBuilder: GetMessagesResult.create)
    ..aOM<ModerateResult>(33, _omitFieldNames ? '' : 'moderate',
        subBuilder: ModerateResult.create)
    ..aOM<SecurityStatusResult>(34, _omitFieldNames ? '' : 'securityStatus',
        subBuilder: SecurityStatusResult.create)
    ..aOM<PasskeyRegisterResult>(35, _omitFieldNames ? '' : 'passkeyRegister',
        subBuilder: PasskeyRegisterResult.create)
    ..aOM<PasskeyListResult>(36, _omitFieldNames ? '' : 'passkeyList',
        subBuilder: PasskeyListResult.create)
    ..aOM<PasskeyDeleteResult>(37, _omitFieldNames ? '' : 'passkeyDelete',
        subBuilder: PasskeyDeleteResult.create)
    ..aOM<PasskeyLoginBeginResult>(
        38, _omitFieldNames ? '' : 'passkeyLoginBegin',
        subBuilder: PasskeyLoginBeginResult.create)
    ..aOM<TotpEnrollBeginResult>(39, _omitFieldNames ? '' : 'totpEnrollBegin',
        subBuilder: TotpEnrollBeginResult.create)
    ..aOM<TotpEnrollFinishResult>(40, _omitFieldNames ? '' : 'totpEnrollFinish',
        subBuilder: TotpEnrollFinishResult.create)
    ..aOM<TotpDisableResult>(41, _omitFieldNames ? '' : 'totpDisable',
        subBuilder: TotpDisableResult.create)
    ..aOM<PasskeyRegBeginResult>(42, _omitFieldNames ? '' : 'passkeyRegBegin',
        subBuilder: PasskeyRegBeginResult.create)
    ..aOM<PasskeyRegFinishResult>(43, _omitFieldNames ? '' : 'passkeyRegFinish',
        subBuilder: PasskeyRegFinishResult.create)
    ..aOM<PasskeyAuthBeginResult>(44, _omitFieldNames ? '' : 'passkeyAuthBegin',
        subBuilder: PasskeyAuthBeginResult.create)
    ..aOM<GetModerationListResult>(
        45, _omitFieldNames ? '' : 'getModerationList',
        subBuilder: GetModerationListResult.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClientResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClientResponse copyWith(void Function(ClientResponse) updates) =>
      super.copyWith((message) => updates(message as ClientResponse))
          as ClientResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientResponse create() => ClientResponse._();
  @$core.override
  ClientResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ClientResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClientResponse>(create);
  static ClientResponse? _defaultInstance;

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  @$pb.TagNumber(23)
  @$pb.TagNumber(24)
  @$pb.TagNumber(25)
  @$pb.TagNumber(26)
  @$pb.TagNumber(27)
  @$pb.TagNumber(28)
  @$pb.TagNumber(29)
  @$pb.TagNumber(30)
  @$pb.TagNumber(31)
  @$pb.TagNumber(32)
  @$pb.TagNumber(33)
  @$pb.TagNumber(34)
  @$pb.TagNumber(35)
  @$pb.TagNumber(36)
  @$pb.TagNumber(37)
  @$pb.TagNumber(38)
  @$pb.TagNumber(39)
  @$pb.TagNumber(40)
  @$pb.TagNumber(41)
  @$pb.TagNumber(42)
  @$pb.TagNumber(43)
  @$pb.TagNumber(44)
  @$pb.TagNumber(45)
  ClientResponse_Payload whichPayload() =>
      _ClientResponse_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  @$pb.TagNumber(23)
  @$pb.TagNumber(24)
  @$pb.TagNumber(25)
  @$pb.TagNumber(26)
  @$pb.TagNumber(27)
  @$pb.TagNumber(28)
  @$pb.TagNumber(29)
  @$pb.TagNumber(30)
  @$pb.TagNumber(31)
  @$pb.TagNumber(32)
  @$pb.TagNumber(33)
  @$pb.TagNumber(34)
  @$pb.TagNumber(35)
  @$pb.TagNumber(36)
  @$pb.TagNumber(37)
  @$pb.TagNumber(38)
  @$pb.TagNumber(39)
  @$pb.TagNumber(40)
  @$pb.TagNumber(41)
  @$pb.TagNumber(42)
  @$pb.TagNumber(43)
  @$pb.TagNumber(44)
  @$pb.TagNumber(45)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get requestId => $_getI64(0);
  @$pb.TagNumber(1)
  set requestId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get success => $_getBF(1);
  @$pb.TagNumber(2)
  set success($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccess() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get errorMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set errorMessage($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasErrorMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrorMessage() => $_clearField(3);

  @$pb.TagNumber(4)
  PingResult get ping => $_getN(3);
  @$pb.TagNumber(4)
  set ping(PingResult value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPing() => $_has(3);
  @$pb.TagNumber(4)
  void clearPing() => $_clearField(4);
  @$pb.TagNumber(4)
  PingResult ensurePing() => $_ensure(3);

  @$pb.TagNumber(5)
  AuthResult get auth => $_getN(4);
  @$pb.TagNumber(5)
  set auth(AuthResult value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasAuth() => $_has(4);
  @$pb.TagNumber(5)
  void clearAuth() => $_clearField(5);
  @$pb.TagNumber(5)
  AuthResult ensureAuth() => $_ensure(4);

  @$pb.TagNumber(6)
  GetBalanceResult get getBalance => $_getN(5);
  @$pb.TagNumber(6)
  set getBalance(GetBalanceResult value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasGetBalance() => $_has(5);
  @$pb.TagNumber(6)
  void clearGetBalance() => $_clearField(6);
  @$pb.TagNumber(6)
  GetBalanceResult ensureGetBalance() => $_ensure(5);

  @$pb.TagNumber(7)
  TransferResult get transfer => $_getN(6);
  @$pb.TagNumber(7)
  set transfer(TransferResult value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasTransfer() => $_has(6);
  @$pb.TagNumber(7)
  void clearTransfer() => $_clearField(7);
  @$pb.TagNumber(7)
  TransferResult ensureTransfer() => $_ensure(6);

  @$pb.TagNumber(8)
  GetHistoryResult get getHistory => $_getN(7);
  @$pb.TagNumber(8)
  set getHistory(GetHistoryResult value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasGetHistory() => $_has(7);
  @$pb.TagNumber(8)
  void clearGetHistory() => $_clearField(8);
  @$pb.TagNumber(8)
  GetHistoryResult ensureGetHistory() => $_ensure(7);

  @$pb.TagNumber(9)
  GetProfileResult get getProfile => $_getN(8);
  @$pb.TagNumber(9)
  set getProfile(GetProfileResult value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasGetProfile() => $_has(8);
  @$pb.TagNumber(9)
  void clearGetProfile() => $_clearField(9);
  @$pb.TagNumber(9)
  GetProfileResult ensureGetProfile() => $_ensure(8);

  /// Social plane
  @$pb.TagNumber(10)
  RegisterResult get register => $_getN(9);
  @$pb.TagNumber(10)
  set register(RegisterResult value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasRegister() => $_has(9);
  @$pb.TagNumber(10)
  void clearRegister() => $_clearField(10);
  @$pb.TagNumber(10)
  RegisterResult ensureRegister() => $_ensure(9);

  @$pb.TagNumber(11)
  CreatePostResult get createPost => $_getN(10);
  @$pb.TagNumber(11)
  set createPost(CreatePostResult value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasCreatePost() => $_has(10);
  @$pb.TagNumber(11)
  void clearCreatePost() => $_clearField(11);
  @$pb.TagNumber(11)
  CreatePostResult ensureCreatePost() => $_ensure(10);

  @$pb.TagNumber(12)
  GetFeedResult get getFeed => $_getN(11);
  @$pb.TagNumber(12)
  set getFeed(GetFeedResult value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasGetFeed() => $_has(11);
  @$pb.TagNumber(12)
  void clearGetFeed() => $_clearField(12);
  @$pb.TagNumber(12)
  GetFeedResult ensureGetFeed() => $_ensure(11);

  @$pb.TagNumber(13)
  LikeResult get like => $_getN(12);
  @$pb.TagNumber(13)
  set like(LikeResult value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasLike() => $_has(12);
  @$pb.TagNumber(13)
  void clearLike() => $_clearField(13);
  @$pb.TagNumber(13)
  LikeResult ensureLike() => $_ensure(12);

  @$pb.TagNumber(14)
  RepostResult get repost => $_getN(13);
  @$pb.TagNumber(14)
  set repost(RepostResult value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasRepost() => $_has(13);
  @$pb.TagNumber(14)
  void clearRepost() => $_clearField(14);
  @$pb.TagNumber(14)
  RepostResult ensureRepost() => $_ensure(13);

  @$pb.TagNumber(15)
  FollowResult get follow => $_getN(14);
  @$pb.TagNumber(15)
  set follow(FollowResult value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasFollow() => $_has(14);
  @$pb.TagNumber(15)
  void clearFollow() => $_clearField(15);
  @$pb.TagNumber(15)
  FollowResult ensureFollow() => $_ensure(14);

  @$pb.TagNumber(16)
  GetActorResult get getActor => $_getN(15);
  @$pb.TagNumber(16)
  set getActor(GetActorResult value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasGetActor() => $_has(15);
  @$pb.TagNumber(16)
  void clearGetActor() => $_clearField(16);
  @$pb.TagNumber(16)
  GetActorResult ensureGetActor() => $_ensure(15);

  @$pb.TagNumber(17)
  GetThreadResult get getThread => $_getN(16);
  @$pb.TagNumber(17)
  set getThread(GetThreadResult value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasGetThread() => $_has(16);
  @$pb.TagNumber(17)
  void clearGetThread() => $_clearField(17);
  @$pb.TagNumber(17)
  GetThreadResult ensureGetThread() => $_ensure(16);

  @$pb.TagNumber(18)
  SearchActorsResult get searchActors => $_getN(17);
  @$pb.TagNumber(18)
  set searchActors(SearchActorsResult value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasSearchActors() => $_has(17);
  @$pb.TagNumber(18)
  void clearSearchActors() => $_clearField(18);
  @$pb.TagNumber(18)
  SearchActorsResult ensureSearchActors() => $_ensure(17);

  @$pb.TagNumber(19)
  GetNotificationsResult get getNotifications => $_getN(18);
  @$pb.TagNumber(19)
  set getNotifications(GetNotificationsResult value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasGetNotifications() => $_has(18);
  @$pb.TagNumber(19)
  void clearGetNotifications() => $_clearField(19);
  @$pb.TagNumber(19)
  GetNotificationsResult ensureGetNotifications() => $_ensure(18);

  @$pb.TagNumber(20)
  UpdateProfileResult get updateProfile => $_getN(19);
  @$pb.TagNumber(20)
  set updateProfile(UpdateProfileResult value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasUpdateProfile() => $_has(19);
  @$pb.TagNumber(20)
  void clearUpdateProfile() => $_clearField(20);
  @$pb.TagNumber(20)
  UpdateProfileResult ensureUpdateProfile() => $_ensure(19);

  @$pb.TagNumber(21)
  UploadMediaResult get uploadMedia => $_getN(20);
  @$pb.TagNumber(21)
  set uploadMedia(UploadMediaResult value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasUploadMedia() => $_has(20);
  @$pb.TagNumber(21)
  void clearUploadMedia() => $_clearField(21);
  @$pb.TagNumber(21)
  UploadMediaResult ensureUploadMedia() => $_ensure(20);

  @$pb.TagNumber(22)
  GetTrendsResult get getTrends => $_getN(21);
  @$pb.TagNumber(22)
  set getTrends(GetTrendsResult value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasGetTrends() => $_has(21);
  @$pb.TagNumber(22)
  void clearGetTrends() => $_clearField(22);
  @$pb.TagNumber(22)
  GetTrendsResult ensureGetTrends() => $_ensure(21);

  @$pb.TagNumber(23)
  GetFollowsResult get getFollows => $_getN(22);
  @$pb.TagNumber(23)
  set getFollows(GetFollowsResult value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasGetFollows() => $_has(22);
  @$pb.TagNumber(23)
  void clearGetFollows() => $_clearField(23);
  @$pb.TagNumber(23)
  GetFollowsResult ensureGetFollows() => $_ensure(22);

  @$pb.TagNumber(24)
  EditPostResult get editPost => $_getN(23);
  @$pb.TagNumber(24)
  set editPost(EditPostResult value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasEditPost() => $_has(23);
  @$pb.TagNumber(24)
  void clearEditPost() => $_clearField(24);
  @$pb.TagNumber(24)
  EditPostResult ensureEditPost() => $_ensure(23);

  @$pb.TagNumber(25)
  DeletePostResult get deletePost => $_getN(24);
  @$pb.TagNumber(25)
  set deletePost(DeletePostResult value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasDeletePost() => $_has(24);
  @$pb.TagNumber(25)
  void clearDeletePost() => $_clearField(25);
  @$pb.TagNumber(25)
  DeletePostResult ensureDeletePost() => $_ensure(24);

  @$pb.TagNumber(26)
  BookmarkResult get bookmark => $_getN(25);
  @$pb.TagNumber(26)
  set bookmark(BookmarkResult value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasBookmark() => $_has(25);
  @$pb.TagNumber(26)
  void clearBookmark() => $_clearField(26);
  @$pb.TagNumber(26)
  BookmarkResult ensureBookmark() => $_ensure(25);

  @$pb.TagNumber(27)
  PinPostResult get pinPost => $_getN(26);
  @$pb.TagNumber(27)
  set pinPost(PinPostResult value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasPinPost() => $_has(26);
  @$pb.TagNumber(27)
  void clearPinPost() => $_clearField(27);
  @$pb.TagNumber(27)
  PinPostResult ensurePinPost() => $_ensure(26);

  @$pb.TagNumber(28)
  VotePollResult get votePoll => $_getN(27);
  @$pb.TagNumber(28)
  set votePoll(VotePollResult value) => $_setField(28, value);
  @$pb.TagNumber(28)
  $core.bool hasVotePoll() => $_has(27);
  @$pb.TagNumber(28)
  void clearVotePoll() => $_clearField(28);
  @$pb.TagNumber(28)
  VotePollResult ensureVotePoll() => $_ensure(27);

  @$pb.TagNumber(29)
  SearchPostsResult get searchPosts => $_getN(28);
  @$pb.TagNumber(29)
  set searchPosts(SearchPostsResult value) => $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasSearchPosts() => $_has(28);
  @$pb.TagNumber(29)
  void clearSearchPosts() => $_clearField(29);
  @$pb.TagNumber(29)
  SearchPostsResult ensureSearchPosts() => $_ensure(28);

  @$pb.TagNumber(30)
  SendDmResult get sendDm => $_getN(29);
  @$pb.TagNumber(30)
  set sendDm(SendDmResult value) => $_setField(30, value);
  @$pb.TagNumber(30)
  $core.bool hasSendDm() => $_has(29);
  @$pb.TagNumber(30)
  void clearSendDm() => $_clearField(30);
  @$pb.TagNumber(30)
  SendDmResult ensureSendDm() => $_ensure(29);

  @$pb.TagNumber(31)
  GetConversationsResult get getConversations => $_getN(30);
  @$pb.TagNumber(31)
  set getConversations(GetConversationsResult value) => $_setField(31, value);
  @$pb.TagNumber(31)
  $core.bool hasGetConversations() => $_has(30);
  @$pb.TagNumber(31)
  void clearGetConversations() => $_clearField(31);
  @$pb.TagNumber(31)
  GetConversationsResult ensureGetConversations() => $_ensure(30);

  @$pb.TagNumber(32)
  GetMessagesResult get getMessages => $_getN(31);
  @$pb.TagNumber(32)
  set getMessages(GetMessagesResult value) => $_setField(32, value);
  @$pb.TagNumber(32)
  $core.bool hasGetMessages() => $_has(31);
  @$pb.TagNumber(32)
  void clearGetMessages() => $_clearField(32);
  @$pb.TagNumber(32)
  GetMessagesResult ensureGetMessages() => $_ensure(31);

  @$pb.TagNumber(33)
  ModerateResult get moderate => $_getN(32);
  @$pb.TagNumber(33)
  set moderate(ModerateResult value) => $_setField(33, value);
  @$pb.TagNumber(33)
  $core.bool hasModerate() => $_has(32);
  @$pb.TagNumber(33)
  void clearModerate() => $_clearField(33);
  @$pb.TagNumber(33)
  ModerateResult ensureModerate() => $_ensure(32);

  /// Account security plane
  @$pb.TagNumber(34)
  SecurityStatusResult get securityStatus => $_getN(33);
  @$pb.TagNumber(34)
  set securityStatus(SecurityStatusResult value) => $_setField(34, value);
  @$pb.TagNumber(34)
  $core.bool hasSecurityStatus() => $_has(33);
  @$pb.TagNumber(34)
  void clearSecurityStatus() => $_clearField(34);
  @$pb.TagNumber(34)
  SecurityStatusResult ensureSecurityStatus() => $_ensure(33);

  @$pb.TagNumber(35)
  PasskeyRegisterResult get passkeyRegister => $_getN(34);
  @$pb.TagNumber(35)
  set passkeyRegister(PasskeyRegisterResult value) => $_setField(35, value);
  @$pb.TagNumber(35)
  $core.bool hasPasskeyRegister() => $_has(34);
  @$pb.TagNumber(35)
  void clearPasskeyRegister() => $_clearField(35);
  @$pb.TagNumber(35)
  PasskeyRegisterResult ensurePasskeyRegister() => $_ensure(34);

  @$pb.TagNumber(36)
  PasskeyListResult get passkeyList => $_getN(35);
  @$pb.TagNumber(36)
  set passkeyList(PasskeyListResult value) => $_setField(36, value);
  @$pb.TagNumber(36)
  $core.bool hasPasskeyList() => $_has(35);
  @$pb.TagNumber(36)
  void clearPasskeyList() => $_clearField(36);
  @$pb.TagNumber(36)
  PasskeyListResult ensurePasskeyList() => $_ensure(35);

  @$pb.TagNumber(37)
  PasskeyDeleteResult get passkeyDelete => $_getN(36);
  @$pb.TagNumber(37)
  set passkeyDelete(PasskeyDeleteResult value) => $_setField(37, value);
  @$pb.TagNumber(37)
  $core.bool hasPasskeyDelete() => $_has(36);
  @$pb.TagNumber(37)
  void clearPasskeyDelete() => $_clearField(37);
  @$pb.TagNumber(37)
  PasskeyDeleteResult ensurePasskeyDelete() => $_ensure(36);

  @$pb.TagNumber(38)
  PasskeyLoginBeginResult get passkeyLoginBegin => $_getN(37);
  @$pb.TagNumber(38)
  set passkeyLoginBegin(PasskeyLoginBeginResult value) => $_setField(38, value);
  @$pb.TagNumber(38)
  $core.bool hasPasskeyLoginBegin() => $_has(37);
  @$pb.TagNumber(38)
  void clearPasskeyLoginBegin() => $_clearField(38);
  @$pb.TagNumber(38)
  PasskeyLoginBeginResult ensurePasskeyLoginBegin() => $_ensure(37);

  /// passkey_login_finish reuses the auth result (payload = auth)
  @$pb.TagNumber(39)
  TotpEnrollBeginResult get totpEnrollBegin => $_getN(38);
  @$pb.TagNumber(39)
  set totpEnrollBegin(TotpEnrollBeginResult value) => $_setField(39, value);
  @$pb.TagNumber(39)
  $core.bool hasTotpEnrollBegin() => $_has(38);
  @$pb.TagNumber(39)
  void clearTotpEnrollBegin() => $_clearField(39);
  @$pb.TagNumber(39)
  TotpEnrollBeginResult ensureTotpEnrollBegin() => $_ensure(38);

  @$pb.TagNumber(40)
  TotpEnrollFinishResult get totpEnrollFinish => $_getN(39);
  @$pb.TagNumber(40)
  set totpEnrollFinish(TotpEnrollFinishResult value) => $_setField(40, value);
  @$pb.TagNumber(40)
  $core.bool hasTotpEnrollFinish() => $_has(39);
  @$pb.TagNumber(40)
  void clearTotpEnrollFinish() => $_clearField(40);
  @$pb.TagNumber(40)
  TotpEnrollFinishResult ensureTotpEnrollFinish() => $_ensure(39);

  @$pb.TagNumber(41)
  TotpDisableResult get totpDisable => $_getN(40);
  @$pb.TagNumber(41)
  set totpDisable(TotpDisableResult value) => $_setField(41, value);
  @$pb.TagNumber(41)
  $core.bool hasTotpDisable() => $_has(40);
  @$pb.TagNumber(41)
  void clearTotpDisable() => $_clearField(41);
  @$pb.TagNumber(41)
  TotpDisableResult ensureTotpDisable() => $_ensure(40);

  /// Platform passkeys (WebAuthn)
  @$pb.TagNumber(42)
  PasskeyRegBeginResult get passkeyRegBegin => $_getN(41);
  @$pb.TagNumber(42)
  set passkeyRegBegin(PasskeyRegBeginResult value) => $_setField(42, value);
  @$pb.TagNumber(42)
  $core.bool hasPasskeyRegBegin() => $_has(41);
  @$pb.TagNumber(42)
  void clearPasskeyRegBegin() => $_clearField(42);
  @$pb.TagNumber(42)
  PasskeyRegBeginResult ensurePasskeyRegBegin() => $_ensure(41);

  @$pb.TagNumber(43)
  PasskeyRegFinishResult get passkeyRegFinish => $_getN(42);
  @$pb.TagNumber(43)
  set passkeyRegFinish(PasskeyRegFinishResult value) => $_setField(43, value);
  @$pb.TagNumber(43)
  $core.bool hasPasskeyRegFinish() => $_has(42);
  @$pb.TagNumber(43)
  void clearPasskeyRegFinish() => $_clearField(43);
  @$pb.TagNumber(43)
  PasskeyRegFinishResult ensurePasskeyRegFinish() => $_ensure(42);

  @$pb.TagNumber(44)
  PasskeyAuthBeginResult get passkeyAuthBegin => $_getN(43);
  @$pb.TagNumber(44)
  set passkeyAuthBegin(PasskeyAuthBeginResult value) => $_setField(44, value);
  @$pb.TagNumber(44)
  $core.bool hasPasskeyAuthBegin() => $_has(43);
  @$pb.TagNumber(44)
  void clearPasskeyAuthBegin() => $_clearField(44);
  @$pb.TagNumber(44)
  PasskeyAuthBeginResult ensurePasskeyAuthBegin() => $_ensure(43);

  /// passkey_auth_finish reuses the auth result (payload = auth)
  @$pb.TagNumber(45)
  GetModerationListResult get getModerationList => $_getN(44);
  @$pb.TagNumber(45)
  set getModerationList(GetModerationListResult value) => $_setField(45, value);
  @$pb.TagNumber(45)
  $core.bool hasGetModerationList() => $_has(44);
  @$pb.TagNumber(45)
  void clearGetModerationList() => $_clearField(45);
  @$pb.TagNumber(45)
  GetModerationListResult ensureGetModerationList() => $_ensure(44);
}

class GetModerationListResult extends $pb.GeneratedMessage {
  factory GetModerationListResult({
    $core.Iterable<Actor>? actors,
  }) {
    final result = create();
    if (actors != null) result.actors.addAll(actors);
    return result;
  }

  GetModerationListResult._();

  factory GetModerationListResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetModerationListResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetModerationListResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..pPM<Actor>(1, _omitFieldNames ? '' : 'actors', subBuilder: Actor.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetModerationListResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetModerationListResult copyWith(
          void Function(GetModerationListResult) updates) =>
      super.copyWith((message) => updates(message as GetModerationListResult))
          as GetModerationListResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetModerationListResult create() => GetModerationListResult._();
  @$core.override
  GetModerationListResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetModerationListResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetModerationListResult>(create);
  static GetModerationListResult? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Actor> get actors => $_getList(0);
}

class PasskeyRegBeginResult extends $pb.GeneratedMessage {
  factory PasskeyRegBeginResult({
    $core.String? optionsJson,
  }) {
    final result = create();
    if (optionsJson != null) result.optionsJson = optionsJson;
    return result;
  }

  PasskeyRegBeginResult._();

  factory PasskeyRegBeginResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PasskeyRegBeginResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PasskeyRegBeginResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'optionsJson')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyRegBeginResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyRegBeginResult copyWith(
          void Function(PasskeyRegBeginResult) updates) =>
      super.copyWith((message) => updates(message as PasskeyRegBeginResult))
          as PasskeyRegBeginResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PasskeyRegBeginResult create() => PasskeyRegBeginResult._();
  @$core.override
  PasskeyRegBeginResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PasskeyRegBeginResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PasskeyRegBeginResult>(create);
  static PasskeyRegBeginResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get optionsJson => $_getSZ(0);
  @$pb.TagNumber(1)
  set optionsJson($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOptionsJson() => $_has(0);
  @$pb.TagNumber(1)
  void clearOptionsJson() => $_clearField(1);
}

class PasskeyRegFinishResult extends $pb.GeneratedMessage {
  factory PasskeyRegFinishResult({
    Passkey? passkey,
  }) {
    final result = create();
    if (passkey != null) result.passkey = passkey;
    return result;
  }

  PasskeyRegFinishResult._();

  factory PasskeyRegFinishResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PasskeyRegFinishResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PasskeyRegFinishResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<Passkey>(1, _omitFieldNames ? '' : 'passkey',
        subBuilder: Passkey.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyRegFinishResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyRegFinishResult copyWith(
          void Function(PasskeyRegFinishResult) updates) =>
      super.copyWith((message) => updates(message as PasskeyRegFinishResult))
          as PasskeyRegFinishResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PasskeyRegFinishResult create() => PasskeyRegFinishResult._();
  @$core.override
  PasskeyRegFinishResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PasskeyRegFinishResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PasskeyRegFinishResult>(create);
  static PasskeyRegFinishResult? _defaultInstance;

  @$pb.TagNumber(1)
  Passkey get passkey => $_getN(0);
  @$pb.TagNumber(1)
  set passkey(Passkey value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPasskey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPasskey() => $_clearField(1);
  @$pb.TagNumber(1)
  Passkey ensurePasskey() => $_ensure(0);
}

class PasskeyAuthBeginResult extends $pb.GeneratedMessage {
  factory PasskeyAuthBeginResult({
    $core.String? flowId,
    $core.String? optionsJson,
  }) {
    final result = create();
    if (flowId != null) result.flowId = flowId;
    if (optionsJson != null) result.optionsJson = optionsJson;
    return result;
  }

  PasskeyAuthBeginResult._();

  factory PasskeyAuthBeginResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PasskeyAuthBeginResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PasskeyAuthBeginResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'flowId')
    ..aOS(2, _omitFieldNames ? '' : 'optionsJson')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyAuthBeginResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyAuthBeginResult copyWith(
          void Function(PasskeyAuthBeginResult) updates) =>
      super.copyWith((message) => updates(message as PasskeyAuthBeginResult))
          as PasskeyAuthBeginResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PasskeyAuthBeginResult create() => PasskeyAuthBeginResult._();
  @$core.override
  PasskeyAuthBeginResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PasskeyAuthBeginResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PasskeyAuthBeginResult>(create);
  static PasskeyAuthBeginResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get flowId => $_getSZ(0);
  @$pb.TagNumber(1)
  set flowId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFlowId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFlowId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get optionsJson => $_getSZ(1);
  @$pb.TagNumber(2)
  set optionsJson($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOptionsJson() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptionsJson() => $_clearField(2);
}

class SecurityStatusResult extends $pb.GeneratedMessage {
  factory SecurityStatusResult({
    $core.bool? totpEnabled,
    $core.int? passkeyCount,
    $core.Iterable<Passkey>? passkeys,
    $core.int? recoveryRemaining,
  }) {
    final result = create();
    if (totpEnabled != null) result.totpEnabled = totpEnabled;
    if (passkeyCount != null) result.passkeyCount = passkeyCount;
    if (passkeys != null) result.passkeys.addAll(passkeys);
    if (recoveryRemaining != null) result.recoveryRemaining = recoveryRemaining;
    return result;
  }

  SecurityStatusResult._();

  factory SecurityStatusResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SecurityStatusResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SecurityStatusResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'totpEnabled')
    ..aI(2, _omitFieldNames ? '' : 'passkeyCount',
        fieldType: $pb.PbFieldType.OU3)
    ..pPM<Passkey>(3, _omitFieldNames ? '' : 'passkeys',
        subBuilder: Passkey.create)
    ..aI(4, _omitFieldNames ? '' : 'recoveryRemaining',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SecurityStatusResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SecurityStatusResult copyWith(void Function(SecurityStatusResult) updates) =>
      super.copyWith((message) => updates(message as SecurityStatusResult))
          as SecurityStatusResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SecurityStatusResult create() => SecurityStatusResult._();
  @$core.override
  SecurityStatusResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SecurityStatusResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SecurityStatusResult>(create);
  static SecurityStatusResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get totpEnabled => $_getBF(0);
  @$pb.TagNumber(1)
  set totpEnabled($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotpEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotpEnabled() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get passkeyCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set passkeyCount($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPasskeyCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearPasskeyCount() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<Passkey> get passkeys => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get recoveryRemaining => $_getIZ(3);
  @$pb.TagNumber(4)
  set recoveryRemaining($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRecoveryRemaining() => $_has(3);
  @$pb.TagNumber(4)
  void clearRecoveryRemaining() => $_clearField(4);
}

class PasskeyRegisterResult extends $pb.GeneratedMessage {
  factory PasskeyRegisterResult({
    Passkey? passkey,
  }) {
    final result = create();
    if (passkey != null) result.passkey = passkey;
    return result;
  }

  PasskeyRegisterResult._();

  factory PasskeyRegisterResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PasskeyRegisterResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PasskeyRegisterResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<Passkey>(1, _omitFieldNames ? '' : 'passkey',
        subBuilder: Passkey.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyRegisterResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyRegisterResult copyWith(
          void Function(PasskeyRegisterResult) updates) =>
      super.copyWith((message) => updates(message as PasskeyRegisterResult))
          as PasskeyRegisterResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PasskeyRegisterResult create() => PasskeyRegisterResult._();
  @$core.override
  PasskeyRegisterResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PasskeyRegisterResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PasskeyRegisterResult>(create);
  static PasskeyRegisterResult? _defaultInstance;

  @$pb.TagNumber(1)
  Passkey get passkey => $_getN(0);
  @$pb.TagNumber(1)
  set passkey(Passkey value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPasskey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPasskey() => $_clearField(1);
  @$pb.TagNumber(1)
  Passkey ensurePasskey() => $_ensure(0);
}

class PasskeyListResult extends $pb.GeneratedMessage {
  factory PasskeyListResult({
    $core.Iterable<Passkey>? passkeys,
  }) {
    final result = create();
    if (passkeys != null) result.passkeys.addAll(passkeys);
    return result;
  }

  PasskeyListResult._();

  factory PasskeyListResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PasskeyListResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PasskeyListResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..pPM<Passkey>(1, _omitFieldNames ? '' : 'passkeys',
        subBuilder: Passkey.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyListResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyListResult copyWith(void Function(PasskeyListResult) updates) =>
      super.copyWith((message) => updates(message as PasskeyListResult))
          as PasskeyListResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PasskeyListResult create() => PasskeyListResult._();
  @$core.override
  PasskeyListResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PasskeyListResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PasskeyListResult>(create);
  static PasskeyListResult? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Passkey> get passkeys => $_getList(0);
}

class PasskeyDeleteResult extends $pb.GeneratedMessage {
  factory PasskeyDeleteResult() => create();

  PasskeyDeleteResult._();

  factory PasskeyDeleteResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PasskeyDeleteResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PasskeyDeleteResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyDeleteResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyDeleteResult copyWith(void Function(PasskeyDeleteResult) updates) =>
      super.copyWith((message) => updates(message as PasskeyDeleteResult))
          as PasskeyDeleteResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PasskeyDeleteResult create() => PasskeyDeleteResult._();
  @$core.override
  PasskeyDeleteResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PasskeyDeleteResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PasskeyDeleteResult>(create);
  static PasskeyDeleteResult? _defaultInstance;
}

class PasskeyLoginBeginResult extends $pb.GeneratedMessage {
  factory PasskeyLoginBeginResult({
    $core.List<$core.int>? challenge,
    $core.Iterable<$core.String>? credentialIds,
  }) {
    final result = create();
    if (challenge != null) result.challenge = challenge;
    if (credentialIds != null) result.credentialIds.addAll(credentialIds);
    return result;
  }

  PasskeyLoginBeginResult._();

  factory PasskeyLoginBeginResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PasskeyLoginBeginResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PasskeyLoginBeginResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'challenge', $pb.PbFieldType.OY)
    ..pPS(2, _omitFieldNames ? '' : 'credentialIds')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyLoginBeginResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PasskeyLoginBeginResult copyWith(
          void Function(PasskeyLoginBeginResult) updates) =>
      super.copyWith((message) => updates(message as PasskeyLoginBeginResult))
          as PasskeyLoginBeginResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PasskeyLoginBeginResult create() => PasskeyLoginBeginResult._();
  @$core.override
  PasskeyLoginBeginResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PasskeyLoginBeginResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PasskeyLoginBeginResult>(create);
  static PasskeyLoginBeginResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get challenge => $_getN(0);
  @$pb.TagNumber(1)
  set challenge($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasChallenge() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallenge() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get credentialIds => $_getList(1);
}

class TotpEnrollBeginResult extends $pb.GeneratedMessage {
  factory TotpEnrollBeginResult({
    $core.String? secretBase32,
    $core.String? otpauthUri,
  }) {
    final result = create();
    if (secretBase32 != null) result.secretBase32 = secretBase32;
    if (otpauthUri != null) result.otpauthUri = otpauthUri;
    return result;
  }

  TotpEnrollBeginResult._();

  factory TotpEnrollBeginResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TotpEnrollBeginResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TotpEnrollBeginResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'secretBase32')
    ..aOS(2, _omitFieldNames ? '' : 'otpauthUri')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TotpEnrollBeginResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TotpEnrollBeginResult copyWith(
          void Function(TotpEnrollBeginResult) updates) =>
      super.copyWith((message) => updates(message as TotpEnrollBeginResult))
          as TotpEnrollBeginResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TotpEnrollBeginResult create() => TotpEnrollBeginResult._();
  @$core.override
  TotpEnrollBeginResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TotpEnrollBeginResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TotpEnrollBeginResult>(create);
  static TotpEnrollBeginResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get secretBase32 => $_getSZ(0);
  @$pb.TagNumber(1)
  set secretBase32($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSecretBase32() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecretBase32() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get otpauthUri => $_getSZ(1);
  @$pb.TagNumber(2)
  set otpauthUri($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOtpauthUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearOtpauthUri() => $_clearField(2);
}

class TotpEnrollFinishResult extends $pb.GeneratedMessage {
  factory TotpEnrollFinishResult({
    $core.Iterable<$core.String>? recoveryCodes,
  }) {
    final result = create();
    if (recoveryCodes != null) result.recoveryCodes.addAll(recoveryCodes);
    return result;
  }

  TotpEnrollFinishResult._();

  factory TotpEnrollFinishResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TotpEnrollFinishResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TotpEnrollFinishResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'recoveryCodes')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TotpEnrollFinishResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TotpEnrollFinishResult copyWith(
          void Function(TotpEnrollFinishResult) updates) =>
      super.copyWith((message) => updates(message as TotpEnrollFinishResult))
          as TotpEnrollFinishResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TotpEnrollFinishResult create() => TotpEnrollFinishResult._();
  @$core.override
  TotpEnrollFinishResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TotpEnrollFinishResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TotpEnrollFinishResult>(create);
  static TotpEnrollFinishResult? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get recoveryCodes => $_getList(0);
}

class TotpDisableResult extends $pb.GeneratedMessage {
  factory TotpDisableResult() => create();

  TotpDisableResult._();

  factory TotpDisableResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TotpDisableResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TotpDisableResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TotpDisableResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TotpDisableResult copyWith(void Function(TotpDisableResult) updates) =>
      super.copyWith((message) => updates(message as TotpDisableResult))
          as TotpDisableResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TotpDisableResult create() => TotpDisableResult._();
  @$core.override
  TotpDisableResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TotpDisableResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TotpDisableResult>(create);
  static TotpDisableResult? _defaultInstance;
}

class PinPostResult extends $pb.GeneratedMessage {
  factory PinPostResult({
    $core.String? pinnedPostId,
  }) {
    final result = create();
    if (pinnedPostId != null) result.pinnedPostId = pinnedPostId;
    return result;
  }

  PinPostResult._();

  factory PinPostResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PinPostResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PinPostResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pinnedPostId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PinPostResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PinPostResult copyWith(void Function(PinPostResult) updates) =>
      super.copyWith((message) => updates(message as PinPostResult))
          as PinPostResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PinPostResult create() => PinPostResult._();
  @$core.override
  PinPostResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PinPostResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PinPostResult>(create);
  static PinPostResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pinnedPostId => $_getSZ(0);
  @$pb.TagNumber(1)
  set pinnedPostId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPinnedPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPinnedPostId() => $_clearField(1);
}

class VotePollResult extends $pb.GeneratedMessage {
  factory VotePollResult({
    $core.String? postId,
    Poll? poll,
  }) {
    final result = create();
    if (postId != null) result.postId = postId;
    if (poll != null) result.poll = poll;
    return result;
  }

  VotePollResult._();

  factory VotePollResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VotePollResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VotePollResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'postId')
    ..aOM<Poll>(2, _omitFieldNames ? '' : 'poll', subBuilder: Poll.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VotePollResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VotePollResult copyWith(void Function(VotePollResult) updates) =>
      super.copyWith((message) => updates(message as VotePollResult))
          as VotePollResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VotePollResult create() => VotePollResult._();
  @$core.override
  VotePollResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VotePollResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VotePollResult>(create);
  static VotePollResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get postId => $_getSZ(0);
  @$pb.TagNumber(1)
  set postId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => $_clearField(1);

  @$pb.TagNumber(2)
  Poll get poll => $_getN(1);
  @$pb.TagNumber(2)
  set poll(Poll value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPoll() => $_has(1);
  @$pb.TagNumber(2)
  void clearPoll() => $_clearField(2);
  @$pb.TagNumber(2)
  Poll ensurePoll() => $_ensure(1);
}

class SearchPostsResult extends $pb.GeneratedMessage {
  factory SearchPostsResult({
    $core.Iterable<FeedItem>? items,
    $core.String? nextCursor,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    if (nextCursor != null) result.nextCursor = nextCursor;
    return result;
  }

  SearchPostsResult._();

  factory SearchPostsResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SearchPostsResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchPostsResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..pPM<FeedItem>(1, _omitFieldNames ? '' : 'items',
        subBuilder: FeedItem.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextCursor')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchPostsResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchPostsResult copyWith(void Function(SearchPostsResult) updates) =>
      super.copyWith((message) => updates(message as SearchPostsResult))
          as SearchPostsResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchPostsResult create() => SearchPostsResult._();
  @$core.override
  SearchPostsResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SearchPostsResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchPostsResult>(create);
  static SearchPostsResult? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<FeedItem> get items => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextCursor => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextCursor($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNextCursor() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextCursor() => $_clearField(2);
}

class SendDmResult extends $pb.GeneratedMessage {
  factory SendDmResult({
    DmMessage? message,
  }) {
    final result = create();
    if (message != null) result.message = message;
    return result;
  }

  SendDmResult._();

  factory SendDmResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SendDmResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SendDmResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<DmMessage>(1, _omitFieldNames ? '' : 'message',
        subBuilder: DmMessage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SendDmResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SendDmResult copyWith(void Function(SendDmResult) updates) =>
      super.copyWith((message) => updates(message as SendDmResult))
          as SendDmResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendDmResult create() => SendDmResult._();
  @$core.override
  SendDmResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SendDmResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SendDmResult>(create);
  static SendDmResult? _defaultInstance;

  @$pb.TagNumber(1)
  DmMessage get message => $_getN(0);
  @$pb.TagNumber(1)
  set message(DmMessage value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => $_clearField(1);
  @$pb.TagNumber(1)
  DmMessage ensureMessage() => $_ensure(0);
}

class GetConversationsResult extends $pb.GeneratedMessage {
  factory GetConversationsResult({
    $core.Iterable<Conversation>? conversations,
    $core.String? nextCursor,
    $core.int? totalUnread,
  }) {
    final result = create();
    if (conversations != null) result.conversations.addAll(conversations);
    if (nextCursor != null) result.nextCursor = nextCursor;
    if (totalUnread != null) result.totalUnread = totalUnread;
    return result;
  }

  GetConversationsResult._();

  factory GetConversationsResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetConversationsResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetConversationsResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..pPM<Conversation>(1, _omitFieldNames ? '' : 'conversations',
        subBuilder: Conversation.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextCursor')
    ..aI(3, _omitFieldNames ? '' : 'totalUnread',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetConversationsResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetConversationsResult copyWith(
          void Function(GetConversationsResult) updates) =>
      super.copyWith((message) => updates(message as GetConversationsResult))
          as GetConversationsResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetConversationsResult create() => GetConversationsResult._();
  @$core.override
  GetConversationsResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetConversationsResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetConversationsResult>(create);
  static GetConversationsResult? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Conversation> get conversations => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextCursor => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextCursor($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNextCursor() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextCursor() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalUnread => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalUnread($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTotalUnread() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalUnread() => $_clearField(3);
}

class GetMessagesResult extends $pb.GeneratedMessage {
  factory GetMessagesResult({
    Actor? peer,
    $core.Iterable<DmMessage>? messages,
    $core.String? nextCursor,
  }) {
    final result = create();
    if (peer != null) result.peer = peer;
    if (messages != null) result.messages.addAll(messages);
    if (nextCursor != null) result.nextCursor = nextCursor;
    return result;
  }

  GetMessagesResult._();

  factory GetMessagesResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMessagesResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMessagesResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<Actor>(1, _omitFieldNames ? '' : 'peer', subBuilder: Actor.create)
    ..pPM<DmMessage>(2, _omitFieldNames ? '' : 'messages',
        subBuilder: DmMessage.create)
    ..aOS(3, _omitFieldNames ? '' : 'nextCursor')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMessagesResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMessagesResult copyWith(void Function(GetMessagesResult) updates) =>
      super.copyWith((message) => updates(message as GetMessagesResult))
          as GetMessagesResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMessagesResult create() => GetMessagesResult._();
  @$core.override
  GetMessagesResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMessagesResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMessagesResult>(create);
  static GetMessagesResult? _defaultInstance;

  @$pb.TagNumber(1)
  Actor get peer => $_getN(0);
  @$pb.TagNumber(1)
  set peer(Actor value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPeer() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeer() => $_clearField(1);
  @$pb.TagNumber(1)
  Actor ensurePeer() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<DmMessage> get messages => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get nextCursor => $_getSZ(2);
  @$pb.TagNumber(3)
  set nextCursor($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNextCursor() => $_has(2);
  @$pb.TagNumber(3)
  void clearNextCursor() => $_clearField(3);
}

class ModerateResult extends $pb.GeneratedMessage {
  factory ModerateResult({
    Actor? actor,
  }) {
    final result = create();
    if (actor != null) result.actor = actor;
    return result;
  }

  ModerateResult._();

  factory ModerateResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModerateResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModerateResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<Actor>(1, _omitFieldNames ? '' : 'actor', subBuilder: Actor.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ModerateResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ModerateResult copyWith(void Function(ModerateResult) updates) =>
      super.copyWith((message) => updates(message as ModerateResult))
          as ModerateResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModerateResult create() => ModerateResult._();
  @$core.override
  ModerateResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ModerateResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModerateResult>(create);
  static ModerateResult? _defaultInstance;

  @$pb.TagNumber(1)
  Actor get actor => $_getN(0);
  @$pb.TagNumber(1)
  set actor(Actor value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasActor() => $_has(0);
  @$pb.TagNumber(1)
  void clearActor() => $_clearField(1);
  @$pb.TagNumber(1)
  Actor ensureActor() => $_ensure(0);
}

class GetFollowsResult extends $pb.GeneratedMessage {
  factory GetFollowsResult({
    $core.Iterable<Actor>? actors,
    $core.String? nextCursor,
  }) {
    final result = create();
    if (actors != null) result.actors.addAll(actors);
    if (nextCursor != null) result.nextCursor = nextCursor;
    return result;
  }

  GetFollowsResult._();

  factory GetFollowsResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFollowsResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFollowsResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..pPM<Actor>(1, _omitFieldNames ? '' : 'actors', subBuilder: Actor.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextCursor')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFollowsResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFollowsResult copyWith(void Function(GetFollowsResult) updates) =>
      super.copyWith((message) => updates(message as GetFollowsResult))
          as GetFollowsResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFollowsResult create() => GetFollowsResult._();
  @$core.override
  GetFollowsResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetFollowsResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFollowsResult>(create);
  static GetFollowsResult? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Actor> get actors => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextCursor => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextCursor($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNextCursor() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextCursor() => $_clearField(2);
}

class EditPostResult extends $pb.GeneratedMessage {
  factory EditPostResult({
    Post? post,
  }) {
    final result = create();
    if (post != null) result.post = post;
    return result;
  }

  EditPostResult._();

  factory EditPostResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditPostResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditPostResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<Post>(1, _omitFieldNames ? '' : 'post', subBuilder: Post.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditPostResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditPostResult copyWith(void Function(EditPostResult) updates) =>
      super.copyWith((message) => updates(message as EditPostResult))
          as EditPostResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditPostResult create() => EditPostResult._();
  @$core.override
  EditPostResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditPostResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditPostResult>(create);
  static EditPostResult? _defaultInstance;

  @$pb.TagNumber(1)
  Post get post => $_getN(0);
  @$pb.TagNumber(1)
  set post(Post value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPost() => $_has(0);
  @$pb.TagNumber(1)
  void clearPost() => $_clearField(1);
  @$pb.TagNumber(1)
  Post ensurePost() => $_ensure(0);
}

class DeletePostResult extends $pb.GeneratedMessage {
  factory DeletePostResult({
    $core.String? postId,
  }) {
    final result = create();
    if (postId != null) result.postId = postId;
    return result;
  }

  DeletePostResult._();

  factory DeletePostResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeletePostResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeletePostResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'postId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeletePostResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeletePostResult copyWith(void Function(DeletePostResult) updates) =>
      super.copyWith((message) => updates(message as DeletePostResult))
          as DeletePostResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePostResult create() => DeletePostResult._();
  @$core.override
  DeletePostResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeletePostResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeletePostResult>(create);
  static DeletePostResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get postId => $_getSZ(0);
  @$pb.TagNumber(1)
  set postId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => $_clearField(1);
}

class BookmarkResult extends $pb.GeneratedMessage {
  factory BookmarkResult({
    $core.String? postId,
    $core.bool? viewerBookmarked,
  }) {
    final result = create();
    if (postId != null) result.postId = postId;
    if (viewerBookmarked != null) result.viewerBookmarked = viewerBookmarked;
    return result;
  }

  BookmarkResult._();

  factory BookmarkResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BookmarkResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BookmarkResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'postId')
    ..aOB(2, _omitFieldNames ? '' : 'viewerBookmarked')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BookmarkResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BookmarkResult copyWith(void Function(BookmarkResult) updates) =>
      super.copyWith((message) => updates(message as BookmarkResult))
          as BookmarkResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BookmarkResult create() => BookmarkResult._();
  @$core.override
  BookmarkResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BookmarkResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BookmarkResult>(create);
  static BookmarkResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get postId => $_getSZ(0);
  @$pb.TagNumber(1)
  set postId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get viewerBookmarked => $_getBF(1);
  @$pb.TagNumber(2)
  set viewerBookmarked($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasViewerBookmarked() => $_has(1);
  @$pb.TagNumber(2)
  void clearViewerBookmarked() => $_clearField(2);
}

class GetTrendsResult extends $pb.GeneratedMessage {
  factory GetTrendsResult({
    $core.Iterable<Trend>? trends,
  }) {
    final result = create();
    if (trends != null) result.trends.addAll(trends);
    return result;
  }

  GetTrendsResult._();

  factory GetTrendsResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTrendsResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTrendsResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..pPM<Trend>(1, _omitFieldNames ? '' : 'trends', subBuilder: Trend.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTrendsResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTrendsResult copyWith(void Function(GetTrendsResult) updates) =>
      super.copyWith((message) => updates(message as GetTrendsResult))
          as GetTrendsResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTrendsResult create() => GetTrendsResult._();
  @$core.override
  GetTrendsResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTrendsResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTrendsResult>(create);
  static GetTrendsResult? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Trend> get trends => $_getList(0);
}

class UploadMediaResult extends $pb.GeneratedMessage {
  factory UploadMediaResult({
    $core.String? mediaId,
    $core.String? uploadUrl,
    $core.String? getUrl,
    $core.String? kind,
  }) {
    final result = create();
    if (mediaId != null) result.mediaId = mediaId;
    if (uploadUrl != null) result.uploadUrl = uploadUrl;
    if (getUrl != null) result.getUrl = getUrl;
    if (kind != null) result.kind = kind;
    return result;
  }

  UploadMediaResult._();

  factory UploadMediaResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UploadMediaResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UploadMediaResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mediaId')
    ..aOS(2, _omitFieldNames ? '' : 'uploadUrl')
    ..aOS(3, _omitFieldNames ? '' : 'getUrl')
    ..aOS(4, _omitFieldNames ? '' : 'kind')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadMediaResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadMediaResult copyWith(void Function(UploadMediaResult) updates) =>
      super.copyWith((message) => updates(message as UploadMediaResult))
          as UploadMediaResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadMediaResult create() => UploadMediaResult._();
  @$core.override
  UploadMediaResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UploadMediaResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UploadMediaResult>(create);
  static UploadMediaResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mediaId => $_getSZ(0);
  @$pb.TagNumber(1)
  set mediaId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMediaId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMediaId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get uploadUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set uploadUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUploadUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUploadUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get getUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set getUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasGetUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearGetUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get kind => $_getSZ(3);
  @$pb.TagNumber(4)
  set kind($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasKind() => $_has(3);
  @$pb.TagNumber(4)
  void clearKind() => $_clearField(4);
}

class RegisterResult extends $pb.GeneratedMessage {
  factory RegisterResult({
    $core.bool? registered,
    $core.String? userId,
  }) {
    final result = create();
    if (registered != null) result.registered = registered;
    if (userId != null) result.userId = userId;
    return result;
  }

  RegisterResult._();

  factory RegisterResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'registered')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResult copyWith(void Function(RegisterResult) updates) =>
      super.copyWith((message) => updates(message as RegisterResult))
          as RegisterResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResult create() => RegisterResult._();
  @$core.override
  RegisterResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegisterResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterResult>(create);
  static RegisterResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get registered => $_getBF(0);
  @$pb.TagNumber(1)
  set registered($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRegistered() => $_has(0);
  @$pb.TagNumber(1)
  void clearRegistered() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => $_clearField(2);
}

class CreatePostResult extends $pb.GeneratedMessage {
  factory CreatePostResult({
    Post? post,
  }) {
    final result = create();
    if (post != null) result.post = post;
    return result;
  }

  CreatePostResult._();

  factory CreatePostResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreatePostResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreatePostResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<Post>(1, _omitFieldNames ? '' : 'post', subBuilder: Post.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreatePostResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreatePostResult copyWith(void Function(CreatePostResult) updates) =>
      super.copyWith((message) => updates(message as CreatePostResult))
          as CreatePostResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePostResult create() => CreatePostResult._();
  @$core.override
  CreatePostResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreatePostResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreatePostResult>(create);
  static CreatePostResult? _defaultInstance;

  @$pb.TagNumber(1)
  Post get post => $_getN(0);
  @$pb.TagNumber(1)
  set post(Post value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPost() => $_has(0);
  @$pb.TagNumber(1)
  void clearPost() => $_clearField(1);
  @$pb.TagNumber(1)
  Post ensurePost() => $_ensure(0);
}

class GetFeedResult extends $pb.GeneratedMessage {
  factory GetFeedResult({
    $core.Iterable<FeedItem>? items,
    $core.String? nextCursor,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    if (nextCursor != null) result.nextCursor = nextCursor;
    return result;
  }

  GetFeedResult._();

  factory GetFeedResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFeedResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFeedResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..pPM<FeedItem>(1, _omitFieldNames ? '' : 'items',
        subBuilder: FeedItem.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextCursor')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFeedResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFeedResult copyWith(void Function(GetFeedResult) updates) =>
      super.copyWith((message) => updates(message as GetFeedResult))
          as GetFeedResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFeedResult create() => GetFeedResult._();
  @$core.override
  GetFeedResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetFeedResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFeedResult>(create);
  static GetFeedResult? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<FeedItem> get items => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextCursor => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextCursor($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNextCursor() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextCursor() => $_clearField(2);
}

class LikeResult extends $pb.GeneratedMessage {
  factory LikeResult({
    $core.String? postId,
    $core.int? likeCount,
    $core.bool? viewerLiked,
  }) {
    final result = create();
    if (postId != null) result.postId = postId;
    if (likeCount != null) result.likeCount = likeCount;
    if (viewerLiked != null) result.viewerLiked = viewerLiked;
    return result;
  }

  LikeResult._();

  factory LikeResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LikeResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LikeResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'postId')
    ..aI(2, _omitFieldNames ? '' : 'likeCount', fieldType: $pb.PbFieldType.OU3)
    ..aOB(3, _omitFieldNames ? '' : 'viewerLiked')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LikeResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LikeResult copyWith(void Function(LikeResult) updates) =>
      super.copyWith((message) => updates(message as LikeResult)) as LikeResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LikeResult create() => LikeResult._();
  @$core.override
  LikeResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LikeResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LikeResult>(create);
  static LikeResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get postId => $_getSZ(0);
  @$pb.TagNumber(1)
  set postId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get likeCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set likeCount($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLikeCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearLikeCount() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get viewerLiked => $_getBF(2);
  @$pb.TagNumber(3)
  set viewerLiked($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasViewerLiked() => $_has(2);
  @$pb.TagNumber(3)
  void clearViewerLiked() => $_clearField(3);
}

class RepostResult extends $pb.GeneratedMessage {
  factory RepostResult({
    $core.String? postId,
    $core.int? repostCount,
    $core.bool? viewerReposted,
  }) {
    final result = create();
    if (postId != null) result.postId = postId;
    if (repostCount != null) result.repostCount = repostCount;
    if (viewerReposted != null) result.viewerReposted = viewerReposted;
    return result;
  }

  RepostResult._();

  factory RepostResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepostResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepostResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'postId')
    ..aI(2, _omitFieldNames ? '' : 'repostCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aOB(3, _omitFieldNames ? '' : 'viewerReposted')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepostResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepostResult copyWith(void Function(RepostResult) updates) =>
      super.copyWith((message) => updates(message as RepostResult))
          as RepostResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepostResult create() => RepostResult._();
  @$core.override
  RepostResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepostResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepostResult>(create);
  static RepostResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get postId => $_getSZ(0);
  @$pb.TagNumber(1)
  set postId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get repostCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set repostCount($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepostCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepostCount() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get viewerReposted => $_getBF(2);
  @$pb.TagNumber(3)
  set viewerReposted($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasViewerReposted() => $_has(2);
  @$pb.TagNumber(3)
  void clearViewerReposted() => $_clearField(3);
}

class FollowResult extends $pb.GeneratedMessage {
  factory FollowResult({
    Actor? actor,
  }) {
    final result = create();
    if (actor != null) result.actor = actor;
    return result;
  }

  FollowResult._();

  factory FollowResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FollowResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FollowResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<Actor>(1, _omitFieldNames ? '' : 'actor', subBuilder: Actor.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FollowResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FollowResult copyWith(void Function(FollowResult) updates) =>
      super.copyWith((message) => updates(message as FollowResult))
          as FollowResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FollowResult create() => FollowResult._();
  @$core.override
  FollowResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FollowResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FollowResult>(create);
  static FollowResult? _defaultInstance;

  @$pb.TagNumber(1)
  Actor get actor => $_getN(0);
  @$pb.TagNumber(1)
  set actor(Actor value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasActor() => $_has(0);
  @$pb.TagNumber(1)
  void clearActor() => $_clearField(1);
  @$pb.TagNumber(1)
  Actor ensureActor() => $_ensure(0);
}

class GetActorResult extends $pb.GeneratedMessage {
  factory GetActorResult({
    Actor? actor,
  }) {
    final result = create();
    if (actor != null) result.actor = actor;
    return result;
  }

  GetActorResult._();

  factory GetActorResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetActorResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetActorResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<Actor>(1, _omitFieldNames ? '' : 'actor', subBuilder: Actor.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetActorResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetActorResult copyWith(void Function(GetActorResult) updates) =>
      super.copyWith((message) => updates(message as GetActorResult))
          as GetActorResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetActorResult create() => GetActorResult._();
  @$core.override
  GetActorResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetActorResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetActorResult>(create);
  static GetActorResult? _defaultInstance;

  @$pb.TagNumber(1)
  Actor get actor => $_getN(0);
  @$pb.TagNumber(1)
  set actor(Actor value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasActor() => $_has(0);
  @$pb.TagNumber(1)
  void clearActor() => $_clearField(1);
  @$pb.TagNumber(1)
  Actor ensureActor() => $_ensure(0);
}

class GetThreadResult extends $pb.GeneratedMessage {
  factory GetThreadResult({
    $core.Iterable<Post>? ancestors,
    Post? post,
    $core.Iterable<Post>? replies,
  }) {
    final result = create();
    if (ancestors != null) result.ancestors.addAll(ancestors);
    if (post != null) result.post = post;
    if (replies != null) result.replies.addAll(replies);
    return result;
  }

  GetThreadResult._();

  factory GetThreadResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetThreadResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetThreadResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..pPM<Post>(1, _omitFieldNames ? '' : 'ancestors', subBuilder: Post.create)
    ..aOM<Post>(2, _omitFieldNames ? '' : 'post', subBuilder: Post.create)
    ..pPM<Post>(3, _omitFieldNames ? '' : 'replies', subBuilder: Post.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetThreadResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetThreadResult copyWith(void Function(GetThreadResult) updates) =>
      super.copyWith((message) => updates(message as GetThreadResult))
          as GetThreadResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetThreadResult create() => GetThreadResult._();
  @$core.override
  GetThreadResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetThreadResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetThreadResult>(create);
  static GetThreadResult? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Post> get ancestors => $_getList(0);

  @$pb.TagNumber(2)
  Post get post => $_getN(1);
  @$pb.TagNumber(2)
  set post(Post value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPost() => $_has(1);
  @$pb.TagNumber(2)
  void clearPost() => $_clearField(2);
  @$pb.TagNumber(2)
  Post ensurePost() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<Post> get replies => $_getList(2);
}

class SearchActorsResult extends $pb.GeneratedMessage {
  factory SearchActorsResult({
    $core.Iterable<Actor>? actors,
  }) {
    final result = create();
    if (actors != null) result.actors.addAll(actors);
    return result;
  }

  SearchActorsResult._();

  factory SearchActorsResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SearchActorsResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchActorsResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..pPM<Actor>(1, _omitFieldNames ? '' : 'actors', subBuilder: Actor.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchActorsResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchActorsResult copyWith(void Function(SearchActorsResult) updates) =>
      super.copyWith((message) => updates(message as SearchActorsResult))
          as SearchActorsResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchActorsResult create() => SearchActorsResult._();
  @$core.override
  SearchActorsResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SearchActorsResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchActorsResult>(create);
  static SearchActorsResult? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Actor> get actors => $_getList(0);
}

class GetNotificationsResult extends $pb.GeneratedMessage {
  factory GetNotificationsResult({
    $core.Iterable<Notification>? notifications,
    $core.String? nextCursor,
    $core.int? unreadCount,
  }) {
    final result = create();
    if (notifications != null) result.notifications.addAll(notifications);
    if (nextCursor != null) result.nextCursor = nextCursor;
    if (unreadCount != null) result.unreadCount = unreadCount;
    return result;
  }

  GetNotificationsResult._();

  factory GetNotificationsResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetNotificationsResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetNotificationsResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..pPM<Notification>(1, _omitFieldNames ? '' : 'notifications',
        subBuilder: Notification.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextCursor')
    ..aI(3, _omitFieldNames ? '' : 'unreadCount',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNotificationsResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNotificationsResult copyWith(
          void Function(GetNotificationsResult) updates) =>
      super.copyWith((message) => updates(message as GetNotificationsResult))
          as GetNotificationsResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNotificationsResult create() => GetNotificationsResult._();
  @$core.override
  GetNotificationsResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetNotificationsResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetNotificationsResult>(create);
  static GetNotificationsResult? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Notification> get notifications => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextCursor => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextCursor($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNextCursor() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextCursor() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get unreadCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set unreadCount($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUnreadCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnreadCount() => $_clearField(3);
}

class UpdateProfileResult extends $pb.GeneratedMessage {
  factory UpdateProfileResult({
    Actor? actor,
  }) {
    final result = create();
    if (actor != null) result.actor = actor;
    return result;
  }

  UpdateProfileResult._();

  factory UpdateProfileResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateProfileResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateProfileResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<Actor>(1, _omitFieldNames ? '' : 'actor', subBuilder: Actor.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateProfileResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateProfileResult copyWith(void Function(UpdateProfileResult) updates) =>
      super.copyWith((message) => updates(message as UpdateProfileResult))
          as UpdateProfileResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateProfileResult create() => UpdateProfileResult._();
  @$core.override
  UpdateProfileResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateProfileResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateProfileResult>(create);
  static UpdateProfileResult? _defaultInstance;

  @$pb.TagNumber(1)
  Actor get actor => $_getN(0);
  @$pb.TagNumber(1)
  set actor(Actor value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasActor() => $_has(0);
  @$pb.TagNumber(1)
  void clearActor() => $_clearField(1);
  @$pb.TagNumber(1)
  Actor ensureActor() => $_ensure(0);
}

class PingResult extends $pb.GeneratedMessage {
  factory PingResult({
    $core.List<$core.int>? echoData,
    $fixnum.Int64? rttMs,
  }) {
    final result = create();
    if (echoData != null) result.echoData = echoData;
    if (rttMs != null) result.rttMs = rttMs;
    return result;
  }

  PingResult._();

  factory PingResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PingResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PingResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'echoData', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'rttMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PingResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PingResult copyWith(void Function(PingResult) updates) =>
      super.copyWith((message) => updates(message as PingResult)) as PingResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingResult create() => PingResult._();
  @$core.override
  PingResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PingResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PingResult>(create);
  static PingResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get echoData => $_getN(0);
  @$pb.TagNumber(1)
  set echoData($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEchoData() => $_has(0);
  @$pb.TagNumber(1)
  void clearEchoData() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get rttMs => $_getI64(1);
  @$pb.TagNumber(2)
  set rttMs($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRttMs() => $_has(1);
  @$pb.TagNumber(2)
  void clearRttMs() => $_clearField(2);
}

class AuthResult extends $pb.GeneratedMessage {
  factory AuthResult({
    $core.bool? authenticated,
    $core.String? userId,
  }) {
    final result = create();
    if (authenticated != null) result.authenticated = authenticated;
    if (userId != null) result.userId = userId;
    return result;
  }

  AuthResult._();

  factory AuthResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AuthResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'authenticated')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthResult copyWith(void Function(AuthResult) updates) =>
      super.copyWith((message) => updates(message as AuthResult)) as AuthResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthResult create() => AuthResult._();
  @$core.override
  AuthResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AuthResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthResult>(create);
  static AuthResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get authenticated => $_getBF(0);
  @$pb.TagNumber(1)
  set authenticated($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAuthenticated() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthenticated() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => $_clearField(2);
}

class GetBalanceResult extends $pb.GeneratedMessage {
  factory GetBalanceResult({
    BalanceSnapshot? balance,
  }) {
    final result = create();
    if (balance != null) result.balance = balance;
    return result;
  }

  GetBalanceResult._();

  factory GetBalanceResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetBalanceResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetBalanceResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<BalanceSnapshot>(1, _omitFieldNames ? '' : 'balance',
        subBuilder: BalanceSnapshot.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBalanceResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBalanceResult copyWith(void Function(GetBalanceResult) updates) =>
      super.copyWith((message) => updates(message as GetBalanceResult))
          as GetBalanceResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBalanceResult create() => GetBalanceResult._();
  @$core.override
  GetBalanceResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetBalanceResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBalanceResult>(create);
  static GetBalanceResult? _defaultInstance;

  @$pb.TagNumber(1)
  BalanceSnapshot get balance => $_getN(0);
  @$pb.TagNumber(1)
  set balance(BalanceSnapshot value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearBalance() => $_clearField(1);
  @$pb.TagNumber(1)
  BalanceSnapshot ensureBalance() => $_ensure(0);
}

class TransferResult extends $pb.GeneratedMessage {
  factory TransferResult({
    $core.String? txId,
  }) {
    final result = create();
    if (txId != null) result.txId = txId;
    return result;
  }

  TransferResult._();

  factory TransferResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransferResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransferResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'txId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransferResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransferResult copyWith(void Function(TransferResult) updates) =>
      super.copyWith((message) => updates(message as TransferResult))
          as TransferResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransferResult create() => TransferResult._();
  @$core.override
  TransferResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransferResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransferResult>(create);
  static TransferResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get txId => $_getSZ(0);
  @$pb.TagNumber(1)
  set txId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTxId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxId() => $_clearField(1);
}

class GetHistoryResult extends $pb.GeneratedMessage {
  factory GetHistoryResult({
    $core.Iterable<Transaction>? transactions,
    $core.String? nextToken,
  }) {
    final result = create();
    if (transactions != null) result.transactions.addAll(transactions);
    if (nextToken != null) result.nextToken = nextToken;
    return result;
  }

  GetHistoryResult._();

  factory GetHistoryResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetHistoryResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetHistoryResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..pPM<Transaction>(1, _omitFieldNames ? '' : 'transactions',
        subBuilder: Transaction.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetHistoryResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetHistoryResult copyWith(void Function(GetHistoryResult) updates) =>
      super.copyWith((message) => updates(message as GetHistoryResult))
          as GetHistoryResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetHistoryResult create() => GetHistoryResult._();
  @$core.override
  GetHistoryResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetHistoryResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetHistoryResult>(create);
  static GetHistoryResult? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Transaction> get transactions => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNextToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextToken() => $_clearField(2);
}

class GetProfileResult extends $pb.GeneratedMessage {
  factory GetProfileResult({
    UserProfile? profile,
  }) {
    final result = create();
    if (profile != null) result.profile = profile;
    return result;
  }

  GetProfileResult._();

  factory GetProfileResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetProfileResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetProfileResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<UserProfile>(1, _omitFieldNames ? '' : 'profile',
        subBuilder: UserProfile.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetProfileResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetProfileResult copyWith(void Function(GetProfileResult) updates) =>
      super.copyWith((message) => updates(message as GetProfileResult))
          as GetProfileResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetProfileResult create() => GetProfileResult._();
  @$core.override
  GetProfileResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetProfileResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetProfileResult>(create);
  static GetProfileResult? _defaultInstance;

  @$pb.TagNumber(1)
  UserProfile get profile => $_getN(0);
  @$pb.TagNumber(1)
  set profile(UserProfile value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasProfile() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfile() => $_clearField(1);
  @$pb.TagNumber(1)
  UserProfile ensureProfile() => $_ensure(0);
}

enum ClientUpdate_Payload {
  connectionState,
  authState,
  sessionExpired,
  walletChanged,
  balanceChanged,
  transactionAdded,
  profileChanged,
  error,
  syncProgress,
  notificationReceived,
  socialEvent,
  dmReceived,
  notSet
}

/// Server pushed updates & local state transitions
class ClientUpdate extends $pb.GeneratedMessage {
  factory ClientUpdate({
    UpdateConnectionState? connectionState,
    UpdateAuthorizationState? authState,
    UpdateSessionExpired? sessionExpired,
    UpdateWalletChanged? walletChanged,
    UpdateBalanceChanged? balanceChanged,
    UpdateTransactionAdded? transactionAdded,
    UpdateProfileChanged? profileChanged,
    UpdateError? error,
    UpdateSyncProgress? syncProgress,
    UpdateNotificationReceived? notificationReceived,
    UpdateSocialEvent? socialEvent,
    UpdateDmReceived? dmReceived,
  }) {
    final result = create();
    if (connectionState != null) result.connectionState = connectionState;
    if (authState != null) result.authState = authState;
    if (sessionExpired != null) result.sessionExpired = sessionExpired;
    if (walletChanged != null) result.walletChanged = walletChanged;
    if (balanceChanged != null) result.balanceChanged = balanceChanged;
    if (transactionAdded != null) result.transactionAdded = transactionAdded;
    if (profileChanged != null) result.profileChanged = profileChanged;
    if (error != null) result.error = error;
    if (syncProgress != null) result.syncProgress = syncProgress;
    if (notificationReceived != null)
      result.notificationReceived = notificationReceived;
    if (socialEvent != null) result.socialEvent = socialEvent;
    if (dmReceived != null) result.dmReceived = dmReceived;
    return result;
  }

  ClientUpdate._();

  factory ClientUpdate.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClientUpdate.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ClientUpdate_Payload>
      _ClientUpdate_PayloadByTag = {
    1: ClientUpdate_Payload.connectionState,
    2: ClientUpdate_Payload.authState,
    3: ClientUpdate_Payload.sessionExpired,
    4: ClientUpdate_Payload.walletChanged,
    5: ClientUpdate_Payload.balanceChanged,
    6: ClientUpdate_Payload.transactionAdded,
    7: ClientUpdate_Payload.profileChanged,
    8: ClientUpdate_Payload.error,
    9: ClientUpdate_Payload.syncProgress,
    10: ClientUpdate_Payload.notificationReceived,
    11: ClientUpdate_Payload.socialEvent,
    12: ClientUpdate_Payload.dmReceived,
    0: ClientUpdate_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClientUpdate',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])
    ..aOM<UpdateConnectionState>(1, _omitFieldNames ? '' : 'connectionState',
        subBuilder: UpdateConnectionState.create)
    ..aOM<UpdateAuthorizationState>(2, _omitFieldNames ? '' : 'authState',
        subBuilder: UpdateAuthorizationState.create)
    ..aOM<UpdateSessionExpired>(3, _omitFieldNames ? '' : 'sessionExpired',
        subBuilder: UpdateSessionExpired.create)
    ..aOM<UpdateWalletChanged>(4, _omitFieldNames ? '' : 'walletChanged',
        subBuilder: UpdateWalletChanged.create)
    ..aOM<UpdateBalanceChanged>(5, _omitFieldNames ? '' : 'balanceChanged',
        subBuilder: UpdateBalanceChanged.create)
    ..aOM<UpdateTransactionAdded>(6, _omitFieldNames ? '' : 'transactionAdded',
        subBuilder: UpdateTransactionAdded.create)
    ..aOM<UpdateProfileChanged>(7, _omitFieldNames ? '' : 'profileChanged',
        subBuilder: UpdateProfileChanged.create)
    ..aOM<UpdateError>(8, _omitFieldNames ? '' : 'error',
        subBuilder: UpdateError.create)
    ..aOM<UpdateSyncProgress>(9, _omitFieldNames ? '' : 'syncProgress',
        subBuilder: UpdateSyncProgress.create)
    ..aOM<UpdateNotificationReceived>(
        10, _omitFieldNames ? '' : 'notificationReceived',
        subBuilder: UpdateNotificationReceived.create)
    ..aOM<UpdateSocialEvent>(11, _omitFieldNames ? '' : 'socialEvent',
        subBuilder: UpdateSocialEvent.create)
    ..aOM<UpdateDmReceived>(12, _omitFieldNames ? '' : 'dmReceived',
        subBuilder: UpdateDmReceived.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClientUpdate clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClientUpdate copyWith(void Function(ClientUpdate) updates) =>
      super.copyWith((message) => updates(message as ClientUpdate))
          as ClientUpdate;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientUpdate create() => ClientUpdate._();
  @$core.override
  ClientUpdate createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ClientUpdate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClientUpdate>(create);
  static ClientUpdate? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  ClientUpdate_Payload whichPayload() =>
      _ClientUpdate_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  UpdateConnectionState get connectionState => $_getN(0);
  @$pb.TagNumber(1)
  set connectionState(UpdateConnectionState value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasConnectionState() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectionState() => $_clearField(1);
  @$pb.TagNumber(1)
  UpdateConnectionState ensureConnectionState() => $_ensure(0);

  @$pb.TagNumber(2)
  UpdateAuthorizationState get authState => $_getN(1);
  @$pb.TagNumber(2)
  set authState(UpdateAuthorizationState value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAuthState() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthState() => $_clearField(2);
  @$pb.TagNumber(2)
  UpdateAuthorizationState ensureAuthState() => $_ensure(1);

  @$pb.TagNumber(3)
  UpdateSessionExpired get sessionExpired => $_getN(2);
  @$pb.TagNumber(3)
  set sessionExpired(UpdateSessionExpired value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSessionExpired() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionExpired() => $_clearField(3);
  @$pb.TagNumber(3)
  UpdateSessionExpired ensureSessionExpired() => $_ensure(2);

  @$pb.TagNumber(4)
  UpdateWalletChanged get walletChanged => $_getN(3);
  @$pb.TagNumber(4)
  set walletChanged(UpdateWalletChanged value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasWalletChanged() => $_has(3);
  @$pb.TagNumber(4)
  void clearWalletChanged() => $_clearField(4);
  @$pb.TagNumber(4)
  UpdateWalletChanged ensureWalletChanged() => $_ensure(3);

  @$pb.TagNumber(5)
  UpdateBalanceChanged get balanceChanged => $_getN(4);
  @$pb.TagNumber(5)
  set balanceChanged(UpdateBalanceChanged value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBalanceChanged() => $_has(4);
  @$pb.TagNumber(5)
  void clearBalanceChanged() => $_clearField(5);
  @$pb.TagNumber(5)
  UpdateBalanceChanged ensureBalanceChanged() => $_ensure(4);

  @$pb.TagNumber(6)
  UpdateTransactionAdded get transactionAdded => $_getN(5);
  @$pb.TagNumber(6)
  set transactionAdded(UpdateTransactionAdded value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasTransactionAdded() => $_has(5);
  @$pb.TagNumber(6)
  void clearTransactionAdded() => $_clearField(6);
  @$pb.TagNumber(6)
  UpdateTransactionAdded ensureTransactionAdded() => $_ensure(5);

  @$pb.TagNumber(7)
  UpdateProfileChanged get profileChanged => $_getN(6);
  @$pb.TagNumber(7)
  set profileChanged(UpdateProfileChanged value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasProfileChanged() => $_has(6);
  @$pb.TagNumber(7)
  void clearProfileChanged() => $_clearField(7);
  @$pb.TagNumber(7)
  UpdateProfileChanged ensureProfileChanged() => $_ensure(6);

  @$pb.TagNumber(8)
  UpdateError get error => $_getN(7);
  @$pb.TagNumber(8)
  set error(UpdateError value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasError() => $_has(7);
  @$pb.TagNumber(8)
  void clearError() => $_clearField(8);
  @$pb.TagNumber(8)
  UpdateError ensureError() => $_ensure(7);

  @$pb.TagNumber(9)
  UpdateSyncProgress get syncProgress => $_getN(8);
  @$pb.TagNumber(9)
  set syncProgress(UpdateSyncProgress value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasSyncProgress() => $_has(8);
  @$pb.TagNumber(9)
  void clearSyncProgress() => $_clearField(9);
  @$pb.TagNumber(9)
  UpdateSyncProgress ensureSyncProgress() => $_ensure(8);

  @$pb.TagNumber(10)
  UpdateNotificationReceived get notificationReceived => $_getN(9);
  @$pb.TagNumber(10)
  set notificationReceived(UpdateNotificationReceived value) =>
      $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasNotificationReceived() => $_has(9);
  @$pb.TagNumber(10)
  void clearNotificationReceived() => $_clearField(10);
  @$pb.TagNumber(10)
  UpdateNotificationReceived ensureNotificationReceived() => $_ensure(9);

  @$pb.TagNumber(11)
  UpdateSocialEvent get socialEvent => $_getN(10);
  @$pb.TagNumber(11)
  set socialEvent(UpdateSocialEvent value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasSocialEvent() => $_has(10);
  @$pb.TagNumber(11)
  void clearSocialEvent() => $_clearField(11);
  @$pb.TagNumber(11)
  UpdateSocialEvent ensureSocialEvent() => $_ensure(10);

  @$pb.TagNumber(12)
  UpdateDmReceived get dmReceived => $_getN(11);
  @$pb.TagNumber(12)
  set dmReceived(UpdateDmReceived value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasDmReceived() => $_has(11);
  @$pb.TagNumber(12)
  void clearDmReceived() => $_clearField(12);
  @$pb.TagNumber(12)
  UpdateDmReceived ensureDmReceived() => $_ensure(11);
}

/// A direct message pushed by the server in real time.
class UpdateDmReceived extends $pb.GeneratedMessage {
  factory UpdateDmReceived({
    Actor? from,
    DmMessage? message,
  }) {
    final result = create();
    if (from != null) result.from = from;
    if (message != null) result.message = message;
    return result;
  }

  UpdateDmReceived._();

  factory UpdateDmReceived.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateDmReceived.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateDmReceived',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<Actor>(1, _omitFieldNames ? '' : 'from', subBuilder: Actor.create)
    ..aOM<DmMessage>(2, _omitFieldNames ? '' : 'message',
        subBuilder: DmMessage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateDmReceived clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateDmReceived copyWith(void Function(UpdateDmReceived) updates) =>
      super.copyWith((message) => updates(message as UpdateDmReceived))
          as UpdateDmReceived;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateDmReceived create() => UpdateDmReceived._();
  @$core.override
  UpdateDmReceived createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateDmReceived getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateDmReceived>(create);
  static UpdateDmReceived? _defaultInstance;

  @$pb.TagNumber(1)
  Actor get from => $_getN(0);
  @$pb.TagNumber(1)
  set from(Actor value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => $_clearField(1);
  @$pb.TagNumber(1)
  Actor ensureFrom() => $_ensure(0);

  @$pb.TagNumber(2)
  DmMessage get message => $_getN(1);
  @$pb.TagNumber(2)
  set message(DmMessage value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
  @$pb.TagNumber(2)
  DmMessage ensureMessage() => $_ensure(1);
}

/// A real-time social event pushed by the server (live feeds/counters).
class UpdateSocialEvent extends $pb.GeneratedMessage {
  factory UpdateSocialEvent({
    EventKind? kind,
    Post? post,
    PostDigest? digest,
  }) {
    final result = create();
    if (kind != null) result.kind = kind;
    if (post != null) result.post = post;
    if (digest != null) result.digest = digest;
    return result;
  }

  UpdateSocialEvent._();

  factory UpdateSocialEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateSocialEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateSocialEvent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aE<EventKind>(1, _omitFieldNames ? '' : 'kind',
        enumValues: EventKind.values)
    ..aOM<Post>(2, _omitFieldNames ? '' : 'post', subBuilder: Post.create)
    ..aOM<PostDigest>(3, _omitFieldNames ? '' : 'digest',
        subBuilder: PostDigest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSocialEvent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSocialEvent copyWith(void Function(UpdateSocialEvent) updates) =>
      super.copyWith((message) => updates(message as UpdateSocialEvent))
          as UpdateSocialEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSocialEvent create() => UpdateSocialEvent._();
  @$core.override
  UpdateSocialEvent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateSocialEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateSocialEvent>(create);
  static UpdateSocialEvent? _defaultInstance;

  @$pb.TagNumber(1)
  EventKind get kind => $_getN(0);
  @$pb.TagNumber(1)
  set kind(EventKind value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => $_clearField(1);

  @$pb.TagNumber(2)
  Post get post => $_getN(1);
  @$pb.TagNumber(2)
  set post(Post value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPost() => $_has(1);
  @$pb.TagNumber(2)
  void clearPost() => $_clearField(2);
  @$pb.TagNumber(2)
  Post ensurePost() => $_ensure(1);

  @$pb.TagNumber(3)
  PostDigest get digest => $_getN(2);
  @$pb.TagNumber(3)
  set digest(PostDigest value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDigest() => $_has(2);
  @$pb.TagNumber(3)
  void clearDigest() => $_clearField(3);
  @$pb.TagNumber(3)
  PostDigest ensureDigest() => $_ensure(2);
}

/// A social notification pushed by the server in real time.
class UpdateNotificationReceived extends $pb.GeneratedMessage {
  factory UpdateNotificationReceived({
    Notification? notification,
  }) {
    final result = create();
    if (notification != null) result.notification = notification;
    return result;
  }

  UpdateNotificationReceived._();

  factory UpdateNotificationReceived.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateNotificationReceived.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateNotificationReceived',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<Notification>(1, _omitFieldNames ? '' : 'notification',
        subBuilder: Notification.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateNotificationReceived clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateNotificationReceived copyWith(
          void Function(UpdateNotificationReceived) updates) =>
      super.copyWith(
              (message) => updates(message as UpdateNotificationReceived))
          as UpdateNotificationReceived;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateNotificationReceived create() => UpdateNotificationReceived._();
  @$core.override
  UpdateNotificationReceived createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateNotificationReceived getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateNotificationReceived>(create);
  static UpdateNotificationReceived? _defaultInstance;

  @$pb.TagNumber(1)
  Notification get notification => $_getN(0);
  @$pb.TagNumber(1)
  set notification(Notification value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasNotification() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotification() => $_clearField(1);
  @$pb.TagNumber(1)
  Notification ensureNotification() => $_ensure(0);
}

class UpdateConnectionState extends $pb.GeneratedMessage {
  factory UpdateConnectionState({
    ConnectionState? state,
  }) {
    final result = create();
    if (state != null) result.state = state;
    return result;
  }

  UpdateConnectionState._();

  factory UpdateConnectionState.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateConnectionState.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateConnectionState',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aE<ConnectionState>(1, _omitFieldNames ? '' : 'state',
        enumValues: ConnectionState.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateConnectionState clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateConnectionState copyWith(
          void Function(UpdateConnectionState) updates) =>
      super.copyWith((message) => updates(message as UpdateConnectionState))
          as UpdateConnectionState;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateConnectionState create() => UpdateConnectionState._();
  @$core.override
  UpdateConnectionState createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateConnectionState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateConnectionState>(create);
  static UpdateConnectionState? _defaultInstance;

  @$pb.TagNumber(1)
  ConnectionState get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(ConnectionState value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => $_clearField(1);
}

class UpdateAuthorizationState extends $pb.GeneratedMessage {
  factory UpdateAuthorizationState({
    AuthorizationState? state,
  }) {
    final result = create();
    if (state != null) result.state = state;
    return result;
  }

  UpdateAuthorizationState._();

  factory UpdateAuthorizationState.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateAuthorizationState.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateAuthorizationState',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aE<AuthorizationState>(1, _omitFieldNames ? '' : 'state',
        enumValues: AuthorizationState.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateAuthorizationState clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateAuthorizationState copyWith(
          void Function(UpdateAuthorizationState) updates) =>
      super.copyWith((message) => updates(message as UpdateAuthorizationState))
          as UpdateAuthorizationState;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateAuthorizationState create() => UpdateAuthorizationState._();
  @$core.override
  UpdateAuthorizationState createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateAuthorizationState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateAuthorizationState>(create);
  static UpdateAuthorizationState? _defaultInstance;

  @$pb.TagNumber(1)
  AuthorizationState get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(AuthorizationState value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => $_clearField(1);
}

class UpdateSessionExpired extends $pb.GeneratedMessage {
  factory UpdateSessionExpired() => create();

  UpdateSessionExpired._();

  factory UpdateSessionExpired.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateSessionExpired.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateSessionExpired',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSessionExpired clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSessionExpired copyWith(void Function(UpdateSessionExpired) updates) =>
      super.copyWith((message) => updates(message as UpdateSessionExpired))
          as UpdateSessionExpired;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionExpired create() => UpdateSessionExpired._();
  @$core.override
  UpdateSessionExpired createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionExpired getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateSessionExpired>(create);
  static UpdateSessionExpired? _defaultInstance;
}

class UpdateWalletChanged extends $pb.GeneratedMessage {
  factory UpdateWalletChanged({
    Wallet? wallet,
  }) {
    final result = create();
    if (wallet != null) result.wallet = wallet;
    return result;
  }

  UpdateWalletChanged._();

  factory UpdateWalletChanged.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateWalletChanged.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateWalletChanged',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<Wallet>(1, _omitFieldNames ? '' : 'wallet', subBuilder: Wallet.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateWalletChanged clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateWalletChanged copyWith(void Function(UpdateWalletChanged) updates) =>
      super.copyWith((message) => updates(message as UpdateWalletChanged))
          as UpdateWalletChanged;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateWalletChanged create() => UpdateWalletChanged._();
  @$core.override
  UpdateWalletChanged createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateWalletChanged getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateWalletChanged>(create);
  static UpdateWalletChanged? _defaultInstance;

  @$pb.TagNumber(1)
  Wallet get wallet => $_getN(0);
  @$pb.TagNumber(1)
  set wallet(Wallet value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasWallet() => $_has(0);
  @$pb.TagNumber(1)
  void clearWallet() => $_clearField(1);
  @$pb.TagNumber(1)
  Wallet ensureWallet() => $_ensure(0);
}

class UpdateBalanceChanged extends $pb.GeneratedMessage {
  factory UpdateBalanceChanged({
    BalanceSnapshot? balance,
  }) {
    final result = create();
    if (balance != null) result.balance = balance;
    return result;
  }

  UpdateBalanceChanged._();

  factory UpdateBalanceChanged.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateBalanceChanged.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateBalanceChanged',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<BalanceSnapshot>(1, _omitFieldNames ? '' : 'balance',
        subBuilder: BalanceSnapshot.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateBalanceChanged clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateBalanceChanged copyWith(void Function(UpdateBalanceChanged) updates) =>
      super.copyWith((message) => updates(message as UpdateBalanceChanged))
          as UpdateBalanceChanged;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateBalanceChanged create() => UpdateBalanceChanged._();
  @$core.override
  UpdateBalanceChanged createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateBalanceChanged getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateBalanceChanged>(create);
  static UpdateBalanceChanged? _defaultInstance;

  @$pb.TagNumber(1)
  BalanceSnapshot get balance => $_getN(0);
  @$pb.TagNumber(1)
  set balance(BalanceSnapshot value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearBalance() => $_clearField(1);
  @$pb.TagNumber(1)
  BalanceSnapshot ensureBalance() => $_ensure(0);
}

class UpdateTransactionAdded extends $pb.GeneratedMessage {
  factory UpdateTransactionAdded({
    Transaction? transaction,
  }) {
    final result = create();
    if (transaction != null) result.transaction = transaction;
    return result;
  }

  UpdateTransactionAdded._();

  factory UpdateTransactionAdded.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateTransactionAdded.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateTransactionAdded',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<Transaction>(1, _omitFieldNames ? '' : 'transaction',
        subBuilder: Transaction.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateTransactionAdded clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateTransactionAdded copyWith(
          void Function(UpdateTransactionAdded) updates) =>
      super.copyWith((message) => updates(message as UpdateTransactionAdded))
          as UpdateTransactionAdded;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTransactionAdded create() => UpdateTransactionAdded._();
  @$core.override
  UpdateTransactionAdded createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateTransactionAdded getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateTransactionAdded>(create);
  static UpdateTransactionAdded? _defaultInstance;

  @$pb.TagNumber(1)
  Transaction get transaction => $_getN(0);
  @$pb.TagNumber(1)
  set transaction(Transaction value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTransaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransaction() => $_clearField(1);
  @$pb.TagNumber(1)
  Transaction ensureTransaction() => $_ensure(0);
}

class UpdateProfileChanged extends $pb.GeneratedMessage {
  factory UpdateProfileChanged({
    UserProfile? profile,
  }) {
    final result = create();
    if (profile != null) result.profile = profile;
    return result;
  }

  UpdateProfileChanged._();

  factory UpdateProfileChanged.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateProfileChanged.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateProfileChanged',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aOM<UserProfile>(1, _omitFieldNames ? '' : 'profile',
        subBuilder: UserProfile.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateProfileChanged clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateProfileChanged copyWith(void Function(UpdateProfileChanged) updates) =>
      super.copyWith((message) => updates(message as UpdateProfileChanged))
          as UpdateProfileChanged;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateProfileChanged create() => UpdateProfileChanged._();
  @$core.override
  UpdateProfileChanged createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateProfileChanged getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateProfileChanged>(create);
  static UpdateProfileChanged? _defaultInstance;

  @$pb.TagNumber(1)
  UserProfile get profile => $_getN(0);
  @$pb.TagNumber(1)
  set profile(UserProfile value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasProfile() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfile() => $_clearField(1);
  @$pb.TagNumber(1)
  UserProfile ensureProfile() => $_ensure(0);
}

class UpdateError extends $pb.GeneratedMessage {
  factory UpdateError({
    $core.int? code,
    $core.String? message,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (message != null) result.message = message;
    return result;
  }

  UpdateError._();

  factory UpdateError.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateError.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateError',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'code', fieldType: $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateError clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateError copyWith(void Function(UpdateError) updates) =>
      super.copyWith((message) => updates(message as UpdateError))
          as UpdateError;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateError create() => UpdateError._();
  @$core.override
  UpdateError createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateError getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateError>(create);
  static UpdateError? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

class UpdateSyncProgress extends $pb.GeneratedMessage {
  factory UpdateSyncProgress({
    SyncState? state,
    $core.int? progressPct,
    $core.String? message,
  }) {
    final result = create();
    if (state != null) result.state = state;
    if (progressPct != null) result.progressPct = progressPct;
    if (message != null) result.message = message;
    return result;
  }

  UpdateSyncProgress._();

  factory UpdateSyncProgress.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateSyncProgress.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateSyncProgress',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'btdlib.proto'),
      createEmptyInstance: create)
    ..aE<SyncState>(1, _omitFieldNames ? '' : 'state',
        enumValues: SyncState.values)
    ..aI(2, _omitFieldNames ? '' : 'progressPct',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSyncProgress clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSyncProgress copyWith(void Function(UpdateSyncProgress) updates) =>
      super.copyWith((message) => updates(message as UpdateSyncProgress))
          as UpdateSyncProgress;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSyncProgress create() => UpdateSyncProgress._();
  @$core.override
  UpdateSyncProgress createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateSyncProgress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateSyncProgress>(create);
  static UpdateSyncProgress? _defaultInstance;

  @$pb.TagNumber(1)
  SyncState get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(SyncState value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get progressPct => $_getIZ(1);
  @$pb.TagNumber(2)
  set progressPct($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProgressPct() => $_has(1);
  @$pb.TagNumber(2)
  void clearProgressPct() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
