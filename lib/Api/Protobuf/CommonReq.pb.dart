//
//  Generated code. Do not modify.
//  source: CommonReq.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class CommonReq extends $pb.GeneratedMessage {
  factory CommonReq({
    $core.int? clientType,
    $core.String? clientVersion,
    $core.String? clientId,
    $core.String? apid,
    $core.String? phoneImei,
    $core.String? from,
    $core.String? cuid,
    $fixnum.Int64? timestamp,
    $core.String? model,
    $core.String? bDUSS,
    $core.String? tbs,
    $core.int? netType,
    $core.String? subappType,
    $core.String? phoneNewimei,
    $core.String? ka,
    $core.String? mApi,
    $core.String? mLogid,
    $core.String? mCost,
    $core.String? mResult,
    $core.String? mSizeU,
    $core.String? mSizeD,
    $core.String? smallflow,
    $core.String? sign,
    $core.String? pversion,
    $core.String? osVersion,
    $core.String? brand,
    $core.String? brandType,
    $core.String? legoLibVersion,
    $core.String? applist,
    $core.String? stoken,
    $core.String? zId,
    $core.String? cuidGalaxy2,
    $core.String? cuidGid,
    $core.String? oaid,
    $core.String? c3Aid,
    $core.String? sampleId,
    $core.int? scrW,
    $core.int? scrH,
    $core.double? scrDip,
    $core.int? qType,
    $core.int? isTeenager,
    $core.String? sdkVer,
    $core.String? frameworkVer,
    $core.String? nawsGameVer,
    $core.String? idfa,
    $core.String? diac,
    $fixnum.Int64? activeTimestamp,
    $fixnum.Int64? firstInstallTime,
    $fixnum.Int64? lastUpdateTime,
    $core.String? eventDay,
    $core.String? androidId,
    $core.int? cmode,
    $core.String? startScheme,
    $core.int? startType,
    $core.String? shoubaiCuid,
    $core.String? mac,
    $core.String? idfv,
    $core.String? extra,
    $core.String? userAgent,
    $core.int? personalizedRecSwitch,
    $core.String? iemi,
    $core.String? iemiwen,
    $core.String? cam,
    $core.String? afdi,
    $core.String? diDiordna,
    $core.String? vfdi,
    $core.String? deviceScore,
    $core.int? pureMode,
    $core.int? xcxMode,
    $core.String? ledom,
    $core.String? diao,
    $core.String? noisrevSo,
    $core.String? dnarb,
    $core.String? epytDnarb,
    $core.String? wRcs,
    $core.String? hRcs,
    $core.String? pidRcs,
    $core.int? needDecrypt,
    $core.int? needCamDecrypt,
  }) {
    final $result = create();
    if (clientType != null) {
      $result.clientType = clientType;
    }
    if (clientVersion != null) {
      $result.clientVersion = clientVersion;
    }
    if (clientId != null) {
      $result.clientId = clientId;
    }
    if (apid != null) {
      $result.apid = apid;
    }
    if (phoneImei != null) {
      $result.phoneImei = phoneImei;
    }
    if (from != null) {
      $result.from = from;
    }
    if (cuid != null) {
      $result.cuid = cuid;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (model != null) {
      $result.model = model;
    }
    if (bDUSS != null) {
      $result.bDUSS = bDUSS;
    }
    if (tbs != null) {
      $result.tbs = tbs;
    }
    if (netType != null) {
      $result.netType = netType;
    }
    if (subappType != null) {
      $result.subappType = subappType;
    }
    if (phoneNewimei != null) {
      $result.phoneNewimei = phoneNewimei;
    }
    if (ka != null) {
      $result.ka = ka;
    }
    if (mApi != null) {
      $result.mApi = mApi;
    }
    if (mLogid != null) {
      $result.mLogid = mLogid;
    }
    if (mCost != null) {
      $result.mCost = mCost;
    }
    if (mResult != null) {
      $result.mResult = mResult;
    }
    if (mSizeU != null) {
      $result.mSizeU = mSizeU;
    }
    if (mSizeD != null) {
      $result.mSizeD = mSizeD;
    }
    if (smallflow != null) {
      $result.smallflow = smallflow;
    }
    if (sign != null) {
      $result.sign = sign;
    }
    if (pversion != null) {
      $result.pversion = pversion;
    }
    if (osVersion != null) {
      $result.osVersion = osVersion;
    }
    if (brand != null) {
      $result.brand = brand;
    }
    if (brandType != null) {
      $result.brandType = brandType;
    }
    if (legoLibVersion != null) {
      $result.legoLibVersion = legoLibVersion;
    }
    if (applist != null) {
      $result.applist = applist;
    }
    if (stoken != null) {
      $result.stoken = stoken;
    }
    if (zId != null) {
      $result.zId = zId;
    }
    if (cuidGalaxy2 != null) {
      $result.cuidGalaxy2 = cuidGalaxy2;
    }
    if (cuidGid != null) {
      $result.cuidGid = cuidGid;
    }
    if (oaid != null) {
      $result.oaid = oaid;
    }
    if (c3Aid != null) {
      $result.c3Aid = c3Aid;
    }
    if (sampleId != null) {
      $result.sampleId = sampleId;
    }
    if (scrW != null) {
      $result.scrW = scrW;
    }
    if (scrH != null) {
      $result.scrH = scrH;
    }
    if (scrDip != null) {
      $result.scrDip = scrDip;
    }
    if (qType != null) {
      $result.qType = qType;
    }
    if (isTeenager != null) {
      $result.isTeenager = isTeenager;
    }
    if (sdkVer != null) {
      $result.sdkVer = sdkVer;
    }
    if (frameworkVer != null) {
      $result.frameworkVer = frameworkVer;
    }
    if (nawsGameVer != null) {
      $result.nawsGameVer = nawsGameVer;
    }
    if (idfa != null) {
      $result.idfa = idfa;
    }
    if (diac != null) {
      $result.diac = diac;
    }
    if (activeTimestamp != null) {
      $result.activeTimestamp = activeTimestamp;
    }
    if (firstInstallTime != null) {
      $result.firstInstallTime = firstInstallTime;
    }
    if (lastUpdateTime != null) {
      $result.lastUpdateTime = lastUpdateTime;
    }
    if (eventDay != null) {
      $result.eventDay = eventDay;
    }
    if (androidId != null) {
      $result.androidId = androidId;
    }
    if (cmode != null) {
      $result.cmode = cmode;
    }
    if (startScheme != null) {
      $result.startScheme = startScheme;
    }
    if (startType != null) {
      $result.startType = startType;
    }
    if (shoubaiCuid != null) {
      $result.shoubaiCuid = shoubaiCuid;
    }
    if (mac != null) {
      $result.mac = mac;
    }
    if (idfv != null) {
      $result.idfv = idfv;
    }
    if (extra != null) {
      $result.extra = extra;
    }
    if (userAgent != null) {
      $result.userAgent = userAgent;
    }
    if (personalizedRecSwitch != null) {
      $result.personalizedRecSwitch = personalizedRecSwitch;
    }
    if (iemi != null) {
      $result.iemi = iemi;
    }
    if (iemiwen != null) {
      $result.iemiwen = iemiwen;
    }
    if (cam != null) {
      $result.cam = cam;
    }
    if (afdi != null) {
      $result.afdi = afdi;
    }
    if (diDiordna != null) {
      $result.diDiordna = diDiordna;
    }
    if (vfdi != null) {
      $result.vfdi = vfdi;
    }
    if (deviceScore != null) {
      $result.deviceScore = deviceScore;
    }
    if (pureMode != null) {
      $result.pureMode = pureMode;
    }
    if (xcxMode != null) {
      $result.xcxMode = xcxMode;
    }
    if (ledom != null) {
      $result.ledom = ledom;
    }
    if (diao != null) {
      $result.diao = diao;
    }
    if (noisrevSo != null) {
      $result.noisrevSo = noisrevSo;
    }
    if (dnarb != null) {
      $result.dnarb = dnarb;
    }
    if (epytDnarb != null) {
      $result.epytDnarb = epytDnarb;
    }
    if (wRcs != null) {
      $result.wRcs = wRcs;
    }
    if (hRcs != null) {
      $result.hRcs = hRcs;
    }
    if (pidRcs != null) {
      $result.pidRcs = pidRcs;
    }
    if (needDecrypt != null) {
      $result.needDecrypt = needDecrypt;
    }
    if (needCamDecrypt != null) {
      $result.needCamDecrypt = needCamDecrypt;
    }
    return $result;
  }
  CommonReq._() : super();
  factory CommonReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommonReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommonReq', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'ClientType', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'ClientVersion')
    ..aOS(3, _omitFieldNames ? '' : 'ClientId')
    ..aOS(4, _omitFieldNames ? '' : 'apid')
    ..aOS(5, _omitFieldNames ? '' : 'PhoneImei')
    ..aOS(6, _omitFieldNames ? '' : 'from')
    ..aOS(7, _omitFieldNames ? '' : 'cuid')
    ..aInt64(8, _omitFieldNames ? '' : 'Timestamp')
    ..aOS(9, _omitFieldNames ? '' : 'model')
    ..aOS(10, _omitFieldNames ? '' : 'BDUSS', protoName: 'BDUSS')
    ..aOS(11, _omitFieldNames ? '' : 'tbs')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'netType', $pb.PbFieldType.O3)
    ..aOS(13, _omitFieldNames ? '' : 'subappType')
    ..aOS(14, _omitFieldNames ? '' : 'PhoneNewimei')
    ..aOS(15, _omitFieldNames ? '' : 'ka')
    ..aOS(16, _omitFieldNames ? '' : 'mApi')
    ..aOS(17, _omitFieldNames ? '' : 'mLogid')
    ..aOS(18, _omitFieldNames ? '' : 'mCost')
    ..aOS(19, _omitFieldNames ? '' : 'mResult')
    ..aOS(20, _omitFieldNames ? '' : 'mSizeU')
    ..aOS(21, _omitFieldNames ? '' : 'mSizeD')
    ..aOS(22, _omitFieldNames ? '' : 'smallflow')
    ..aOS(23, _omitFieldNames ? '' : 'sign')
    ..aOS(24, _omitFieldNames ? '' : 'pversion')
    ..aOS(25, _omitFieldNames ? '' : 'OsVersion')
    ..aOS(26, _omitFieldNames ? '' : 'brand')
    ..aOS(27, _omitFieldNames ? '' : 'brandType')
    ..aOS(28, _omitFieldNames ? '' : 'legoLibVersion')
    ..aOS(29, _omitFieldNames ? '' : 'applist')
    ..aOS(30, _omitFieldNames ? '' : 'stoken')
    ..aOS(31, _omitFieldNames ? '' : 'zId')
    ..aOS(32, _omitFieldNames ? '' : 'cuidGalaxy2')
    ..aOS(33, _omitFieldNames ? '' : 'cuidGid')
    ..aOS(34, _omitFieldNames ? '' : 'oaid')
    ..aOS(35, _omitFieldNames ? '' : 'c3Aid')
    ..aOS(36, _omitFieldNames ? '' : 'sampleId')
    ..a<$core.int>(37, _omitFieldNames ? '' : 'scrW', $pb.PbFieldType.O3)
    ..a<$core.int>(38, _omitFieldNames ? '' : 'scrH', $pb.PbFieldType.O3)
    ..a<$core.double>(39, _omitFieldNames ? '' : 'scrDip', $pb.PbFieldType.OD)
    ..a<$core.int>(40, _omitFieldNames ? '' : 'qType', $pb.PbFieldType.O3)
    ..a<$core.int>(41, _omitFieldNames ? '' : 'isTeenager', $pb.PbFieldType.O3)
    ..aOS(42, _omitFieldNames ? '' : 'sdkVer')
    ..aOS(43, _omitFieldNames ? '' : 'frameworkVer')
    ..aOS(44, _omitFieldNames ? '' : 'nawsGameVer')
    ..aOS(45, _omitFieldNames ? '' : 'idfa')
    ..aOS(46, _omitFieldNames ? '' : 'diac')
    ..aInt64(49, _omitFieldNames ? '' : 'activeTimestamp')
    ..aInt64(50, _omitFieldNames ? '' : 'firstInstallTime')
    ..aInt64(51, _omitFieldNames ? '' : 'lastUpdateTime')
    ..aOS(53, _omitFieldNames ? '' : 'eventDay')
    ..aOS(54, _omitFieldNames ? '' : 'androidId')
    ..a<$core.int>(55, _omitFieldNames ? '' : 'cmode', $pb.PbFieldType.O3)
    ..aOS(56, _omitFieldNames ? '' : 'startScheme')
    ..a<$core.int>(57, _omitFieldNames ? '' : 'startType', $pb.PbFieldType.O3)
    ..aOS(58, _omitFieldNames ? '' : 'shoubaiCuid')
    ..aOS(59, _omitFieldNames ? '' : 'mac')
    ..aOS(60, _omitFieldNames ? '' : 'idfv')
    ..aOS(61, _omitFieldNames ? '' : 'extra')
    ..aOS(62, _omitFieldNames ? '' : 'userAgent')
    ..a<$core.int>(63, _omitFieldNames ? '' : 'personalizedRecSwitch', $pb.PbFieldType.O3)
    ..aOS(64, _omitFieldNames ? '' : 'iemi')
    ..aOS(65, _omitFieldNames ? '' : 'iemiwen')
    ..aOS(66, _omitFieldNames ? '' : 'cam')
    ..aOS(67, _omitFieldNames ? '' : 'afdi')
    ..aOS(68, _omitFieldNames ? '' : 'diDiordna')
    ..aOS(69, _omitFieldNames ? '' : 'vfdi')
    ..aOS(70, _omitFieldNames ? '' : 'deviceScore')
    ..a<$core.int>(71, _omitFieldNames ? '' : 'pureMode', $pb.PbFieldType.O3)
    ..a<$core.int>(72, _omitFieldNames ? '' : 'xcxMode', $pb.PbFieldType.O3)
    ..aOS(73, _omitFieldNames ? '' : 'ledom')
    ..aOS(74, _omitFieldNames ? '' : 'diao')
    ..aOS(75, _omitFieldNames ? '' : 'noisrevSo')
    ..aOS(76, _omitFieldNames ? '' : 'dnarb')
    ..aOS(77, _omitFieldNames ? '' : 'epytDnarb')
    ..aOS(78, _omitFieldNames ? '' : 'wRcs')
    ..aOS(79, _omitFieldNames ? '' : 'hRcs')
    ..aOS(80, _omitFieldNames ? '' : 'pidRcs')
    ..a<$core.int>(81, _omitFieldNames ? '' : 'needDecrypt', $pb.PbFieldType.O3)
    ..a<$core.int>(82, _omitFieldNames ? '' : 'needCamDecrypt', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommonReq clone() => CommonReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommonReq copyWith(void Function(CommonReq) updates) => super.copyWith((message) => updates(message as CommonReq)) as CommonReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommonReq create() => CommonReq._();
  CommonReq createEmptyInstance() => create();
  static $pb.PbList<CommonReq> createRepeated() => $pb.PbList<CommonReq>();
  @$core.pragma('dart2js:noInline')
  static CommonReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommonReq>(create);
  static CommonReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get clientType => $_getIZ(0);
  @$pb.TagNumber(1)
  set clientType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientType() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get clientVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set clientVersion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClientVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearClientVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get clientId => $_getSZ(2);
  @$pb.TagNumber(3)
  set clientId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasClientId() => $_has(2);
  @$pb.TagNumber(3)
  void clearClientId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get apid => $_getSZ(3);
  @$pb.TagNumber(4)
  set apid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasApid() => $_has(3);
  @$pb.TagNumber(4)
  void clearApid() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get phoneImei => $_getSZ(4);
  @$pb.TagNumber(5)
  set phoneImei($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPhoneImei() => $_has(4);
  @$pb.TagNumber(5)
  void clearPhoneImei() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get from => $_getSZ(5);
  @$pb.TagNumber(6)
  set from($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFrom() => $_has(5);
  @$pb.TagNumber(6)
  void clearFrom() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get cuid => $_getSZ(6);
  @$pb.TagNumber(7)
  set cuid($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCuid() => $_has(6);
  @$pb.TagNumber(7)
  void clearCuid() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get timestamp => $_getI64(7);
  @$pb.TagNumber(8)
  set timestamp($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTimestamp() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimestamp() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get model => $_getSZ(8);
  @$pb.TagNumber(9)
  set model($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasModel() => $_has(8);
  @$pb.TagNumber(9)
  void clearModel() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get bDUSS => $_getSZ(9);
  @$pb.TagNumber(10)
  set bDUSS($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBDUSS() => $_has(9);
  @$pb.TagNumber(10)
  void clearBDUSS() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get tbs => $_getSZ(10);
  @$pb.TagNumber(11)
  set tbs($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTbs() => $_has(10);
  @$pb.TagNumber(11)
  void clearTbs() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get netType => $_getIZ(11);
  @$pb.TagNumber(12)
  set netType($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasNetType() => $_has(11);
  @$pb.TagNumber(12)
  void clearNetType() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get subappType => $_getSZ(12);
  @$pb.TagNumber(13)
  set subappType($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSubappType() => $_has(12);
  @$pb.TagNumber(13)
  void clearSubappType() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get phoneNewimei => $_getSZ(13);
  @$pb.TagNumber(14)
  set phoneNewimei($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasPhoneNewimei() => $_has(13);
  @$pb.TagNumber(14)
  void clearPhoneNewimei() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get ka => $_getSZ(14);
  @$pb.TagNumber(15)
  set ka($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasKa() => $_has(14);
  @$pb.TagNumber(15)
  void clearKa() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get mApi => $_getSZ(15);
  @$pb.TagNumber(16)
  set mApi($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasMApi() => $_has(15);
  @$pb.TagNumber(16)
  void clearMApi() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get mLogid => $_getSZ(16);
  @$pb.TagNumber(17)
  set mLogid($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasMLogid() => $_has(16);
  @$pb.TagNumber(17)
  void clearMLogid() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get mCost => $_getSZ(17);
  @$pb.TagNumber(18)
  set mCost($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasMCost() => $_has(17);
  @$pb.TagNumber(18)
  void clearMCost() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get mResult => $_getSZ(18);
  @$pb.TagNumber(19)
  set mResult($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasMResult() => $_has(18);
  @$pb.TagNumber(19)
  void clearMResult() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get mSizeU => $_getSZ(19);
  @$pb.TagNumber(20)
  set mSizeU($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasMSizeU() => $_has(19);
  @$pb.TagNumber(20)
  void clearMSizeU() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get mSizeD => $_getSZ(20);
  @$pb.TagNumber(21)
  set mSizeD($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasMSizeD() => $_has(20);
  @$pb.TagNumber(21)
  void clearMSizeD() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get smallflow => $_getSZ(21);
  @$pb.TagNumber(22)
  set smallflow($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasSmallflow() => $_has(21);
  @$pb.TagNumber(22)
  void clearSmallflow() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get sign => $_getSZ(22);
  @$pb.TagNumber(23)
  set sign($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasSign() => $_has(22);
  @$pb.TagNumber(23)
  void clearSign() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get pversion => $_getSZ(23);
  @$pb.TagNumber(24)
  set pversion($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasPversion() => $_has(23);
  @$pb.TagNumber(24)
  void clearPversion() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get osVersion => $_getSZ(24);
  @$pb.TagNumber(25)
  set osVersion($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasOsVersion() => $_has(24);
  @$pb.TagNumber(25)
  void clearOsVersion() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get brand => $_getSZ(25);
  @$pb.TagNumber(26)
  set brand($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasBrand() => $_has(25);
  @$pb.TagNumber(26)
  void clearBrand() => clearField(26);

  @$pb.TagNumber(27)
  $core.String get brandType => $_getSZ(26);
  @$pb.TagNumber(27)
  set brandType($core.String v) { $_setString(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasBrandType() => $_has(26);
  @$pb.TagNumber(27)
  void clearBrandType() => clearField(27);

  @$pb.TagNumber(28)
  $core.String get legoLibVersion => $_getSZ(27);
  @$pb.TagNumber(28)
  set legoLibVersion($core.String v) { $_setString(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasLegoLibVersion() => $_has(27);
  @$pb.TagNumber(28)
  void clearLegoLibVersion() => clearField(28);

  @$pb.TagNumber(29)
  $core.String get applist => $_getSZ(28);
  @$pb.TagNumber(29)
  set applist($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasApplist() => $_has(28);
  @$pb.TagNumber(29)
  void clearApplist() => clearField(29);

  @$pb.TagNumber(30)
  $core.String get stoken => $_getSZ(29);
  @$pb.TagNumber(30)
  set stoken($core.String v) { $_setString(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasStoken() => $_has(29);
  @$pb.TagNumber(30)
  void clearStoken() => clearField(30);

  @$pb.TagNumber(31)
  $core.String get zId => $_getSZ(30);
  @$pb.TagNumber(31)
  set zId($core.String v) { $_setString(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasZId() => $_has(30);
  @$pb.TagNumber(31)
  void clearZId() => clearField(31);

  @$pb.TagNumber(32)
  $core.String get cuidGalaxy2 => $_getSZ(31);
  @$pb.TagNumber(32)
  set cuidGalaxy2($core.String v) { $_setString(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasCuidGalaxy2() => $_has(31);
  @$pb.TagNumber(32)
  void clearCuidGalaxy2() => clearField(32);

  @$pb.TagNumber(33)
  $core.String get cuidGid => $_getSZ(32);
  @$pb.TagNumber(33)
  set cuidGid($core.String v) { $_setString(32, v); }
  @$pb.TagNumber(33)
  $core.bool hasCuidGid() => $_has(32);
  @$pb.TagNumber(33)
  void clearCuidGid() => clearField(33);

  @$pb.TagNumber(34)
  $core.String get oaid => $_getSZ(33);
  @$pb.TagNumber(34)
  set oaid($core.String v) { $_setString(33, v); }
  @$pb.TagNumber(34)
  $core.bool hasOaid() => $_has(33);
  @$pb.TagNumber(34)
  void clearOaid() => clearField(34);

  @$pb.TagNumber(35)
  $core.String get c3Aid => $_getSZ(34);
  @$pb.TagNumber(35)
  set c3Aid($core.String v) { $_setString(34, v); }
  @$pb.TagNumber(35)
  $core.bool hasC3Aid() => $_has(34);
  @$pb.TagNumber(35)
  void clearC3Aid() => clearField(35);

  @$pb.TagNumber(36)
  $core.String get sampleId => $_getSZ(35);
  @$pb.TagNumber(36)
  set sampleId($core.String v) { $_setString(35, v); }
  @$pb.TagNumber(36)
  $core.bool hasSampleId() => $_has(35);
  @$pb.TagNumber(36)
  void clearSampleId() => clearField(36);

  @$pb.TagNumber(37)
  $core.int get scrW => $_getIZ(36);
  @$pb.TagNumber(37)
  set scrW($core.int v) { $_setSignedInt32(36, v); }
  @$pb.TagNumber(37)
  $core.bool hasScrW() => $_has(36);
  @$pb.TagNumber(37)
  void clearScrW() => clearField(37);

  @$pb.TagNumber(38)
  $core.int get scrH => $_getIZ(37);
  @$pb.TagNumber(38)
  set scrH($core.int v) { $_setSignedInt32(37, v); }
  @$pb.TagNumber(38)
  $core.bool hasScrH() => $_has(37);
  @$pb.TagNumber(38)
  void clearScrH() => clearField(38);

  @$pb.TagNumber(39)
  $core.double get scrDip => $_getN(38);
  @$pb.TagNumber(39)
  set scrDip($core.double v) { $_setDouble(38, v); }
  @$pb.TagNumber(39)
  $core.bool hasScrDip() => $_has(38);
  @$pb.TagNumber(39)
  void clearScrDip() => clearField(39);

  @$pb.TagNumber(40)
  $core.int get qType => $_getIZ(39);
  @$pb.TagNumber(40)
  set qType($core.int v) { $_setSignedInt32(39, v); }
  @$pb.TagNumber(40)
  $core.bool hasQType() => $_has(39);
  @$pb.TagNumber(40)
  void clearQType() => clearField(40);

  @$pb.TagNumber(41)
  $core.int get isTeenager => $_getIZ(40);
  @$pb.TagNumber(41)
  set isTeenager($core.int v) { $_setSignedInt32(40, v); }
  @$pb.TagNumber(41)
  $core.bool hasIsTeenager() => $_has(40);
  @$pb.TagNumber(41)
  void clearIsTeenager() => clearField(41);

  @$pb.TagNumber(42)
  $core.String get sdkVer => $_getSZ(41);
  @$pb.TagNumber(42)
  set sdkVer($core.String v) { $_setString(41, v); }
  @$pb.TagNumber(42)
  $core.bool hasSdkVer() => $_has(41);
  @$pb.TagNumber(42)
  void clearSdkVer() => clearField(42);

  @$pb.TagNumber(43)
  $core.String get frameworkVer => $_getSZ(42);
  @$pb.TagNumber(43)
  set frameworkVer($core.String v) { $_setString(42, v); }
  @$pb.TagNumber(43)
  $core.bool hasFrameworkVer() => $_has(42);
  @$pb.TagNumber(43)
  void clearFrameworkVer() => clearField(43);

  @$pb.TagNumber(44)
  $core.String get nawsGameVer => $_getSZ(43);
  @$pb.TagNumber(44)
  set nawsGameVer($core.String v) { $_setString(43, v); }
  @$pb.TagNumber(44)
  $core.bool hasNawsGameVer() => $_has(43);
  @$pb.TagNumber(44)
  void clearNawsGameVer() => clearField(44);

  @$pb.TagNumber(45)
  $core.String get idfa => $_getSZ(44);
  @$pb.TagNumber(45)
  set idfa($core.String v) { $_setString(44, v); }
  @$pb.TagNumber(45)
  $core.bool hasIdfa() => $_has(44);
  @$pb.TagNumber(45)
  void clearIdfa() => clearField(45);

  @$pb.TagNumber(46)
  $core.String get diac => $_getSZ(45);
  @$pb.TagNumber(46)
  set diac($core.String v) { $_setString(45, v); }
  @$pb.TagNumber(46)
  $core.bool hasDiac() => $_has(45);
  @$pb.TagNumber(46)
  void clearDiac() => clearField(46);

  @$pb.TagNumber(49)
  $fixnum.Int64 get activeTimestamp => $_getI64(46);
  @$pb.TagNumber(49)
  set activeTimestamp($fixnum.Int64 v) { $_setInt64(46, v); }
  @$pb.TagNumber(49)
  $core.bool hasActiveTimestamp() => $_has(46);
  @$pb.TagNumber(49)
  void clearActiveTimestamp() => clearField(49);

  @$pb.TagNumber(50)
  $fixnum.Int64 get firstInstallTime => $_getI64(47);
  @$pb.TagNumber(50)
  set firstInstallTime($fixnum.Int64 v) { $_setInt64(47, v); }
  @$pb.TagNumber(50)
  $core.bool hasFirstInstallTime() => $_has(47);
  @$pb.TagNumber(50)
  void clearFirstInstallTime() => clearField(50);

  @$pb.TagNumber(51)
  $fixnum.Int64 get lastUpdateTime => $_getI64(48);
  @$pb.TagNumber(51)
  set lastUpdateTime($fixnum.Int64 v) { $_setInt64(48, v); }
  @$pb.TagNumber(51)
  $core.bool hasLastUpdateTime() => $_has(48);
  @$pb.TagNumber(51)
  void clearLastUpdateTime() => clearField(51);

  @$pb.TagNumber(53)
  $core.String get eventDay => $_getSZ(49);
  @$pb.TagNumber(53)
  set eventDay($core.String v) { $_setString(49, v); }
  @$pb.TagNumber(53)
  $core.bool hasEventDay() => $_has(49);
  @$pb.TagNumber(53)
  void clearEventDay() => clearField(53);

  @$pb.TagNumber(54)
  $core.String get androidId => $_getSZ(50);
  @$pb.TagNumber(54)
  set androidId($core.String v) { $_setString(50, v); }
  @$pb.TagNumber(54)
  $core.bool hasAndroidId() => $_has(50);
  @$pb.TagNumber(54)
  void clearAndroidId() => clearField(54);

  @$pb.TagNumber(55)
  $core.int get cmode => $_getIZ(51);
  @$pb.TagNumber(55)
  set cmode($core.int v) { $_setSignedInt32(51, v); }
  @$pb.TagNumber(55)
  $core.bool hasCmode() => $_has(51);
  @$pb.TagNumber(55)
  void clearCmode() => clearField(55);

  @$pb.TagNumber(56)
  $core.String get startScheme => $_getSZ(52);
  @$pb.TagNumber(56)
  set startScheme($core.String v) { $_setString(52, v); }
  @$pb.TagNumber(56)
  $core.bool hasStartScheme() => $_has(52);
  @$pb.TagNumber(56)
  void clearStartScheme() => clearField(56);

  @$pb.TagNumber(57)
  $core.int get startType => $_getIZ(53);
  @$pb.TagNumber(57)
  set startType($core.int v) { $_setSignedInt32(53, v); }
  @$pb.TagNumber(57)
  $core.bool hasStartType() => $_has(53);
  @$pb.TagNumber(57)
  void clearStartType() => clearField(57);

  @$pb.TagNumber(58)
  $core.String get shoubaiCuid => $_getSZ(54);
  @$pb.TagNumber(58)
  set shoubaiCuid($core.String v) { $_setString(54, v); }
  @$pb.TagNumber(58)
  $core.bool hasShoubaiCuid() => $_has(54);
  @$pb.TagNumber(58)
  void clearShoubaiCuid() => clearField(58);

  @$pb.TagNumber(59)
  $core.String get mac => $_getSZ(55);
  @$pb.TagNumber(59)
  set mac($core.String v) { $_setString(55, v); }
  @$pb.TagNumber(59)
  $core.bool hasMac() => $_has(55);
  @$pb.TagNumber(59)
  void clearMac() => clearField(59);

  @$pb.TagNumber(60)
  $core.String get idfv => $_getSZ(56);
  @$pb.TagNumber(60)
  set idfv($core.String v) { $_setString(56, v); }
  @$pb.TagNumber(60)
  $core.bool hasIdfv() => $_has(56);
  @$pb.TagNumber(60)
  void clearIdfv() => clearField(60);

  @$pb.TagNumber(61)
  $core.String get extra => $_getSZ(57);
  @$pb.TagNumber(61)
  set extra($core.String v) { $_setString(57, v); }
  @$pb.TagNumber(61)
  $core.bool hasExtra() => $_has(57);
  @$pb.TagNumber(61)
  void clearExtra() => clearField(61);

  @$pb.TagNumber(62)
  $core.String get userAgent => $_getSZ(58);
  @$pb.TagNumber(62)
  set userAgent($core.String v) { $_setString(58, v); }
  @$pb.TagNumber(62)
  $core.bool hasUserAgent() => $_has(58);
  @$pb.TagNumber(62)
  void clearUserAgent() => clearField(62);

  @$pb.TagNumber(63)
  $core.int get personalizedRecSwitch => $_getIZ(59);
  @$pb.TagNumber(63)
  set personalizedRecSwitch($core.int v) { $_setSignedInt32(59, v); }
  @$pb.TagNumber(63)
  $core.bool hasPersonalizedRecSwitch() => $_has(59);
  @$pb.TagNumber(63)
  void clearPersonalizedRecSwitch() => clearField(63);

  @$pb.TagNumber(64)
  $core.String get iemi => $_getSZ(60);
  @$pb.TagNumber(64)
  set iemi($core.String v) { $_setString(60, v); }
  @$pb.TagNumber(64)
  $core.bool hasIemi() => $_has(60);
  @$pb.TagNumber(64)
  void clearIemi() => clearField(64);

  @$pb.TagNumber(65)
  $core.String get iemiwen => $_getSZ(61);
  @$pb.TagNumber(65)
  set iemiwen($core.String v) { $_setString(61, v); }
  @$pb.TagNumber(65)
  $core.bool hasIemiwen() => $_has(61);
  @$pb.TagNumber(65)
  void clearIemiwen() => clearField(65);

  @$pb.TagNumber(66)
  $core.String get cam => $_getSZ(62);
  @$pb.TagNumber(66)
  set cam($core.String v) { $_setString(62, v); }
  @$pb.TagNumber(66)
  $core.bool hasCam() => $_has(62);
  @$pb.TagNumber(66)
  void clearCam() => clearField(66);

  @$pb.TagNumber(67)
  $core.String get afdi => $_getSZ(63);
  @$pb.TagNumber(67)
  set afdi($core.String v) { $_setString(63, v); }
  @$pb.TagNumber(67)
  $core.bool hasAfdi() => $_has(63);
  @$pb.TagNumber(67)
  void clearAfdi() => clearField(67);

  @$pb.TagNumber(68)
  $core.String get diDiordna => $_getSZ(64);
  @$pb.TagNumber(68)
  set diDiordna($core.String v) { $_setString(64, v); }
  @$pb.TagNumber(68)
  $core.bool hasDiDiordna() => $_has(64);
  @$pb.TagNumber(68)
  void clearDiDiordna() => clearField(68);

  @$pb.TagNumber(69)
  $core.String get vfdi => $_getSZ(65);
  @$pb.TagNumber(69)
  set vfdi($core.String v) { $_setString(65, v); }
  @$pb.TagNumber(69)
  $core.bool hasVfdi() => $_has(65);
  @$pb.TagNumber(69)
  void clearVfdi() => clearField(69);

  @$pb.TagNumber(70)
  $core.String get deviceScore => $_getSZ(66);
  @$pb.TagNumber(70)
  set deviceScore($core.String v) { $_setString(66, v); }
  @$pb.TagNumber(70)
  $core.bool hasDeviceScore() => $_has(66);
  @$pb.TagNumber(70)
  void clearDeviceScore() => clearField(70);

  @$pb.TagNumber(71)
  $core.int get pureMode => $_getIZ(67);
  @$pb.TagNumber(71)
  set pureMode($core.int v) { $_setSignedInt32(67, v); }
  @$pb.TagNumber(71)
  $core.bool hasPureMode() => $_has(67);
  @$pb.TagNumber(71)
  void clearPureMode() => clearField(71);

  @$pb.TagNumber(72)
  $core.int get xcxMode => $_getIZ(68);
  @$pb.TagNumber(72)
  set xcxMode($core.int v) { $_setSignedInt32(68, v); }
  @$pb.TagNumber(72)
  $core.bool hasXcxMode() => $_has(68);
  @$pb.TagNumber(72)
  void clearXcxMode() => clearField(72);

  @$pb.TagNumber(73)
  $core.String get ledom => $_getSZ(69);
  @$pb.TagNumber(73)
  set ledom($core.String v) { $_setString(69, v); }
  @$pb.TagNumber(73)
  $core.bool hasLedom() => $_has(69);
  @$pb.TagNumber(73)
  void clearLedom() => clearField(73);

  @$pb.TagNumber(74)
  $core.String get diao => $_getSZ(70);
  @$pb.TagNumber(74)
  set diao($core.String v) { $_setString(70, v); }
  @$pb.TagNumber(74)
  $core.bool hasDiao() => $_has(70);
  @$pb.TagNumber(74)
  void clearDiao() => clearField(74);

  @$pb.TagNumber(75)
  $core.String get noisrevSo => $_getSZ(71);
  @$pb.TagNumber(75)
  set noisrevSo($core.String v) { $_setString(71, v); }
  @$pb.TagNumber(75)
  $core.bool hasNoisrevSo() => $_has(71);
  @$pb.TagNumber(75)
  void clearNoisrevSo() => clearField(75);

  @$pb.TagNumber(76)
  $core.String get dnarb => $_getSZ(72);
  @$pb.TagNumber(76)
  set dnarb($core.String v) { $_setString(72, v); }
  @$pb.TagNumber(76)
  $core.bool hasDnarb() => $_has(72);
  @$pb.TagNumber(76)
  void clearDnarb() => clearField(76);

  @$pb.TagNumber(77)
  $core.String get epytDnarb => $_getSZ(73);
  @$pb.TagNumber(77)
  set epytDnarb($core.String v) { $_setString(73, v); }
  @$pb.TagNumber(77)
  $core.bool hasEpytDnarb() => $_has(73);
  @$pb.TagNumber(77)
  void clearEpytDnarb() => clearField(77);

  @$pb.TagNumber(78)
  $core.String get wRcs => $_getSZ(74);
  @$pb.TagNumber(78)
  set wRcs($core.String v) { $_setString(74, v); }
  @$pb.TagNumber(78)
  $core.bool hasWRcs() => $_has(74);
  @$pb.TagNumber(78)
  void clearWRcs() => clearField(78);

  @$pb.TagNumber(79)
  $core.String get hRcs => $_getSZ(75);
  @$pb.TagNumber(79)
  set hRcs($core.String v) { $_setString(75, v); }
  @$pb.TagNumber(79)
  $core.bool hasHRcs() => $_has(75);
  @$pb.TagNumber(79)
  void clearHRcs() => clearField(79);

  @$pb.TagNumber(80)
  $core.String get pidRcs => $_getSZ(76);
  @$pb.TagNumber(80)
  set pidRcs($core.String v) { $_setString(76, v); }
  @$pb.TagNumber(80)
  $core.bool hasPidRcs() => $_has(76);
  @$pb.TagNumber(80)
  void clearPidRcs() => clearField(80);

  @$pb.TagNumber(81)
  $core.int get needDecrypt => $_getIZ(77);
  @$pb.TagNumber(81)
  set needDecrypt($core.int v) { $_setSignedInt32(77, v); }
  @$pb.TagNumber(81)
  $core.bool hasNeedDecrypt() => $_has(77);
  @$pb.TagNumber(81)
  void clearNeedDecrypt() => clearField(81);

  @$pb.TagNumber(82)
  $core.int get needCamDecrypt => $_getIZ(78);
  @$pb.TagNumber(82)
  set needCamDecrypt($core.int v) { $_setSignedInt32(78, v); }
  @$pb.TagNumber(82)
  $core.bool hasNeedCamDecrypt() => $_has(78);
  @$pb.TagNumber(82)
  void clearNeedCamDecrypt() => clearField(82);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
