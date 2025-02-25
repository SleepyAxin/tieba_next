//
//  Generated code. Do not modify.
//  source: Media.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Media extends $pb.GeneratedMessage {
  factory Media({
    $core.int? type,
    $core.String? smallPic,
    $core.String? bigPic,
    $core.String? waterPic,
    $core.int? width,
    $core.int? height,
    $core.String? originPic,
    $core.int? originSize,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (smallPic != null) {
      $result.smallPic = smallPic;
    }
    if (bigPic != null) {
      $result.bigPic = bigPic;
    }
    if (waterPic != null) {
      $result.waterPic = waterPic;
    }
    if (width != null) {
      $result.width = width;
    }
    if (height != null) {
      $result.height = height;
    }
    if (originPic != null) {
      $result.originPic = originPic;
    }
    if (originSize != null) {
      $result.originSize = originSize;
    }
    return $result;
  }
  Media._() : super();
  factory Media.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Media.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Media', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'smallPic')
    ..aOS(3, _omitFieldNames ? '' : 'bigPic')
    ..aOS(4, _omitFieldNames ? '' : 'waterPic')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'width', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OU3)
    ..aOS(15, _omitFieldNames ? '' : 'originPic')
    ..a<$core.int>(16, _omitFieldNames ? '' : 'originSize', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Media clone() => Media()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Media copyWith(void Function(Media) updates) => super.copyWith((message) => updates(message as Media)) as Media;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Media create() => Media._();
  Media createEmptyInstance() => create();
  static $pb.PbList<Media> createRepeated() => $pb.PbList<Media>();
  @$core.pragma('dart2js:noInline')
  static Media getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Media>(create);
  static Media? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get smallPic => $_getSZ(1);
  @$pb.TagNumber(2)
  set smallPic($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSmallPic() => $_has(1);
  @$pb.TagNumber(2)
  void clearSmallPic() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get bigPic => $_getSZ(2);
  @$pb.TagNumber(3)
  set bigPic($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBigPic() => $_has(2);
  @$pb.TagNumber(3)
  void clearBigPic() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get waterPic => $_getSZ(3);
  @$pb.TagNumber(4)
  set waterPic($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWaterPic() => $_has(3);
  @$pb.TagNumber(4)
  void clearWaterPic() => clearField(4);

  @$pb.TagNumber(10)
  $core.int get width => $_getIZ(4);
  @$pb.TagNumber(10)
  set width($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(10)
  $core.bool hasWidth() => $_has(4);
  @$pb.TagNumber(10)
  void clearWidth() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get height => $_getIZ(5);
  @$pb.TagNumber(11)
  set height($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(11)
  $core.bool hasHeight() => $_has(5);
  @$pb.TagNumber(11)
  void clearHeight() => clearField(11);

  @$pb.TagNumber(15)
  $core.String get originPic => $_getSZ(6);
  @$pb.TagNumber(15)
  set originPic($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(15)
  $core.bool hasOriginPic() => $_has(6);
  @$pb.TagNumber(15)
  void clearOriginPic() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get originSize => $_getIZ(7);
  @$pb.TagNumber(16)
  set originSize($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(16)
  $core.bool hasOriginSize() => $_has(7);
  @$pb.TagNumber(16)
  void clearOriginSize() => clearField(16);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
