//
//  Generated code. Do not modify.
//  source: LayoutFactory.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class LayoutFactory_FeedLayout_FeedKV extends $pb.GeneratedMessage {
  factory LayoutFactory_FeedLayout_FeedKV({
    $core.String? key,
    $core.String? value,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  LayoutFactory_FeedLayout_FeedKV._() : super();
  factory LayoutFactory_FeedLayout_FeedKV.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LayoutFactory_FeedLayout_FeedKV.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LayoutFactory.FeedLayout.FeedKV', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LayoutFactory_FeedLayout_FeedKV clone() => LayoutFactory_FeedLayout_FeedKV()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LayoutFactory_FeedLayout_FeedKV copyWith(void Function(LayoutFactory_FeedLayout_FeedKV) updates) => super.copyWith((message) => updates(message as LayoutFactory_FeedLayout_FeedKV)) as LayoutFactory_FeedLayout_FeedKV;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LayoutFactory_FeedLayout_FeedKV create() => LayoutFactory_FeedLayout_FeedKV._();
  LayoutFactory_FeedLayout_FeedKV createEmptyInstance() => create();
  static $pb.PbList<LayoutFactory_FeedLayout_FeedKV> createRepeated() => $pb.PbList<LayoutFactory_FeedLayout_FeedKV>();
  @$core.pragma('dart2js:noInline')
  static LayoutFactory_FeedLayout_FeedKV getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LayoutFactory_FeedLayout_FeedKV>(create);
  static LayoutFactory_FeedLayout_FeedKV? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class LayoutFactory_FeedLayout extends $pb.GeneratedMessage {
  factory LayoutFactory_FeedLayout({
    $core.Iterable<LayoutFactory_FeedLayout_FeedKV>? businessInfo,
  }) {
    final $result = create();
    if (businessInfo != null) {
      $result.businessInfo.addAll(businessInfo);
    }
    return $result;
  }
  LayoutFactory_FeedLayout._() : super();
  factory LayoutFactory_FeedLayout.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LayoutFactory_FeedLayout.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LayoutFactory.FeedLayout', createEmptyInstance: create)
    ..pc<LayoutFactory_FeedLayout_FeedKV>(5, _omitFieldNames ? '' : 'businessInfo', $pb.PbFieldType.PM, subBuilder: LayoutFactory_FeedLayout_FeedKV.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LayoutFactory_FeedLayout clone() => LayoutFactory_FeedLayout()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LayoutFactory_FeedLayout copyWith(void Function(LayoutFactory_FeedLayout) updates) => super.copyWith((message) => updates(message as LayoutFactory_FeedLayout)) as LayoutFactory_FeedLayout;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LayoutFactory_FeedLayout create() => LayoutFactory_FeedLayout._();
  LayoutFactory_FeedLayout createEmptyInstance() => create();
  static $pb.PbList<LayoutFactory_FeedLayout> createRepeated() => $pb.PbList<LayoutFactory_FeedLayout>();
  @$core.pragma('dart2js:noInline')
  static LayoutFactory_FeedLayout getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LayoutFactory_FeedLayout>(create);
  static LayoutFactory_FeedLayout? _defaultInstance;

  @$pb.TagNumber(5)
  $core.List<LayoutFactory_FeedLayout_FeedKV> get businessInfo => $_getList(0);
}

class LayoutFactory extends $pb.GeneratedMessage {
  factory LayoutFactory({
    $core.String? layout,
    LayoutFactory_FeedLayout? feed,
  }) {
    final $result = create();
    if (layout != null) {
      $result.layout = layout;
    }
    if (feed != null) {
      $result.feed = feed;
    }
    return $result;
  }
  LayoutFactory._() : super();
  factory LayoutFactory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LayoutFactory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LayoutFactory', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'layout')
    ..aOM<LayoutFactory_FeedLayout>(2, _omitFieldNames ? '' : 'feed', subBuilder: LayoutFactory_FeedLayout.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LayoutFactory clone() => LayoutFactory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LayoutFactory copyWith(void Function(LayoutFactory) updates) => super.copyWith((message) => updates(message as LayoutFactory)) as LayoutFactory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LayoutFactory create() => LayoutFactory._();
  LayoutFactory createEmptyInstance() => create();
  static $pb.PbList<LayoutFactory> createRepeated() => $pb.PbList<LayoutFactory>();
  @$core.pragma('dart2js:noInline')
  static LayoutFactory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LayoutFactory>(create);
  static LayoutFactory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get layout => $_getSZ(0);
  @$pb.TagNumber(1)
  set layout($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLayout() => $_has(0);
  @$pb.TagNumber(1)
  void clearLayout() => clearField(1);

  @$pb.TagNumber(2)
  LayoutFactory_FeedLayout get feed => $_getN(1);
  @$pb.TagNumber(2)
  set feed(LayoutFactory_FeedLayout v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFeed() => $_has(1);
  @$pb.TagNumber(2)
  void clearFeed() => clearField(2);
  @$pb.TagNumber(2)
  LayoutFactory_FeedLayout ensureFeed() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
