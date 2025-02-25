//
//  Generated code. Do not modify.
//  source: CommonReq.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use commonReqDescriptor instead')
const CommonReq$json = {
  '1': 'CommonReq',
  '2': [
    {'1': '_client_type', '3': 1, '4': 1, '5': 5, '10': 'ClientType'},
    {'1': '_client_version', '3': 2, '4': 1, '5': 9, '10': 'ClientVersion'},
    {'1': '_client_id', '3': 3, '4': 1, '5': 9, '10': 'ClientId'},
    {'1': 'apid', '3': 4, '4': 1, '5': 9, '10': 'apid'},
    {'1': '_phone_imei', '3': 5, '4': 1, '5': 9, '10': 'PhoneImei'},
    {'1': 'from', '3': 6, '4': 1, '5': 9, '10': 'from'},
    {'1': 'cuid', '3': 7, '4': 1, '5': 9, '10': 'cuid'},
    {'1': '_timestamp', '3': 8, '4': 1, '5': 3, '10': 'Timestamp'},
    {'1': 'model', '3': 9, '4': 1, '5': 9, '10': 'model'},
    {'1': 'BDUSS', '3': 10, '4': 1, '5': 9, '10': 'BDUSS'},
    {'1': 'tbs', '3': 11, '4': 1, '5': 9, '10': 'tbs'},
    {'1': 'net_type', '3': 12, '4': 1, '5': 5, '10': 'netType'},
    {'1': 'subapp_type', '3': 13, '4': 1, '5': 9, '10': 'subappType'},
    {'1': '_phone_newimei', '3': 14, '4': 1, '5': 9, '10': 'PhoneNewimei'},
    {'1': 'ka', '3': 15, '4': 1, '5': 9, '10': 'ka'},
    {'1': 'm_api', '3': 16, '4': 1, '5': 9, '10': 'mApi'},
    {'1': 'm_logid', '3': 17, '4': 1, '5': 9, '10': 'mLogid'},
    {'1': 'm_cost', '3': 18, '4': 1, '5': 9, '10': 'mCost'},
    {'1': 'm_result', '3': 19, '4': 1, '5': 9, '10': 'mResult'},
    {'1': 'm_size_u', '3': 20, '4': 1, '5': 9, '10': 'mSizeU'},
    {'1': 'm_size_d', '3': 21, '4': 1, '5': 9, '10': 'mSizeD'},
    {'1': 'smallflow', '3': 22, '4': 1, '5': 9, '10': 'smallflow'},
    {'1': 'sign', '3': 23, '4': 1, '5': 9, '10': 'sign'},
    {'1': 'pversion', '3': 24, '4': 1, '5': 9, '10': 'pversion'},
    {'1': '_os_version', '3': 25, '4': 1, '5': 9, '10': 'OsVersion'},
    {'1': 'brand', '3': 26, '4': 1, '5': 9, '10': 'brand'},
    {'1': 'brand_type', '3': 27, '4': 1, '5': 9, '10': 'brandType'},
    {'1': 'lego_lib_version', '3': 28, '4': 1, '5': 9, '10': 'legoLibVersion'},
    {'1': 'applist', '3': 29, '4': 1, '5': 9, '10': 'applist'},
    {'1': 'stoken', '3': 30, '4': 1, '5': 9, '10': 'stoken'},
    {'1': 'z_id', '3': 31, '4': 1, '5': 9, '10': 'zId'},
    {'1': 'cuid_galaxy2', '3': 32, '4': 1, '5': 9, '10': 'cuidGalaxy2'},
    {'1': 'cuid_gid', '3': 33, '4': 1, '5': 9, '10': 'cuidGid'},
    {'1': 'oaid', '3': 34, '4': 1, '5': 9, '10': 'oaid'},
    {'1': 'c3_aid', '3': 35, '4': 1, '5': 9, '10': 'c3Aid'},
    {'1': 'sample_id', '3': 36, '4': 1, '5': 9, '10': 'sampleId'},
    {'1': 'scr_w', '3': 37, '4': 1, '5': 5, '10': 'scrW'},
    {'1': 'scr_h', '3': 38, '4': 1, '5': 5, '10': 'scrH'},
    {'1': 'scr_dip', '3': 39, '4': 1, '5': 1, '10': 'scrDip'},
    {'1': 'q_type', '3': 40, '4': 1, '5': 5, '10': 'qType'},
    {'1': 'is_teenager', '3': 41, '4': 1, '5': 5, '10': 'isTeenager'},
    {'1': 'sdk_ver', '3': 42, '4': 1, '5': 9, '10': 'sdkVer'},
    {'1': 'framework_ver', '3': 43, '4': 1, '5': 9, '10': 'frameworkVer'},
    {'1': 'naws_game_ver', '3': 44, '4': 1, '5': 9, '10': 'nawsGameVer'},
    {'1': 'idfa', '3': 45, '4': 1, '5': 9, '10': 'idfa'},
    {'1': 'diac', '3': 46, '4': 1, '5': 9, '10': 'diac'},
    {'1': 'active_timestamp', '3': 49, '4': 1, '5': 3, '10': 'activeTimestamp'},
    {'1': 'first_install_time', '3': 50, '4': 1, '5': 3, '10': 'firstInstallTime'},
    {'1': 'last_update_time', '3': 51, '4': 1, '5': 3, '10': 'lastUpdateTime'},
    {'1': 'event_day', '3': 53, '4': 1, '5': 9, '10': 'eventDay'},
    {'1': 'android_id', '3': 54, '4': 1, '5': 9, '10': 'androidId'},
    {'1': 'cmode', '3': 55, '4': 1, '5': 5, '10': 'cmode'},
    {'1': 'start_scheme', '3': 56, '4': 1, '5': 9, '10': 'startScheme'},
    {'1': 'start_type', '3': 57, '4': 1, '5': 5, '10': 'startType'},
    {'1': 'shoubai_cuid', '3': 58, '4': 1, '5': 9, '10': 'shoubaiCuid'},
    {'1': 'mac', '3': 59, '4': 1, '5': 9, '10': 'mac'},
    {'1': 'idfv', '3': 60, '4': 1, '5': 9, '10': 'idfv'},
    {'1': 'extra', '3': 61, '4': 1, '5': 9, '10': 'extra'},
    {'1': 'user_agent', '3': 62, '4': 1, '5': 9, '10': 'userAgent'},
    {'1': 'personalized_rec_switch', '3': 63, '4': 1, '5': 5, '10': 'personalizedRecSwitch'},
    {'1': 'iemi', '3': 64, '4': 1, '5': 9, '10': 'iemi'},
    {'1': 'iemiwen', '3': 65, '4': 1, '5': 9, '10': 'iemiwen'},
    {'1': 'cam', '3': 66, '4': 1, '5': 9, '10': 'cam'},
    {'1': 'afdi', '3': 67, '4': 1, '5': 9, '10': 'afdi'},
    {'1': 'di_diordna', '3': 68, '4': 1, '5': 9, '10': 'diDiordna'},
    {'1': 'vfdi', '3': 69, '4': 1, '5': 9, '10': 'vfdi'},
    {'1': 'device_score', '3': 70, '4': 1, '5': 9, '10': 'deviceScore'},
    {'1': 'pure_mode', '3': 71, '4': 1, '5': 5, '10': 'pureMode'},
    {'1': 'xcx_mode', '3': 72, '4': 1, '5': 5, '10': 'xcxMode'},
    {'1': 'ledom', '3': 73, '4': 1, '5': 9, '10': 'ledom'},
    {'1': 'diao', '3': 74, '4': 1, '5': 9, '10': 'diao'},
    {'1': 'noisrev_so', '3': 75, '4': 1, '5': 9, '10': 'noisrevSo'},
    {'1': 'dnarb', '3': 76, '4': 1, '5': 9, '10': 'dnarb'},
    {'1': 'epyt_dnarb', '3': 77, '4': 1, '5': 9, '10': 'epytDnarb'},
    {'1': 'w_rcs', '3': 78, '4': 1, '5': 9, '10': 'wRcs'},
    {'1': 'h_rcs', '3': 79, '4': 1, '5': 9, '10': 'hRcs'},
    {'1': 'pid_rcs', '3': 80, '4': 1, '5': 9, '10': 'pidRcs'},
    {'1': 'need_decrypt', '3': 81, '4': 1, '5': 5, '10': 'needDecrypt'},
    {'1': 'need_cam_decrypt', '3': 82, '4': 1, '5': 5, '10': 'needCamDecrypt'},
  ],
};

/// Descriptor for `CommonReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commonReqDescriptor = $convert.base64Decode(
    'CglDb21tb25SZXESIAoMX2NsaWVudF90eXBlGAEgASgFUgpDbGllbnRUeXBlEiYKD19jbGllbn'
    'RfdmVyc2lvbhgCIAEoCVINQ2xpZW50VmVyc2lvbhIcCgpfY2xpZW50X2lkGAMgASgJUghDbGll'
    'bnRJZBISCgRhcGlkGAQgASgJUgRhcGlkEh4KC19waG9uZV9pbWVpGAUgASgJUglQaG9uZUltZW'
    'kSEgoEZnJvbRgGIAEoCVIEZnJvbRISCgRjdWlkGAcgASgJUgRjdWlkEh0KCl90aW1lc3RhbXAY'
    'CCABKANSCVRpbWVzdGFtcBIUCgVtb2RlbBgJIAEoCVIFbW9kZWwSFAoFQkRVU1MYCiABKAlSBU'
    'JEVVNTEhAKA3RicxgLIAEoCVIDdGJzEhkKCG5ldF90eXBlGAwgASgFUgduZXRUeXBlEh8KC3N1'
    'YmFwcF90eXBlGA0gASgJUgpzdWJhcHBUeXBlEiQKDl9waG9uZV9uZXdpbWVpGA4gASgJUgxQaG'
    '9uZU5ld2ltZWkSDgoCa2EYDyABKAlSAmthEhMKBW1fYXBpGBAgASgJUgRtQXBpEhcKB21fbG9n'
    'aWQYESABKAlSBm1Mb2dpZBIVCgZtX2Nvc3QYEiABKAlSBW1Db3N0EhkKCG1fcmVzdWx0GBMgAS'
    'gJUgdtUmVzdWx0EhgKCG1fc2l6ZV91GBQgASgJUgZtU2l6ZVUSGAoIbV9zaXplX2QYFSABKAlS'
    'Bm1TaXplRBIcCglzbWFsbGZsb3cYFiABKAlSCXNtYWxsZmxvdxISCgRzaWduGBcgASgJUgRzaW'
    'duEhoKCHB2ZXJzaW9uGBggASgJUghwdmVyc2lvbhIeCgtfb3NfdmVyc2lvbhgZIAEoCVIJT3NW'
    'ZXJzaW9uEhQKBWJyYW5kGBogASgJUgVicmFuZBIdCgpicmFuZF90eXBlGBsgASgJUglicmFuZF'
    'R5cGUSKAoQbGVnb19saWJfdmVyc2lvbhgcIAEoCVIObGVnb0xpYlZlcnNpb24SGAoHYXBwbGlz'
    'dBgdIAEoCVIHYXBwbGlzdBIWCgZzdG9rZW4YHiABKAlSBnN0b2tlbhIRCgR6X2lkGB8gASgJUg'
    'N6SWQSIQoMY3VpZF9nYWxheHkyGCAgASgJUgtjdWlkR2FsYXh5MhIZCghjdWlkX2dpZBghIAEo'
    'CVIHY3VpZEdpZBISCgRvYWlkGCIgASgJUgRvYWlkEhUKBmMzX2FpZBgjIAEoCVIFYzNBaWQSGw'
    'oJc2FtcGxlX2lkGCQgASgJUghzYW1wbGVJZBITCgVzY3JfdxglIAEoBVIEc2NyVxITCgVzY3Jf'
    'aBgmIAEoBVIEc2NySBIXCgdzY3JfZGlwGCcgASgBUgZzY3JEaXASFQoGcV90eXBlGCggASgFUg'
    'VxVHlwZRIfCgtpc190ZWVuYWdlchgpIAEoBVIKaXNUZWVuYWdlchIXCgdzZGtfdmVyGCogASgJ'
    'UgZzZGtWZXISIwoNZnJhbWV3b3JrX3ZlchgrIAEoCVIMZnJhbWV3b3JrVmVyEiIKDW5hd3NfZ2'
    'FtZV92ZXIYLCABKAlSC25hd3NHYW1lVmVyEhIKBGlkZmEYLSABKAlSBGlkZmESEgoEZGlhYxgu'
    'IAEoCVIEZGlhYxIpChBhY3RpdmVfdGltZXN0YW1wGDEgASgDUg9hY3RpdmVUaW1lc3RhbXASLA'
    'oSZmlyc3RfaW5zdGFsbF90aW1lGDIgASgDUhBmaXJzdEluc3RhbGxUaW1lEigKEGxhc3RfdXBk'
    'YXRlX3RpbWUYMyABKANSDmxhc3RVcGRhdGVUaW1lEhsKCWV2ZW50X2RheRg1IAEoCVIIZXZlbn'
    'REYXkSHQoKYW5kcm9pZF9pZBg2IAEoCVIJYW5kcm9pZElkEhQKBWNtb2RlGDcgASgFUgVjbW9k'
    'ZRIhCgxzdGFydF9zY2hlbWUYOCABKAlSC3N0YXJ0U2NoZW1lEh0KCnN0YXJ0X3R5cGUYOSABKA'
    'VSCXN0YXJ0VHlwZRIhCgxzaG91YmFpX2N1aWQYOiABKAlSC3Nob3ViYWlDdWlkEhAKA21hYxg7'
    'IAEoCVIDbWFjEhIKBGlkZnYYPCABKAlSBGlkZnYSFAoFZXh0cmEYPSABKAlSBWV4dHJhEh0KCn'
    'VzZXJfYWdlbnQYPiABKAlSCXVzZXJBZ2VudBI2ChdwZXJzb25hbGl6ZWRfcmVjX3N3aXRjaBg/'
    'IAEoBVIVcGVyc29uYWxpemVkUmVjU3dpdGNoEhIKBGllbWkYQCABKAlSBGllbWkSGAoHaWVtaX'
    'dlbhhBIAEoCVIHaWVtaXdlbhIQCgNjYW0YQiABKAlSA2NhbRISCgRhZmRpGEMgASgJUgRhZmRp'
    'Eh0KCmRpX2Rpb3JkbmEYRCABKAlSCWRpRGlvcmRuYRISCgR2ZmRpGEUgASgJUgR2ZmRpEiEKDG'
    'RldmljZV9zY29yZRhGIAEoCVILZGV2aWNlU2NvcmUSGwoJcHVyZV9tb2RlGEcgASgFUghwdXJl'
    'TW9kZRIZCgh4Y3hfbW9kZRhIIAEoBVIHeGN4TW9kZRIUCgVsZWRvbRhJIAEoCVIFbGVkb20SEg'
    'oEZGlhbxhKIAEoCVIEZGlhbxIdCgpub2lzcmV2X3NvGEsgASgJUglub2lzcmV2U28SFAoFZG5h'
    'cmIYTCABKAlSBWRuYXJiEh0KCmVweXRfZG5hcmIYTSABKAlSCWVweXREbmFyYhITCgV3X3Jjcx'
    'hOIAEoCVIEd1JjcxITCgVoX3JjcxhPIAEoCVIEaFJjcxIXCgdwaWRfcmNzGFAgASgJUgZwaWRS'
    'Y3MSIQoMbmVlZF9kZWNyeXB0GFEgASgFUgtuZWVkRGVjcnlwdBIoChBuZWVkX2NhbV9kZWNyeX'
    'B0GFIgASgFUg5uZWVkQ2FtRGVjcnlwdA==');

