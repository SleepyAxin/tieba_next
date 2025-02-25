//
//  Generated code. Do not modify.
//  source: Agree.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Agree extends $pb.GeneratedMessage {
  factory Agree({
    $fixnum.Int64? agreeNum,
    $core.int? hasAgree,
    $core.int? agreeType,
    $fixnum.Int64? disagreeNum,
    $fixnum.Int64? diffAgreeNum,
    $core.int? lzAgree,
  }) {
    final $result = create();
    if (agreeNum != null) {
      $result.agreeNum = agreeNum;
    }
    if (hasAgree != null) {
      $result.hasAgree = hasAgree;
    }
    if (agreeType != null) {
      $result.agreeType = agreeType;
    }
    if (disagreeNum != null) {
      $result.disagreeNum = disagreeNum;
    }
    if (diffAgreeNum != null) {
      $result.diffAgreeNum = diffAgreeNum;
    }
    if (lzAgree != null) {
      $result.lzAgree = lzAgree;
    }
    return $result;
  }
  Agree._() : super();
  factory Agree.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Agree.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Agree', createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'agreeNum')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'hasAgree', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'agreeType', $pb.PbFieldType.O3)
    ..aInt64(4, _omitFieldNames ? '' : 'disagreeNum')
    ..aInt64(5, _omitFieldNames ? '' : 'diffAgreeNum')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'lzAgree', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Agree clone() => Agree()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Agree copyWith(void Function(Agree) updates) => super.copyWith((message) => updates(message as Agree)) as Agree;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Agree create() => Agree._();
  Agree createEmptyInstance() => create();
  static $pb.PbList<Agree> createRepeated() => $pb.PbList<Agree>();
  @$core.pragma('dart2js:noInline')
  static Agree getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Agree>(create);
  static Agree? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get agreeNum => $_getI64(0);
  @$pb.TagNumber(1)
  set agreeNum($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAgreeNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearAgreeNum() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get hasAgree => $_getIZ(1);
  @$pb.TagNumber(2)
  set hasAgree($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHasAgree() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasAgree() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get agreeType => $_getIZ(2);
  @$pb.TagNumber(3)
  set agreeType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAgreeType() => $_has(2);
  @$pb.TagNumber(3)
  void clearAgreeType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get disagreeNum => $_getI64(3);
  @$pb.TagNumber(4)
  set disagreeNum($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDisagreeNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearDisagreeNum() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get diffAgreeNum => $_getI64(4);
  @$pb.TagNumber(5)
  set diffAgreeNum($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDiffAgreeNum() => $_has(4);
  @$pb.TagNumber(5)
  void clearDiffAgreeNum() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get lzAgree => $_getIZ(5);
  @$pb.TagNumber(6)
  set lzAgree($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLzAgree() => $_has(5);
  @$pb.TagNumber(6)
  void clearLzAgree() => clearField(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
