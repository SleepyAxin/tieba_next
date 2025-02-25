//
//  Generated code. Do not modify.
//  source: Page.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Page extends $pb.GeneratedMessage {
  factory Page({
    $core.int? pageSize,
    $core.int? offset,
    $core.int? currentPage,
    $core.int? totalCount,
    $core.int? totalPage,
    $core.int? hasMore,
    $core.int? hasPrev,
    $core.int? curGoodId,
    $core.int? reqNum,
    $core.int? pnum,
    $core.int? tnum,
    $core.int? totalNum,
    $core.int? lzTotalFloor,
    $core.int? newTotalPage,
  }) {
    final $result = create();
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (currentPage != null) {
      $result.currentPage = currentPage;
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    if (totalPage != null) {
      $result.totalPage = totalPage;
    }
    if (hasMore != null) {
      $result.hasMore = hasMore;
    }
    if (hasPrev != null) {
      $result.hasPrev = hasPrev;
    }
    if (curGoodId != null) {
      $result.curGoodId = curGoodId;
    }
    if (reqNum != null) {
      $result.reqNum = reqNum;
    }
    if (pnum != null) {
      $result.pnum = pnum;
    }
    if (tnum != null) {
      $result.tnum = tnum;
    }
    if (totalNum != null) {
      $result.totalNum = totalNum;
    }
    if (lzTotalFloor != null) {
      $result.lzTotalFloor = lzTotalFloor;
    }
    if (newTotalPage != null) {
      $result.newTotalPage = newTotalPage;
    }
    return $result;
  }
  Page._() : super();
  factory Page.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Page.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Page', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'offset', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'currentPage', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'totalCount', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'totalPage', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'hasMore', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'hasPrev', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'curGoodId', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'reqNum', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'pnum', $pb.PbFieldType.O3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'tnum', $pb.PbFieldType.O3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'totalNum', $pb.PbFieldType.O3)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'lzTotalFloor', $pb.PbFieldType.O3)
    ..a<$core.int>(14, _omitFieldNames ? '' : 'newTotalPage', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Page clone() => Page()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Page copyWith(void Function(Page) updates) => super.copyWith((message) => updates(message as Page)) as Page;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Page create() => Page._();
  Page createEmptyInstance() => create();
  static $pb.PbList<Page> createRepeated() => $pb.PbList<Page>();
  @$core.pragma('dart2js:noInline')
  static Page getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Page>(create);
  static Page? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pageSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageSize($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageSize() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get offset => $_getIZ(1);
  @$pb.TagNumber(2)
  set offset($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get currentPage => $_getIZ(2);
  @$pb.TagNumber(3)
  set currentPage($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrentPage() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentPage() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get totalCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set totalCount($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalCount() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get totalPage => $_getIZ(4);
  @$pb.TagNumber(5)
  set totalPage($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalPage() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalPage() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get hasMore => $_getIZ(5);
  @$pb.TagNumber(6)
  set hasMore($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHasMore() => $_has(5);
  @$pb.TagNumber(6)
  void clearHasMore() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get hasPrev => $_getIZ(6);
  @$pb.TagNumber(7)
  set hasPrev($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasHasPrev() => $_has(6);
  @$pb.TagNumber(7)
  void clearHasPrev() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get curGoodId => $_getIZ(7);
  @$pb.TagNumber(8)
  set curGoodId($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCurGoodId() => $_has(7);
  @$pb.TagNumber(8)
  void clearCurGoodId() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get reqNum => $_getIZ(8);
  @$pb.TagNumber(9)
  set reqNum($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasReqNum() => $_has(8);
  @$pb.TagNumber(9)
  void clearReqNum() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get pnum => $_getIZ(9);
  @$pb.TagNumber(10)
  set pnum($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPnum() => $_has(9);
  @$pb.TagNumber(10)
  void clearPnum() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get tnum => $_getIZ(10);
  @$pb.TagNumber(11)
  set tnum($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTnum() => $_has(10);
  @$pb.TagNumber(11)
  void clearTnum() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get totalNum => $_getIZ(11);
  @$pb.TagNumber(12)
  set totalNum($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTotalNum() => $_has(11);
  @$pb.TagNumber(12)
  void clearTotalNum() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get lzTotalFloor => $_getIZ(12);
  @$pb.TagNumber(13)
  set lzTotalFloor($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasLzTotalFloor() => $_has(12);
  @$pb.TagNumber(13)
  void clearLzTotalFloor() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get newTotalPage => $_getIZ(13);
  @$pb.TagNumber(14)
  set newTotalPage($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasNewTotalPage() => $_has(13);
  @$pb.TagNumber(14)
  void clearNewTotalPage() => clearField(14);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
