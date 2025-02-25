//
//  Generated code. Do not modify.
//  source: VideoInfo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class VideoInfo extends $pb.GeneratedMessage {
  factory VideoInfo({
    $core.String? videoUrl,
    $core.int? videoDuration,
    $core.int? videoWidth,
    $core.int? videoHeight,
    $core.String? thumbnailUrl,
    $core.int? playCount,
  }) {
    final $result = create();
    if (videoUrl != null) {
      $result.videoUrl = videoUrl;
    }
    if (videoDuration != null) {
      $result.videoDuration = videoDuration;
    }
    if (videoWidth != null) {
      $result.videoWidth = videoWidth;
    }
    if (videoHeight != null) {
      $result.videoHeight = videoHeight;
    }
    if (thumbnailUrl != null) {
      $result.thumbnailUrl = thumbnailUrl;
    }
    if (playCount != null) {
      $result.playCount = playCount;
    }
    return $result;
  }
  VideoInfo._() : super();
  factory VideoInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VideoInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VideoInfo', createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'videoUrl')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'videoDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'videoWidth', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'videoHeight', $pb.PbFieldType.OU3)
    ..aOS(6, _omitFieldNames ? '' : 'thumbnailUrl')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'playCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VideoInfo clone() => VideoInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VideoInfo copyWith(void Function(VideoInfo) updates) => super.copyWith((message) => updates(message as VideoInfo)) as VideoInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoInfo create() => VideoInfo._();
  VideoInfo createEmptyInstance() => create();
  static $pb.PbList<VideoInfo> createRepeated() => $pb.PbList<VideoInfo>();
  @$core.pragma('dart2js:noInline')
  static VideoInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VideoInfo>(create);
  static VideoInfo? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get videoUrl => $_getSZ(0);
  @$pb.TagNumber(2)
  set videoUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasVideoUrl() => $_has(0);
  @$pb.TagNumber(2)
  void clearVideoUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get videoDuration => $_getIZ(1);
  @$pb.TagNumber(3)
  set videoDuration($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasVideoDuration() => $_has(1);
  @$pb.TagNumber(3)
  void clearVideoDuration() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get videoWidth => $_getIZ(2);
  @$pb.TagNumber(4)
  set videoWidth($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasVideoWidth() => $_has(2);
  @$pb.TagNumber(4)
  void clearVideoWidth() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get videoHeight => $_getIZ(3);
  @$pb.TagNumber(5)
  set videoHeight($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasVideoHeight() => $_has(3);
  @$pb.TagNumber(5)
  void clearVideoHeight() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get thumbnailUrl => $_getSZ(4);
  @$pb.TagNumber(6)
  set thumbnailUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasThumbnailUrl() => $_has(4);
  @$pb.TagNumber(6)
  void clearThumbnailUrl() => clearField(6);

  @$pb.TagNumber(10)
  $core.int get playCount => $_getIZ(5);
  @$pb.TagNumber(10)
  set playCount($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(10)
  $core.bool hasPlayCount() => $_has(5);
  @$pb.TagNumber(10)
  void clearPlayCount() => clearField(10);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
