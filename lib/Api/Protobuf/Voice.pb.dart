//
//  Generated code. Do not modify.
//  source: Voice.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Voice extends $pb.GeneratedMessage {
  factory Voice({
    $core.int? type,
    $core.int? duringTime,
    $core.String? voiceMd5,
    $core.String? voiceUrl,
    $fixnum.Int64? uid,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (duringTime != null) {
      $result.duringTime = duringTime;
    }
    if (voiceMd5 != null) {
      $result.voiceMd5 = voiceMd5;
    }
    if (voiceUrl != null) {
      $result.voiceUrl = voiceUrl;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    return $result;
  }
  Voice._() : super();
  factory Voice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Voice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Voice', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'duringTime', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'voiceMd5')
    ..aOS(4, _omitFieldNames ? '' : 'voiceUrl')
    ..aInt64(5, _omitFieldNames ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Voice clone() => Voice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Voice copyWith(void Function(Voice) updates) => super.copyWith((message) => updates(message as Voice)) as Voice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Voice create() => Voice._();
  Voice createEmptyInstance() => create();
  static $pb.PbList<Voice> createRepeated() => $pb.PbList<Voice>();
  @$core.pragma('dart2js:noInline')
  static Voice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Voice>(create);
  static Voice? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get duringTime => $_getIZ(1);
  @$pb.TagNumber(2)
  set duringTime($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDuringTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearDuringTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get voiceMd5 => $_getSZ(2);
  @$pb.TagNumber(3)
  set voiceMd5($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVoiceMd5() => $_has(2);
  @$pb.TagNumber(3)
  void clearVoiceMd5() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get voiceUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set voiceUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVoiceUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearVoiceUrl() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get uid => $_getI64(4);
  @$pb.TagNumber(5)
  set uid($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUid() => $_has(4);
  @$pb.TagNumber(5)
  void clearUid() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
