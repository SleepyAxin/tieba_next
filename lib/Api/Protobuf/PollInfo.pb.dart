//
//  Generated code. Do not modify.
//  source: PollInfo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class PollInfo_PollOption extends $pb.GeneratedMessage {
  factory PollInfo_PollOption({
    $fixnum.Int64? num,
    $core.String? text,
  }) {
    final $result = create();
    if (num != null) {
      $result.num = num;
    }
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  PollInfo_PollOption._() : super();
  factory PollInfo_PollOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PollInfo_PollOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PollInfo.PollOption', createEmptyInstance: create)
    ..aInt64(2, _omitFieldNames ? '' : 'num')
    ..aOS(3, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PollInfo_PollOption clone() => PollInfo_PollOption()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PollInfo_PollOption copyWith(void Function(PollInfo_PollOption) updates) => super.copyWith((message) => updates(message as PollInfo_PollOption)) as PollInfo_PollOption;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PollInfo_PollOption create() => PollInfo_PollOption._();
  PollInfo_PollOption createEmptyInstance() => create();
  static $pb.PbList<PollInfo_PollOption> createRepeated() => $pb.PbList<PollInfo_PollOption>();
  @$core.pragma('dart2js:noInline')
  static PollInfo_PollOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PollInfo_PollOption>(create);
  static PollInfo_PollOption? _defaultInstance;

  @$pb.TagNumber(2)
  $fixnum.Int64 get num => $_getI64(0);
  @$pb.TagNumber(2)
  set num($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasNum() => $_has(0);
  @$pb.TagNumber(2)
  void clearNum() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(3)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(3)
  void clearText() => clearField(3);
}

class PollInfo extends $pb.GeneratedMessage {
  factory PollInfo({
    $core.int? isMulti,
    $fixnum.Int64? totalNum,
    $core.Iterable<PollInfo_PollOption>? options,
    $fixnum.Int64? totalPoll,
    $core.String? title,
  }) {
    final $result = create();
    if (isMulti != null) {
      $result.isMulti = isMulti;
    }
    if (totalNum != null) {
      $result.totalNum = totalNum;
    }
    if (options != null) {
      $result.options.addAll(options);
    }
    if (totalPoll != null) {
      $result.totalPoll = totalPoll;
    }
    if (title != null) {
      $result.title = title;
    }
    return $result;
  }
  PollInfo._() : super();
  factory PollInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PollInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PollInfo', createEmptyInstance: create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'isMulti', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'totalNum')
    ..pc<PollInfo_PollOption>(9, _omitFieldNames ? '' : 'options', $pb.PbFieldType.PM, subBuilder: PollInfo_PollOption.create)
    ..aInt64(11, _omitFieldNames ? '' : 'totalPoll')
    ..aOS(12, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PollInfo clone() => PollInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PollInfo copyWith(void Function(PollInfo) updates) => super.copyWith((message) => updates(message as PollInfo)) as PollInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PollInfo create() => PollInfo._();
  PollInfo createEmptyInstance() => create();
  static $pb.PbList<PollInfo> createRepeated() => $pb.PbList<PollInfo>();
  @$core.pragma('dart2js:noInline')
  static PollInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PollInfo>(create);
  static PollInfo? _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get isMulti => $_getIZ(0);
  @$pb.TagNumber(2)
  set isMulti($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsMulti() => $_has(0);
  @$pb.TagNumber(2)
  void clearIsMulti() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalNum => $_getI64(1);
  @$pb.TagNumber(3)
  set totalNum($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalNum() => $_has(1);
  @$pb.TagNumber(3)
  void clearTotalNum() => clearField(3);

  @$pb.TagNumber(9)
  $core.List<PollInfo_PollOption> get options => $_getList(2);

  @$pb.TagNumber(11)
  $fixnum.Int64 get totalPoll => $_getI64(3);
  @$pb.TagNumber(11)
  set totalPoll($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(11)
  $core.bool hasTotalPoll() => $_has(3);
  @$pb.TagNumber(11)
  void clearTotalPoll() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get title => $_getSZ(4);
  @$pb.TagNumber(12)
  set title($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(12)
  $core.bool hasTitle() => $_has(4);
  @$pb.TagNumber(12)
  void clearTitle() => clearField(12);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
