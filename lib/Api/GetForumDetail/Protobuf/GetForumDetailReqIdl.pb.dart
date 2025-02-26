//
//  Generated code. Do not modify.
//  source: GetForumDetailReqIdl.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'package:tieba_next/Api/Protobuf/CommonReq.pb.dart' as $0;

class GetForumDetailReqIdl_DataReq extends $pb.GeneratedMessage {
  factory GetForumDetailReqIdl_DataReq({
    $fixnum.Int64? forumId,
    $0.CommonReq? common,
  }) {
    final $result = create();
    if (forumId != null) {
      $result.forumId = forumId;
    }
    if (common != null) {
      $result.common = common;
    }
    return $result;
  }
  GetForumDetailReqIdl_DataReq._() : super();
  factory GetForumDetailReqIdl_DataReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetForumDetailReqIdl_DataReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetForumDetailReqIdl.DataReq', createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'forumId')
    ..aOM<$0.CommonReq>(2, _omitFieldNames ? '' : 'common', subBuilder: $0.CommonReq.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetForumDetailReqIdl_DataReq clone() => GetForumDetailReqIdl_DataReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetForumDetailReqIdl_DataReq copyWith(void Function(GetForumDetailReqIdl_DataReq) updates) => super.copyWith((message) => updates(message as GetForumDetailReqIdl_DataReq)) as GetForumDetailReqIdl_DataReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetForumDetailReqIdl_DataReq create() => GetForumDetailReqIdl_DataReq._();
  GetForumDetailReqIdl_DataReq createEmptyInstance() => create();
  static $pb.PbList<GetForumDetailReqIdl_DataReq> createRepeated() => $pb.PbList<GetForumDetailReqIdl_DataReq>();
  @$core.pragma('dart2js:noInline')
  static GetForumDetailReqIdl_DataReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetForumDetailReqIdl_DataReq>(create);
  static GetForumDetailReqIdl_DataReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get forumId => $_getI64(0);
  @$pb.TagNumber(1)
  set forumId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasForumId() => $_has(0);
  @$pb.TagNumber(1)
  void clearForumId() => clearField(1);

  @$pb.TagNumber(2)
  $0.CommonReq get common => $_getN(1);
  @$pb.TagNumber(2)
  set common($0.CommonReq v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommon() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommon() => clearField(2);
  @$pb.TagNumber(2)
  $0.CommonReq ensureCommon() => $_ensure(1);
}

class GetForumDetailReqIdl extends $pb.GeneratedMessage {
  factory GetForumDetailReqIdl({
    GetForumDetailReqIdl_DataReq? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  GetForumDetailReqIdl._() : super();
  factory GetForumDetailReqIdl.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetForumDetailReqIdl.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetForumDetailReqIdl', createEmptyInstance: create)
    ..aOM<GetForumDetailReqIdl_DataReq>(1, _omitFieldNames ? '' : 'data', subBuilder: GetForumDetailReqIdl_DataReq.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetForumDetailReqIdl clone() => GetForumDetailReqIdl()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetForumDetailReqIdl copyWith(void Function(GetForumDetailReqIdl) updates) => super.copyWith((message) => updates(message as GetForumDetailReqIdl)) as GetForumDetailReqIdl;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetForumDetailReqIdl create() => GetForumDetailReqIdl._();
  GetForumDetailReqIdl createEmptyInstance() => create();
  static $pb.PbList<GetForumDetailReqIdl> createRepeated() => $pb.PbList<GetForumDetailReqIdl>();
  @$core.pragma('dart2js:noInline')
  static GetForumDetailReqIdl getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetForumDetailReqIdl>(create);
  static GetForumDetailReqIdl? _defaultInstance;

  @$pb.TagNumber(1)
  GetForumDetailReqIdl_DataReq get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(GetForumDetailReqIdl_DataReq v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  GetForumDetailReqIdl_DataReq ensureData() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
