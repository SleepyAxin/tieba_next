//
//  Generated code. Do not modify.
//  source: GetForumDetailResIdl.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'package:tieba_next/Api/Protobuf/Error.pb.dart' as $0;

class GetForumDetailResIdl_DataRes_RecommendForumInfo extends $pb.GeneratedMessage {
  factory GetForumDetailResIdl_DataRes_RecommendForumInfo({
    $core.String? avatar,
    $fixnum.Int64? forumId,
    $core.String? forumName,
    $core.int? memberCount,
    $core.int? threadCount,
    $core.String? slogan,
    $core.String? lv1Name,
    $core.String? avatarOrigin,
  }) {
    final $result = create();
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (forumId != null) {
      $result.forumId = forumId;
    }
    if (forumName != null) {
      $result.forumName = forumName;
    }
    if (memberCount != null) {
      $result.memberCount = memberCount;
    }
    if (threadCount != null) {
      $result.threadCount = threadCount;
    }
    if (slogan != null) {
      $result.slogan = slogan;
    }
    if (lv1Name != null) {
      $result.lv1Name = lv1Name;
    }
    if (avatarOrigin != null) {
      $result.avatarOrigin = avatarOrigin;
    }
    return $result;
  }
  GetForumDetailResIdl_DataRes_RecommendForumInfo._() : super();
  factory GetForumDetailResIdl_DataRes_RecommendForumInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetForumDetailResIdl_DataRes_RecommendForumInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetForumDetailResIdl.DataRes.RecommendForumInfo', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'avatar')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'forumId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, _omitFieldNames ? '' : 'forumName')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'memberCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'threadCount', $pb.PbFieldType.OU3)
    ..aOS(7, _omitFieldNames ? '' : 'slogan')
    ..aOS(18, _omitFieldNames ? '' : 'lv1Name')
    ..aOS(20, _omitFieldNames ? '' : 'avatarOrigin')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetForumDetailResIdl_DataRes_RecommendForumInfo clone() => GetForumDetailResIdl_DataRes_RecommendForumInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetForumDetailResIdl_DataRes_RecommendForumInfo copyWith(void Function(GetForumDetailResIdl_DataRes_RecommendForumInfo) updates) => super.copyWith((message) => updates(message as GetForumDetailResIdl_DataRes_RecommendForumInfo)) as GetForumDetailResIdl_DataRes_RecommendForumInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetForumDetailResIdl_DataRes_RecommendForumInfo create() => GetForumDetailResIdl_DataRes_RecommendForumInfo._();
  GetForumDetailResIdl_DataRes_RecommendForumInfo createEmptyInstance() => create();
  static $pb.PbList<GetForumDetailResIdl_DataRes_RecommendForumInfo> createRepeated() => $pb.PbList<GetForumDetailResIdl_DataRes_RecommendForumInfo>();
  @$core.pragma('dart2js:noInline')
  static GetForumDetailResIdl_DataRes_RecommendForumInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetForumDetailResIdl_DataRes_RecommendForumInfo>(create);
  static GetForumDetailResIdl_DataRes_RecommendForumInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get avatar => $_getSZ(0);
  @$pb.TagNumber(1)
  set avatar($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAvatar() => $_has(0);
  @$pb.TagNumber(1)
  void clearAvatar() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get forumId => $_getI64(1);
  @$pb.TagNumber(2)
  set forumId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasForumId() => $_has(1);
  @$pb.TagNumber(2)
  void clearForumId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get forumName => $_getSZ(2);
  @$pb.TagNumber(3)
  set forumName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasForumName() => $_has(2);
  @$pb.TagNumber(3)
  void clearForumName() => clearField(3);

  @$pb.TagNumber(5)
  $core.int get memberCount => $_getIZ(3);
  @$pb.TagNumber(5)
  set memberCount($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasMemberCount() => $_has(3);
  @$pb.TagNumber(5)
  void clearMemberCount() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get threadCount => $_getIZ(4);
  @$pb.TagNumber(6)
  set threadCount($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasThreadCount() => $_has(4);
  @$pb.TagNumber(6)
  void clearThreadCount() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get slogan => $_getSZ(5);
  @$pb.TagNumber(7)
  set slogan($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasSlogan() => $_has(5);
  @$pb.TagNumber(7)
  void clearSlogan() => clearField(7);

  @$pb.TagNumber(18)
  $core.String get lv1Name => $_getSZ(6);
  @$pb.TagNumber(18)
  set lv1Name($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(18)
  $core.bool hasLv1Name() => $_has(6);
  @$pb.TagNumber(18)
  void clearLv1Name() => clearField(18);

  @$pb.TagNumber(20)
  $core.String get avatarOrigin => $_getSZ(7);
  @$pb.TagNumber(20)
  set avatarOrigin($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(20)
  $core.bool hasAvatarOrigin() => $_has(7);
  @$pb.TagNumber(20)
  void clearAvatarOrigin() => clearField(20);
}

class GetForumDetailResIdl_DataRes_ManagerElectionTab extends $pb.GeneratedMessage {
  factory GetForumDetailResIdl_DataRes_ManagerElectionTab({
    $core.String? newStrategyText,
  }) {
    final $result = create();
    if (newStrategyText != null) {
      $result.newStrategyText = newStrategyText;
    }
    return $result;
  }
  GetForumDetailResIdl_DataRes_ManagerElectionTab._() : super();
  factory GetForumDetailResIdl_DataRes_ManagerElectionTab.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetForumDetailResIdl_DataRes_ManagerElectionTab.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetForumDetailResIdl.DataRes.ManagerElectionTab', createEmptyInstance: create)
    ..aOS(5, _omitFieldNames ? '' : 'newStrategyText')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetForumDetailResIdl_DataRes_ManagerElectionTab clone() => GetForumDetailResIdl_DataRes_ManagerElectionTab()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetForumDetailResIdl_DataRes_ManagerElectionTab copyWith(void Function(GetForumDetailResIdl_DataRes_ManagerElectionTab) updates) => super.copyWith((message) => updates(message as GetForumDetailResIdl_DataRes_ManagerElectionTab)) as GetForumDetailResIdl_DataRes_ManagerElectionTab;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetForumDetailResIdl_DataRes_ManagerElectionTab create() => GetForumDetailResIdl_DataRes_ManagerElectionTab._();
  GetForumDetailResIdl_DataRes_ManagerElectionTab createEmptyInstance() => create();
  static $pb.PbList<GetForumDetailResIdl_DataRes_ManagerElectionTab> createRepeated() => $pb.PbList<GetForumDetailResIdl_DataRes_ManagerElectionTab>();
  @$core.pragma('dart2js:noInline')
  static GetForumDetailResIdl_DataRes_ManagerElectionTab getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetForumDetailResIdl_DataRes_ManagerElectionTab>(create);
  static GetForumDetailResIdl_DataRes_ManagerElectionTab? _defaultInstance;

  @$pb.TagNumber(5)
  $core.String get newStrategyText => $_getSZ(0);
  @$pb.TagNumber(5)
  set newStrategyText($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(5)
  $core.bool hasNewStrategyText() => $_has(0);
  @$pb.TagNumber(5)
  void clearNewStrategyText() => clearField(5);
}

class GetForumDetailResIdl_DataRes extends $pb.GeneratedMessage {
  factory GetForumDetailResIdl_DataRes({
    GetForumDetailResIdl_DataRes_RecommendForumInfo? forumInfo,
    GetForumDetailResIdl_DataRes_ManagerElectionTab? electionTab,
  }) {
    final $result = create();
    if (forumInfo != null) {
      $result.forumInfo = forumInfo;
    }
    if (electionTab != null) {
      $result.electionTab = electionTab;
    }
    return $result;
  }
  GetForumDetailResIdl_DataRes._() : super();
  factory GetForumDetailResIdl_DataRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetForumDetailResIdl_DataRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetForumDetailResIdl.DataRes', createEmptyInstance: create)
    ..aOM<GetForumDetailResIdl_DataRes_RecommendForumInfo>(1, _omitFieldNames ? '' : 'forumInfo', subBuilder: GetForumDetailResIdl_DataRes_RecommendForumInfo.create)
    ..aOM<GetForumDetailResIdl_DataRes_ManagerElectionTab>(8, _omitFieldNames ? '' : 'electionTab', subBuilder: GetForumDetailResIdl_DataRes_ManagerElectionTab.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetForumDetailResIdl_DataRes clone() => GetForumDetailResIdl_DataRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetForumDetailResIdl_DataRes copyWith(void Function(GetForumDetailResIdl_DataRes) updates) => super.copyWith((message) => updates(message as GetForumDetailResIdl_DataRes)) as GetForumDetailResIdl_DataRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetForumDetailResIdl_DataRes create() => GetForumDetailResIdl_DataRes._();
  GetForumDetailResIdl_DataRes createEmptyInstance() => create();
  static $pb.PbList<GetForumDetailResIdl_DataRes> createRepeated() => $pb.PbList<GetForumDetailResIdl_DataRes>();
  @$core.pragma('dart2js:noInline')
  static GetForumDetailResIdl_DataRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetForumDetailResIdl_DataRes>(create);
  static GetForumDetailResIdl_DataRes? _defaultInstance;

  @$pb.TagNumber(1)
  GetForumDetailResIdl_DataRes_RecommendForumInfo get forumInfo => $_getN(0);
  @$pb.TagNumber(1)
  set forumInfo(GetForumDetailResIdl_DataRes_RecommendForumInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasForumInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearForumInfo() => clearField(1);
  @$pb.TagNumber(1)
  GetForumDetailResIdl_DataRes_RecommendForumInfo ensureForumInfo() => $_ensure(0);

  @$pb.TagNumber(8)
  GetForumDetailResIdl_DataRes_ManagerElectionTab get electionTab => $_getN(1);
  @$pb.TagNumber(8)
  set electionTab(GetForumDetailResIdl_DataRes_ManagerElectionTab v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasElectionTab() => $_has(1);
  @$pb.TagNumber(8)
  void clearElectionTab() => clearField(8);
  @$pb.TagNumber(8)
  GetForumDetailResIdl_DataRes_ManagerElectionTab ensureElectionTab() => $_ensure(1);
}

class GetForumDetailResIdl extends $pb.GeneratedMessage {
  factory GetForumDetailResIdl({
    $0.Error? error,
    GetForumDetailResIdl_DataRes? data,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  GetForumDetailResIdl._() : super();
  factory GetForumDetailResIdl.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetForumDetailResIdl.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetForumDetailResIdl', createEmptyInstance: create)
    ..aOM<$0.Error>(1, _omitFieldNames ? '' : 'error', subBuilder: $0.Error.create)
    ..aOM<GetForumDetailResIdl_DataRes>(2, _omitFieldNames ? '' : 'data', subBuilder: GetForumDetailResIdl_DataRes.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetForumDetailResIdl clone() => GetForumDetailResIdl()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetForumDetailResIdl copyWith(void Function(GetForumDetailResIdl) updates) => super.copyWith((message) => updates(message as GetForumDetailResIdl)) as GetForumDetailResIdl;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetForumDetailResIdl create() => GetForumDetailResIdl._();
  GetForumDetailResIdl createEmptyInstance() => create();
  static $pb.PbList<GetForumDetailResIdl> createRepeated() => $pb.PbList<GetForumDetailResIdl>();
  @$core.pragma('dart2js:noInline')
  static GetForumDetailResIdl getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetForumDetailResIdl>(create);
  static GetForumDetailResIdl? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Error get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($0.Error v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  $0.Error ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  GetForumDetailResIdl_DataRes get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(GetForumDetailResIdl_DataRes v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
  @$pb.TagNumber(2)
  GetForumDetailResIdl_DataRes ensureData() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
