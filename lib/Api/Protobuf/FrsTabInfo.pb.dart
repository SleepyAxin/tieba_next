//
//  Generated code. Do not modify.
//  source: FrsTabInfo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FrsTabInfo extends $pb.GeneratedMessage {
  factory FrsTabInfo({
    $core.int? tabId,
    $core.String? tabName,
  }) {
    final $result = create();
    if (tabId != null) {
      $result.tabId = tabId;
    }
    if (tabName != null) {
      $result.tabName = tabName;
    }
    return $result;
  }
  FrsTabInfo._() : super();
  factory FrsTabInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FrsTabInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FrsTabInfo', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'tabId', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'tabName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FrsTabInfo clone() => FrsTabInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FrsTabInfo copyWith(void Function(FrsTabInfo) updates) => super.copyWith((message) => updates(message as FrsTabInfo)) as FrsTabInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FrsTabInfo create() => FrsTabInfo._();
  FrsTabInfo createEmptyInstance() => create();
  static $pb.PbList<FrsTabInfo> createRepeated() => $pb.PbList<FrsTabInfo>();
  @$core.pragma('dart2js:noInline')
  static FrsTabInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FrsTabInfo>(create);
  static FrsTabInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get tabId => $_getIZ(0);
  @$pb.TagNumber(1)
  set tabId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTabId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTabId() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get tabName => $_getSZ(1);
  @$pb.TagNumber(3)
  set tabName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasTabName() => $_has(1);
  @$pb.TagNumber(3)
  void clearTabName() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
