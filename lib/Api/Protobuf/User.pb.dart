//
//  Generated code. Do not modify.
//  source: User.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class User_Icon extends $pb.GeneratedMessage {
  factory User_Icon({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  User_Icon._() : super();
  factory User_Icon.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User_Icon.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User.Icon', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User_Icon clone() => User_Icon()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User_Icon copyWith(void Function(User_Icon) updates) => super.copyWith((message) => updates(message as User_Icon)) as User_Icon;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User_Icon create() => User_Icon._();
  User_Icon createEmptyInstance() => create();
  static $pb.PbList<User_Icon> createRepeated() => $pb.PbList<User_Icon>();
  @$core.pragma('dart2js:noInline')
  static User_Icon getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User_Icon>(create);
  static User_Icon? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class User_PrivSets extends $pb.GeneratedMessage {
  factory User_PrivSets({
    $core.int? location,
    $core.int? like,
    $core.int? group,
    $core.int? post,
    $core.int? friend,
    $core.int? live,
    $core.int? reply,
    $core.int? bazhuShowInside,
    $core.int? bazhuShowOutside,
  }) {
    final $result = create();
    if (location != null) {
      $result.location = location;
    }
    if (like != null) {
      $result.like = like;
    }
    if (group != null) {
      $result.group = group;
    }
    if (post != null) {
      $result.post = post;
    }
    if (friend != null) {
      $result.friend = friend;
    }
    if (live != null) {
      $result.live = live;
    }
    if (reply != null) {
      $result.reply = reply;
    }
    if (bazhuShowInside != null) {
      $result.bazhuShowInside = bazhuShowInside;
    }
    if (bazhuShowOutside != null) {
      $result.bazhuShowOutside = bazhuShowOutside;
    }
    return $result;
  }
  User_PrivSets._() : super();
  factory User_PrivSets.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User_PrivSets.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User.PrivSets', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'location', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'like', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'group', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'post', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'friend', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'live', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'reply', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'bazhuShowInside', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'bazhuShowOutside', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User_PrivSets clone() => User_PrivSets()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User_PrivSets copyWith(void Function(User_PrivSets) updates) => super.copyWith((message) => updates(message as User_PrivSets)) as User_PrivSets;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User_PrivSets create() => User_PrivSets._();
  User_PrivSets createEmptyInstance() => create();
  static $pb.PbList<User_PrivSets> createRepeated() => $pb.PbList<User_PrivSets>();
  @$core.pragma('dart2js:noInline')
  static User_PrivSets getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User_PrivSets>(create);
  static User_PrivSets? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get location => $_getIZ(0);
  @$pb.TagNumber(1)
  set location($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocation() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocation() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get like => $_getIZ(1);
  @$pb.TagNumber(2)
  set like($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLike() => $_has(1);
  @$pb.TagNumber(2)
  void clearLike() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get group => $_getIZ(2);
  @$pb.TagNumber(3)
  set group($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGroup() => $_has(2);
  @$pb.TagNumber(3)
  void clearGroup() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get post => $_getIZ(3);
  @$pb.TagNumber(4)
  set post($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPost() => $_has(3);
  @$pb.TagNumber(4)
  void clearPost() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get friend => $_getIZ(4);
  @$pb.TagNumber(5)
  set friend($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFriend() => $_has(4);
  @$pb.TagNumber(5)
  void clearFriend() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get live => $_getIZ(5);
  @$pb.TagNumber(6)
  set live($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLive() => $_has(5);
  @$pb.TagNumber(6)
  void clearLive() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get reply => $_getIZ(6);
  @$pb.TagNumber(7)
  set reply($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasReply() => $_has(6);
  @$pb.TagNumber(7)
  void clearReply() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get bazhuShowInside => $_getIZ(7);
  @$pb.TagNumber(8)
  set bazhuShowInside($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBazhuShowInside() => $_has(7);
  @$pb.TagNumber(8)
  void clearBazhuShowInside() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get bazhuShowOutside => $_getIZ(8);
  @$pb.TagNumber(9)
  set bazhuShowOutside($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBazhuShowOutside() => $_has(8);
  @$pb.TagNumber(9)
  void clearBazhuShowOutside() => clearField(9);
}

class User_LikeForumInfo extends $pb.GeneratedMessage {
  factory User_LikeForumInfo({
    $core.String? forumName,
    $fixnum.Int64? forumId,
  }) {
    final $result = create();
    if (forumName != null) {
      $result.forumName = forumName;
    }
    if (forumId != null) {
      $result.forumId = forumId;
    }
    return $result;
  }
  User_LikeForumInfo._() : super();
  factory User_LikeForumInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User_LikeForumInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User.LikeForumInfo', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'forumName')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'forumId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User_LikeForumInfo clone() => User_LikeForumInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User_LikeForumInfo copyWith(void Function(User_LikeForumInfo) updates) => super.copyWith((message) => updates(message as User_LikeForumInfo)) as User_LikeForumInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User_LikeForumInfo create() => User_LikeForumInfo._();
  User_LikeForumInfo createEmptyInstance() => create();
  static $pb.PbList<User_LikeForumInfo> createRepeated() => $pb.PbList<User_LikeForumInfo>();
  @$core.pragma('dart2js:noInline')
  static User_LikeForumInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User_LikeForumInfo>(create);
  static User_LikeForumInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get forumName => $_getSZ(0);
  @$pb.TagNumber(1)
  set forumName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasForumName() => $_has(0);
  @$pb.TagNumber(1)
  void clearForumName() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get forumId => $_getI64(1);
  @$pb.TagNumber(2)
  set forumId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasForumId() => $_has(1);
  @$pb.TagNumber(2)
  void clearForumId() => clearField(2);
}

class User_UserVipInfo extends $pb.GeneratedMessage {
  factory User_UserVipInfo({
    $core.int? vStatus,
    $core.int? vLevel,
  }) {
    final $result = create();
    if (vStatus != null) {
      $result.vStatus = vStatus;
    }
    if (vLevel != null) {
      $result.vLevel = vLevel;
    }
    return $result;
  }
  User_UserVipInfo._() : super();
  factory User_UserVipInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User_UserVipInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User.UserVipInfo', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'vStatus', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'vLevel', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User_UserVipInfo clone() => User_UserVipInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User_UserVipInfo copyWith(void Function(User_UserVipInfo) updates) => super.copyWith((message) => updates(message as User_UserVipInfo)) as User_UserVipInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User_UserVipInfo create() => User_UserVipInfo._();
  User_UserVipInfo createEmptyInstance() => create();
  static $pb.PbList<User_UserVipInfo> createRepeated() => $pb.PbList<User_UserVipInfo>();
  @$core.pragma('dart2js:noInline')
  static User_UserVipInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User_UserVipInfo>(create);
  static User_UserVipInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get vStatus => $_getIZ(0);
  @$pb.TagNumber(1)
  set vStatus($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearVStatus() => clearField(1);

  @$pb.TagNumber(5)
  $core.int get vLevel => $_getIZ(1);
  @$pb.TagNumber(5)
  set vLevel($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(5)
  $core.bool hasVLevel() => $_has(1);
  @$pb.TagNumber(5)
  void clearVLevel() => clearField(5);
}

class User_TshowInfo extends $pb.GeneratedMessage {
  factory User_TshowInfo({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  User_TshowInfo._() : super();
  factory User_TshowInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User_TshowInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User.TshowInfo', createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User_TshowInfo clone() => User_TshowInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User_TshowInfo copyWith(void Function(User_TshowInfo) updates) => super.copyWith((message) => updates(message as User_TshowInfo)) as User_TshowInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User_TshowInfo create() => User_TshowInfo._();
  User_TshowInfo createEmptyInstance() => create();
  static $pb.PbList<User_TshowInfo> createRepeated() => $pb.PbList<User_TshowInfo>();
  @$core.pragma('dart2js:noInline')
  static User_TshowInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User_TshowInfo>(create);
  static User_TshowInfo? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class User_NewGodInfo extends $pb.GeneratedMessage {
  factory User_NewGodInfo({
    $core.int? status,
    $core.int? fieldId,
    $core.String? fieldName,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (fieldId != null) {
      $result.fieldId = fieldId;
    }
    if (fieldName != null) {
      $result.fieldName = fieldName;
    }
    return $result;
  }
  User_NewGodInfo._() : super();
  factory User_NewGodInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User_NewGodInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User.NewGodInfo', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'fieldId', $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'fieldName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User_NewGodInfo clone() => User_NewGodInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User_NewGodInfo copyWith(void Function(User_NewGodInfo) updates) => super.copyWith((message) => updates(message as User_NewGodInfo)) as User_NewGodInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User_NewGodInfo create() => User_NewGodInfo._();
  User_NewGodInfo createEmptyInstance() => create();
  static $pb.PbList<User_NewGodInfo> createRepeated() => $pb.PbList<User_NewGodInfo>();
  @$core.pragma('dart2js:noInline')
  static User_NewGodInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User_NewGodInfo>(create);
  static User_NewGodInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get fieldId => $_getIZ(1);
  @$pb.TagNumber(2)
  set fieldId($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFieldId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFieldId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get fieldName => $_getSZ(2);
  @$pb.TagNumber(3)
  set fieldName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFieldName() => $_has(2);
  @$pb.TagNumber(3)
  void clearFieldName() => clearField(3);
}

class User_VirtualImageInfo_StateInfo extends $pb.GeneratedMessage {
  factory User_VirtualImageInfo_StateInfo({
    $core.String? text,
  }) {
    final $result = create();
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  User_VirtualImageInfo_StateInfo._() : super();
  factory User_VirtualImageInfo_StateInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User_VirtualImageInfo_StateInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User.VirtualImageInfo.StateInfo', createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User_VirtualImageInfo_StateInfo clone() => User_VirtualImageInfo_StateInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User_VirtualImageInfo_StateInfo copyWith(void Function(User_VirtualImageInfo_StateInfo) updates) => super.copyWith((message) => updates(message as User_VirtualImageInfo_StateInfo)) as User_VirtualImageInfo_StateInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User_VirtualImageInfo_StateInfo create() => User_VirtualImageInfo_StateInfo._();
  User_VirtualImageInfo_StateInfo createEmptyInstance() => create();
  static $pb.PbList<User_VirtualImageInfo_StateInfo> createRepeated() => $pb.PbList<User_VirtualImageInfo_StateInfo>();
  @$core.pragma('dart2js:noInline')
  static User_VirtualImageInfo_StateInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User_VirtualImageInfo_StateInfo>(create);
  static User_VirtualImageInfo_StateInfo? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);
}

class User_VirtualImageInfo extends $pb.GeneratedMessage {
  factory User_VirtualImageInfo({
    $core.int? issetVirtualImage,
    User_VirtualImageInfo_StateInfo? personalState,
  }) {
    final $result = create();
    if (issetVirtualImage != null) {
      $result.issetVirtualImage = issetVirtualImage;
    }
    if (personalState != null) {
      $result.personalState = personalState;
    }
    return $result;
  }
  User_VirtualImageInfo._() : super();
  factory User_VirtualImageInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User_VirtualImageInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User.VirtualImageInfo', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'issetVirtualImage', $pb.PbFieldType.O3)
    ..aOM<User_VirtualImageInfo_StateInfo>(9, _omitFieldNames ? '' : 'personalState', subBuilder: User_VirtualImageInfo_StateInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User_VirtualImageInfo clone() => User_VirtualImageInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User_VirtualImageInfo copyWith(void Function(User_VirtualImageInfo) updates) => super.copyWith((message) => updates(message as User_VirtualImageInfo)) as User_VirtualImageInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User_VirtualImageInfo create() => User_VirtualImageInfo._();
  User_VirtualImageInfo createEmptyInstance() => create();
  static $pb.PbList<User_VirtualImageInfo> createRepeated() => $pb.PbList<User_VirtualImageInfo>();
  @$core.pragma('dart2js:noInline')
  static User_VirtualImageInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User_VirtualImageInfo>(create);
  static User_VirtualImageInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get issetVirtualImage => $_getIZ(0);
  @$pb.TagNumber(1)
  set issetVirtualImage($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIssetVirtualImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearIssetVirtualImage() => clearField(1);

  @$pb.TagNumber(9)
  User_VirtualImageInfo_StateInfo get personalState => $_getN(1);
  @$pb.TagNumber(9)
  set personalState(User_VirtualImageInfo_StateInfo v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasPersonalState() => $_has(1);
  @$pb.TagNumber(9)
  void clearPersonalState() => clearField(9);
  @$pb.TagNumber(9)
  User_VirtualImageInfo_StateInfo ensurePersonalState() => $_ensure(1);
}

class User_UserGrowth extends $pb.GeneratedMessage {
  factory User_UserGrowth({
    $core.int? levelId,
  }) {
    final $result = create();
    if (levelId != null) {
      $result.levelId = levelId;
    }
    return $result;
  }
  User_UserGrowth._() : super();
  factory User_UserGrowth.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User_UserGrowth.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User.UserGrowth', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'levelId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User_UserGrowth clone() => User_UserGrowth()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User_UserGrowth copyWith(void Function(User_UserGrowth) updates) => super.copyWith((message) => updates(message as User_UserGrowth)) as User_UserGrowth;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User_UserGrowth create() => User_UserGrowth._();
  User_UserGrowth createEmptyInstance() => create();
  static $pb.PbList<User_UserGrowth> createRepeated() => $pb.PbList<User_UserGrowth>();
  @$core.pragma('dart2js:noInline')
  static User_UserGrowth getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User_UserGrowth>(create);
  static User_UserGrowth? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get levelId => $_getIZ(0);
  @$pb.TagNumber(1)
  set levelId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLevelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLevelId() => clearField(1);
}

class User extends $pb.GeneratedMessage {
  factory User({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? nameShow,
    $core.String? portrait,
    $core.Iterable<User_Icon>? iconinfo,
    $core.int? isCoreuser,
    $core.int? levelId,
    $core.int? isBawu,
    $core.String? bawuType,
    $core.String? bDUSS,
    $core.int? fansNum,
    $core.int? concernNum,
    $core.int? sex,
    $core.int? myLikeNum,
    $core.String? intro,
    $core.int? postNum,
    $core.String? tbAge,
    $core.int? gender,
    User_PrivSets? privSets,
    $core.int? isFriend,
    $core.Iterable<User_LikeForumInfo>? likeForum,
    $core.int? isGuanfang,
    User_UserVipInfo? vipInfo,
    $core.Iterable<User_TshowInfo>? newTshowIcon,
    $core.int? isFans,
    User_NewGodInfo? newGodData,
    $core.int? isDefaultAvatar,
    $core.String? tiebaUid,
    $core.String? ipAddress,
    User_VirtualImageInfo? virtualImageInfo,
    User_UserGrowth? userGrowth,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (nameShow != null) {
      $result.nameShow = nameShow;
    }
    if (portrait != null) {
      $result.portrait = portrait;
    }
    if (iconinfo != null) {
      $result.iconinfo.addAll(iconinfo);
    }
    if (isCoreuser != null) {
      $result.isCoreuser = isCoreuser;
    }
    if (levelId != null) {
      $result.levelId = levelId;
    }
    if (isBawu != null) {
      $result.isBawu = isBawu;
    }
    if (bawuType != null) {
      $result.bawuType = bawuType;
    }
    if (bDUSS != null) {
      $result.bDUSS = bDUSS;
    }
    if (fansNum != null) {
      $result.fansNum = fansNum;
    }
    if (concernNum != null) {
      $result.concernNum = concernNum;
    }
    if (sex != null) {
      $result.sex = sex;
    }
    if (myLikeNum != null) {
      $result.myLikeNum = myLikeNum;
    }
    if (intro != null) {
      $result.intro = intro;
    }
    if (postNum != null) {
      $result.postNum = postNum;
    }
    if (tbAge != null) {
      $result.tbAge = tbAge;
    }
    if (gender != null) {
      $result.gender = gender;
    }
    if (privSets != null) {
      $result.privSets = privSets;
    }
    if (isFriend != null) {
      $result.isFriend = isFriend;
    }
    if (likeForum != null) {
      $result.likeForum.addAll(likeForum);
    }
    if (isGuanfang != null) {
      $result.isGuanfang = isGuanfang;
    }
    if (vipInfo != null) {
      $result.vipInfo = vipInfo;
    }
    if (newTshowIcon != null) {
      $result.newTshowIcon.addAll(newTshowIcon);
    }
    if (isFans != null) {
      $result.isFans = isFans;
    }
    if (newGodData != null) {
      $result.newGodData = newGodData;
    }
    if (isDefaultAvatar != null) {
      $result.isDefaultAvatar = isDefaultAvatar;
    }
    if (tiebaUid != null) {
      $result.tiebaUid = tiebaUid;
    }
    if (ipAddress != null) {
      $result.ipAddress = ipAddress;
    }
    if (virtualImageInfo != null) {
      $result.virtualImageInfo = virtualImageInfo;
    }
    if (userGrowth != null) {
      $result.userGrowth = userGrowth;
    }
    return $result;
  }
  User._() : super();
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User', createEmptyInstance: create)
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'nameShow')
    ..aOS(5, _omitFieldNames ? '' : 'portrait')
    ..pc<User_Icon>(17, _omitFieldNames ? '' : 'iconinfo', $pb.PbFieldType.PM, subBuilder: User_Icon.create)
    ..a<$core.int>(20, _omitFieldNames ? '' : 'isCoreuser', $pb.PbFieldType.O3)
    ..a<$core.int>(23, _omitFieldNames ? '' : 'levelId', $pb.PbFieldType.O3)
    ..a<$core.int>(25, _omitFieldNames ? '' : 'isBawu', $pb.PbFieldType.O3)
    ..aOS(26, _omitFieldNames ? '' : 'bawuType')
    ..aOS(29, _omitFieldNames ? '' : 'BDUSS', protoName: 'BDUSS')
    ..a<$core.int>(30, _omitFieldNames ? '' : 'fansNum', $pb.PbFieldType.O3)
    ..a<$core.int>(31, _omitFieldNames ? '' : 'concernNum', $pb.PbFieldType.O3)
    ..a<$core.int>(32, _omitFieldNames ? '' : 'sex', $pb.PbFieldType.O3)
    ..a<$core.int>(33, _omitFieldNames ? '' : 'myLikeNum', $pb.PbFieldType.O3)
    ..aOS(34, _omitFieldNames ? '' : 'intro')
    ..a<$core.int>(37, _omitFieldNames ? '' : 'postNum', $pb.PbFieldType.O3)
    ..aOS(38, _omitFieldNames ? '' : 'tbAge')
    ..a<$core.int>(42, _omitFieldNames ? '' : 'gender', $pb.PbFieldType.O3)
    ..aOM<User_PrivSets>(45, _omitFieldNames ? '' : 'privSets', subBuilder: User_PrivSets.create)
    ..a<$core.int>(46, _omitFieldNames ? '' : 'isFriend', $pb.PbFieldType.O3)
    ..pc<User_LikeForumInfo>(47, _omitFieldNames ? '' : 'likeForum', $pb.PbFieldType.PM, protoName: 'likeForum', subBuilder: User_LikeForumInfo.create)
    ..a<$core.int>(52, _omitFieldNames ? '' : 'isGuanfang', $pb.PbFieldType.O3)
    ..aOM<User_UserVipInfo>(61, _omitFieldNames ? '' : 'vipInfo', protoName: 'vipInfo', subBuilder: User_UserVipInfo.create)
    ..pc<User_TshowInfo>(65, _omitFieldNames ? '' : 'newTshowIcon', $pb.PbFieldType.PM, subBuilder: User_TshowInfo.create)
    ..a<$core.int>(91, _omitFieldNames ? '' : 'isFans', $pb.PbFieldType.O3)
    ..aOM<User_NewGodInfo>(101, _omitFieldNames ? '' : 'newGodData', subBuilder: User_NewGodInfo.create)
    ..a<$core.int>(106, _omitFieldNames ? '' : 'isDefaultAvatar', $pb.PbFieldType.O3)
    ..aOS(120, _omitFieldNames ? '' : 'tiebaUid')
    ..aOS(127, _omitFieldNames ? '' : 'ipAddress')
    ..aOM<User_VirtualImageInfo>(136, _omitFieldNames ? '' : 'virtualImageInfo', subBuilder: User_VirtualImageInfo.create)
    ..aOM<User_UserGrowth>(137, _omitFieldNames ? '' : 'userGrowth', subBuilder: User_UserGrowth.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get nameShow => $_getSZ(2);
  @$pb.TagNumber(4)
  set nameShow($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasNameShow() => $_has(2);
  @$pb.TagNumber(4)
  void clearNameShow() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get portrait => $_getSZ(3);
  @$pb.TagNumber(5)
  set portrait($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasPortrait() => $_has(3);
  @$pb.TagNumber(5)
  void clearPortrait() => clearField(5);

  @$pb.TagNumber(17)
  $core.List<User_Icon> get iconinfo => $_getList(4);

  @$pb.TagNumber(20)
  $core.int get isCoreuser => $_getIZ(5);
  @$pb.TagNumber(20)
  set isCoreuser($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(20)
  $core.bool hasIsCoreuser() => $_has(5);
  @$pb.TagNumber(20)
  void clearIsCoreuser() => clearField(20);

  @$pb.TagNumber(23)
  $core.int get levelId => $_getIZ(6);
  @$pb.TagNumber(23)
  set levelId($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(23)
  $core.bool hasLevelId() => $_has(6);
  @$pb.TagNumber(23)
  void clearLevelId() => clearField(23);

  @$pb.TagNumber(25)
  $core.int get isBawu => $_getIZ(7);
  @$pb.TagNumber(25)
  set isBawu($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(25)
  $core.bool hasIsBawu() => $_has(7);
  @$pb.TagNumber(25)
  void clearIsBawu() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get bawuType => $_getSZ(8);
  @$pb.TagNumber(26)
  set bawuType($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(26)
  $core.bool hasBawuType() => $_has(8);
  @$pb.TagNumber(26)
  void clearBawuType() => clearField(26);

  @$pb.TagNumber(29)
  $core.String get bDUSS => $_getSZ(9);
  @$pb.TagNumber(29)
  set bDUSS($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(29)
  $core.bool hasBDUSS() => $_has(9);
  @$pb.TagNumber(29)
  void clearBDUSS() => clearField(29);

  @$pb.TagNumber(30)
  $core.int get fansNum => $_getIZ(10);
  @$pb.TagNumber(30)
  set fansNum($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(30)
  $core.bool hasFansNum() => $_has(10);
  @$pb.TagNumber(30)
  void clearFansNum() => clearField(30);

  @$pb.TagNumber(31)
  $core.int get concernNum => $_getIZ(11);
  @$pb.TagNumber(31)
  set concernNum($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(31)
  $core.bool hasConcernNum() => $_has(11);
  @$pb.TagNumber(31)
  void clearConcernNum() => clearField(31);

  @$pb.TagNumber(32)
  $core.int get sex => $_getIZ(12);
  @$pb.TagNumber(32)
  set sex($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(32)
  $core.bool hasSex() => $_has(12);
  @$pb.TagNumber(32)
  void clearSex() => clearField(32);

  @$pb.TagNumber(33)
  $core.int get myLikeNum => $_getIZ(13);
  @$pb.TagNumber(33)
  set myLikeNum($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(33)
  $core.bool hasMyLikeNum() => $_has(13);
  @$pb.TagNumber(33)
  void clearMyLikeNum() => clearField(33);

  @$pb.TagNumber(34)
  $core.String get intro => $_getSZ(14);
  @$pb.TagNumber(34)
  set intro($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(34)
  $core.bool hasIntro() => $_has(14);
  @$pb.TagNumber(34)
  void clearIntro() => clearField(34);

  @$pb.TagNumber(37)
  $core.int get postNum => $_getIZ(15);
  @$pb.TagNumber(37)
  set postNum($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(37)
  $core.bool hasPostNum() => $_has(15);
  @$pb.TagNumber(37)
  void clearPostNum() => clearField(37);

  @$pb.TagNumber(38)
  $core.String get tbAge => $_getSZ(16);
  @$pb.TagNumber(38)
  set tbAge($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(38)
  $core.bool hasTbAge() => $_has(16);
  @$pb.TagNumber(38)
  void clearTbAge() => clearField(38);

  @$pb.TagNumber(42)
  $core.int get gender => $_getIZ(17);
  @$pb.TagNumber(42)
  set gender($core.int v) { $_setSignedInt32(17, v); }
  @$pb.TagNumber(42)
  $core.bool hasGender() => $_has(17);
  @$pb.TagNumber(42)
  void clearGender() => clearField(42);

  @$pb.TagNumber(45)
  User_PrivSets get privSets => $_getN(18);
  @$pb.TagNumber(45)
  set privSets(User_PrivSets v) { setField(45, v); }
  @$pb.TagNumber(45)
  $core.bool hasPrivSets() => $_has(18);
  @$pb.TagNumber(45)
  void clearPrivSets() => clearField(45);
  @$pb.TagNumber(45)
  User_PrivSets ensurePrivSets() => $_ensure(18);

  @$pb.TagNumber(46)
  $core.int get isFriend => $_getIZ(19);
  @$pb.TagNumber(46)
  set isFriend($core.int v) { $_setSignedInt32(19, v); }
  @$pb.TagNumber(46)
  $core.bool hasIsFriend() => $_has(19);
  @$pb.TagNumber(46)
  void clearIsFriend() => clearField(46);

  @$pb.TagNumber(47)
  $core.List<User_LikeForumInfo> get likeForum => $_getList(20);

  @$pb.TagNumber(52)
  $core.int get isGuanfang => $_getIZ(21);
  @$pb.TagNumber(52)
  set isGuanfang($core.int v) { $_setSignedInt32(21, v); }
  @$pb.TagNumber(52)
  $core.bool hasIsGuanfang() => $_has(21);
  @$pb.TagNumber(52)
  void clearIsGuanfang() => clearField(52);

  @$pb.TagNumber(61)
  User_UserVipInfo get vipInfo => $_getN(22);
  @$pb.TagNumber(61)
  set vipInfo(User_UserVipInfo v) { setField(61, v); }
  @$pb.TagNumber(61)
  $core.bool hasVipInfo() => $_has(22);
  @$pb.TagNumber(61)
  void clearVipInfo() => clearField(61);
  @$pb.TagNumber(61)
  User_UserVipInfo ensureVipInfo() => $_ensure(22);

  @$pb.TagNumber(65)
  $core.List<User_TshowInfo> get newTshowIcon => $_getList(23);

  @$pb.TagNumber(91)
  $core.int get isFans => $_getIZ(24);
  @$pb.TagNumber(91)
  set isFans($core.int v) { $_setSignedInt32(24, v); }
  @$pb.TagNumber(91)
  $core.bool hasIsFans() => $_has(24);
  @$pb.TagNumber(91)
  void clearIsFans() => clearField(91);

  @$pb.TagNumber(101)
  User_NewGodInfo get newGodData => $_getN(25);
  @$pb.TagNumber(101)
  set newGodData(User_NewGodInfo v) { setField(101, v); }
  @$pb.TagNumber(101)
  $core.bool hasNewGodData() => $_has(25);
  @$pb.TagNumber(101)
  void clearNewGodData() => clearField(101);
  @$pb.TagNumber(101)
  User_NewGodInfo ensureNewGodData() => $_ensure(25);

  @$pb.TagNumber(106)
  $core.int get isDefaultAvatar => $_getIZ(26);
  @$pb.TagNumber(106)
  set isDefaultAvatar($core.int v) { $_setSignedInt32(26, v); }
  @$pb.TagNumber(106)
  $core.bool hasIsDefaultAvatar() => $_has(26);
  @$pb.TagNumber(106)
  void clearIsDefaultAvatar() => clearField(106);

  @$pb.TagNumber(120)
  $core.String get tiebaUid => $_getSZ(27);
  @$pb.TagNumber(120)
  set tiebaUid($core.String v) { $_setString(27, v); }
  @$pb.TagNumber(120)
  $core.bool hasTiebaUid() => $_has(27);
  @$pb.TagNumber(120)
  void clearTiebaUid() => clearField(120);

  @$pb.TagNumber(127)
  $core.String get ipAddress => $_getSZ(28);
  @$pb.TagNumber(127)
  set ipAddress($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(127)
  $core.bool hasIpAddress() => $_has(28);
  @$pb.TagNumber(127)
  void clearIpAddress() => clearField(127);

  @$pb.TagNumber(136)
  User_VirtualImageInfo get virtualImageInfo => $_getN(29);
  @$pb.TagNumber(136)
  set virtualImageInfo(User_VirtualImageInfo v) { setField(136, v); }
  @$pb.TagNumber(136)
  $core.bool hasVirtualImageInfo() => $_has(29);
  @$pb.TagNumber(136)
  void clearVirtualImageInfo() => clearField(136);
  @$pb.TagNumber(136)
  User_VirtualImageInfo ensureVirtualImageInfo() => $_ensure(29);

  @$pb.TagNumber(137)
  User_UserGrowth get userGrowth => $_getN(30);
  @$pb.TagNumber(137)
  set userGrowth(User_UserGrowth v) { setField(137, v); }
  @$pb.TagNumber(137)
  $core.bool hasUserGrowth() => $_has(30);
  @$pb.TagNumber(137)
  void clearUserGrowth() => clearField(137);
  @$pb.TagNumber(137)
  User_UserGrowth ensureUserGrowth() => $_ensure(30);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
