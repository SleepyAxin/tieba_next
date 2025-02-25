//
//  Generated code. Do not modify.
//  source: User.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'name_show', '3': 4, '4': 1, '5': 9, '10': 'nameShow'},
    {'1': 'portrait', '3': 5, '4': 1, '5': 9, '10': 'portrait'},
    {'1': 'iconinfo', '3': 17, '4': 3, '5': 11, '6': '.User.Icon', '10': 'iconinfo'},
    {'1': 'is_coreuser', '3': 20, '4': 1, '5': 5, '10': 'isCoreuser'},
    {'1': 'level_id', '3': 23, '4': 1, '5': 5, '10': 'levelId'},
    {'1': 'is_bawu', '3': 25, '4': 1, '5': 5, '10': 'isBawu'},
    {'1': 'bawu_type', '3': 26, '4': 1, '5': 9, '10': 'bawuType'},
    {'1': 'BDUSS', '3': 29, '4': 1, '5': 9, '10': 'BDUSS'},
    {'1': 'fans_num', '3': 30, '4': 1, '5': 5, '10': 'fansNum'},
    {'1': 'concern_num', '3': 31, '4': 1, '5': 5, '10': 'concernNum'},
    {'1': 'sex', '3': 32, '4': 1, '5': 5, '10': 'sex'},
    {'1': 'my_like_num', '3': 33, '4': 1, '5': 5, '10': 'myLikeNum'},
    {'1': 'intro', '3': 34, '4': 1, '5': 9, '10': 'intro'},
    {'1': 'post_num', '3': 37, '4': 1, '5': 5, '10': 'postNum'},
    {'1': 'tb_age', '3': 38, '4': 1, '5': 9, '10': 'tbAge'},
    {'1': 'gender', '3': 42, '4': 1, '5': 5, '10': 'gender'},
    {'1': 'priv_sets', '3': 45, '4': 1, '5': 11, '6': '.User.PrivSets', '10': 'privSets'},
    {'1': 'is_friend', '3': 46, '4': 1, '5': 5, '10': 'isFriend'},
    {'1': 'likeForum', '3': 47, '4': 3, '5': 11, '6': '.User.LikeForumInfo', '10': 'likeForum'},
    {'1': 'is_guanfang', '3': 52, '4': 1, '5': 5, '10': 'isGuanfang'},
    {'1': 'vipInfo', '3': 61, '4': 1, '5': 11, '6': '.User.UserVipInfo', '10': 'vipInfo'},
    {'1': 'new_tshow_icon', '3': 65, '4': 3, '5': 11, '6': '.User.TshowInfo', '10': 'newTshowIcon'},
    {'1': 'is_fans', '3': 91, '4': 1, '5': 5, '10': 'isFans'},
    {'1': 'new_god_data', '3': 101, '4': 1, '5': 11, '6': '.User.NewGodInfo', '10': 'newGodData'},
    {'1': 'is_default_avatar', '3': 106, '4': 1, '5': 5, '10': 'isDefaultAvatar'},
    {'1': 'tieba_uid', '3': 120, '4': 1, '5': 9, '10': 'tiebaUid'},
    {'1': 'ip_address', '3': 127, '4': 1, '5': 9, '10': 'ipAddress'},
    {'1': 'virtual_image_info', '3': 136, '4': 1, '5': 11, '6': '.User.VirtualImageInfo', '10': 'virtualImageInfo'},
    {'1': 'user_growth', '3': 137, '4': 1, '5': 11, '6': '.User.UserGrowth', '10': 'userGrowth'},
  ],
  '3': [User_Icon$json, User_PrivSets$json, User_LikeForumInfo$json, User_UserVipInfo$json, User_TshowInfo$json, User_NewGodInfo$json, User_VirtualImageInfo$json, User_UserGrowth$json],
};

@$core.Deprecated('Use userDescriptor instead')
const User_Icon$json = {
  '1': 'Icon',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

@$core.Deprecated('Use userDescriptor instead')
const User_PrivSets$json = {
  '1': 'PrivSets',
  '2': [
    {'1': 'location', '3': 1, '4': 1, '5': 5, '10': 'location'},
    {'1': 'like', '3': 2, '4': 1, '5': 5, '10': 'like'},
    {'1': 'group', '3': 3, '4': 1, '5': 5, '10': 'group'},
    {'1': 'post', '3': 4, '4': 1, '5': 5, '10': 'post'},
    {'1': 'friend', '3': 5, '4': 1, '5': 5, '10': 'friend'},
    {'1': 'live', '3': 6, '4': 1, '5': 5, '10': 'live'},
    {'1': 'reply', '3': 7, '4': 1, '5': 5, '10': 'reply'},
    {'1': 'bazhu_show_inside', '3': 8, '4': 1, '5': 5, '10': 'bazhuShowInside'},
    {'1': 'bazhu_show_outside', '3': 9, '4': 1, '5': 5, '10': 'bazhuShowOutside'},
  ],
};

@$core.Deprecated('Use userDescriptor instead')
const User_LikeForumInfo$json = {
  '1': 'LikeForumInfo',
  '2': [
    {'1': 'forum_name', '3': 1, '4': 1, '5': 9, '10': 'forumName'},
    {'1': 'forum_id', '3': 2, '4': 1, '5': 4, '10': 'forumId'},
  ],
};

@$core.Deprecated('Use userDescriptor instead')
const User_UserVipInfo$json = {
  '1': 'UserVipInfo',
  '2': [
    {'1': 'v_status', '3': 1, '4': 1, '5': 13, '10': 'vStatus'},
    {'1': 'v_level', '3': 5, '4': 1, '5': 13, '10': 'vLevel'},
  ],
};

@$core.Deprecated('Use userDescriptor instead')
const User_TshowInfo$json = {
  '1': 'TshowInfo',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

@$core.Deprecated('Use userDescriptor instead')
const User_NewGodInfo$json = {
  '1': 'NewGodInfo',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 5, '10': 'status'},
    {'1': 'field_id', '3': 2, '4': 1, '5': 13, '10': 'fieldId'},
    {'1': 'field_name', '3': 3, '4': 1, '5': 9, '10': 'fieldName'},
  ],
};

@$core.Deprecated('Use userDescriptor instead')
const User_VirtualImageInfo$json = {
  '1': 'VirtualImageInfo',
  '2': [
    {'1': 'isset_virtual_image', '3': 1, '4': 1, '5': 5, '10': 'issetVirtualImage'},
    {'1': 'personal_state', '3': 9, '4': 1, '5': 11, '6': '.User.VirtualImageInfo.StateInfo', '10': 'personalState'},
  ],
  '3': [User_VirtualImageInfo_StateInfo$json],
};

@$core.Deprecated('Use userDescriptor instead')
const User_VirtualImageInfo_StateInfo$json = {
  '1': 'StateInfo',
  '2': [
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
  ],
};

@$core.Deprecated('Use userDescriptor instead')
const User_UserGrowth$json = {
  '1': 'UserGrowth',
  '2': [
    {'1': 'level_id', '3': 1, '4': 1, '5': 13, '10': 'levelId'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEg4KAmlkGAIgASgDUgJpZBISCgRuYW1lGAMgASgJUgRuYW1lEhsKCW5hbWVfc2hvdx'
    'gEIAEoCVIIbmFtZVNob3cSGgoIcG9ydHJhaXQYBSABKAlSCHBvcnRyYWl0EiYKCGljb25pbmZv'
    'GBEgAygLMgouVXNlci5JY29uUghpY29uaW5mbxIfCgtpc19jb3JldXNlchgUIAEoBVIKaXNDb3'
    'JldXNlchIZCghsZXZlbF9pZBgXIAEoBVIHbGV2ZWxJZBIXCgdpc19iYXd1GBkgASgFUgZpc0Jh'
    'd3USGwoJYmF3dV90eXBlGBogASgJUghiYXd1VHlwZRIUCgVCRFVTUxgdIAEoCVIFQkRVU1MSGQ'
    'oIZmFuc19udW0YHiABKAVSB2ZhbnNOdW0SHwoLY29uY2Vybl9udW0YHyABKAVSCmNvbmNlcm5O'
    'dW0SEAoDc2V4GCAgASgFUgNzZXgSHgoLbXlfbGlrZV9udW0YISABKAVSCW15TGlrZU51bRIUCg'
    'VpbnRybxgiIAEoCVIFaW50cm8SGQoIcG9zdF9udW0YJSABKAVSB3Bvc3ROdW0SFQoGdGJfYWdl'
    'GCYgASgJUgV0YkFnZRIWCgZnZW5kZXIYKiABKAVSBmdlbmRlchIrCglwcml2X3NldHMYLSABKA'
    'syDi5Vc2VyLlByaXZTZXRzUghwcml2U2V0cxIbCglpc19mcmllbmQYLiABKAVSCGlzRnJpZW5k'
    'EjEKCWxpa2VGb3J1bRgvIAMoCzITLlVzZXIuTGlrZUZvcnVtSW5mb1IJbGlrZUZvcnVtEh8KC2'
    'lzX2d1YW5mYW5nGDQgASgFUgppc0d1YW5mYW5nEisKB3ZpcEluZm8YPSABKAsyES5Vc2VyLlVz'
    'ZXJWaXBJbmZvUgd2aXBJbmZvEjUKDm5ld190c2hvd19pY29uGEEgAygLMg8uVXNlci5Uc2hvd0'
    'luZm9SDG5ld1RzaG93SWNvbhIXCgdpc19mYW5zGFsgASgFUgZpc0ZhbnMSMgoMbmV3X2dvZF9k'
    'YXRhGGUgASgLMhAuVXNlci5OZXdHb2RJbmZvUgpuZXdHb2REYXRhEioKEWlzX2RlZmF1bHRfYX'
    'ZhdGFyGGogASgFUg9pc0RlZmF1bHRBdmF0YXISGwoJdGllYmFfdWlkGHggASgJUgh0aWViYVVp'
    'ZBIdCgppcF9hZGRyZXNzGH8gASgJUglpcEFkZHJlc3MSRQoSdmlydHVhbF9pbWFnZV9pbmZvGI'
    'gBIAEoCzIWLlVzZXIuVmlydHVhbEltYWdlSW5mb1IQdmlydHVhbEltYWdlSW5mbxIyCgt1c2Vy'
    'X2dyb3d0aBiJASABKAsyEC5Vc2VyLlVzZXJHcm93dGhSCnVzZXJHcm93dGgaGgoESWNvbhISCg'
    'RuYW1lGAEgASgJUgRuYW1lGoACCghQcml2U2V0cxIaCghsb2NhdGlvbhgBIAEoBVIIbG9jYXRp'
    'b24SEgoEbGlrZRgCIAEoBVIEbGlrZRIUCgVncm91cBgDIAEoBVIFZ3JvdXASEgoEcG9zdBgEIA'
    'EoBVIEcG9zdBIWCgZmcmllbmQYBSABKAVSBmZyaWVuZBISCgRsaXZlGAYgASgFUgRsaXZlEhQK'
    'BXJlcGx5GAcgASgFUgVyZXBseRIqChFiYXpodV9zaG93X2luc2lkZRgIIAEoBVIPYmF6aHVTaG'
    '93SW5zaWRlEiwKEmJhemh1X3Nob3dfb3V0c2lkZRgJIAEoBVIQYmF6aHVTaG93T3V0c2lkZRpJ'
    'Cg1MaWtlRm9ydW1JbmZvEh0KCmZvcnVtX25hbWUYASABKAlSCWZvcnVtTmFtZRIZCghmb3J1bV'
    '9pZBgCIAEoBFIHZm9ydW1JZBpBCgtVc2VyVmlwSW5mbxIZCgh2X3N0YXR1cxgBIAEoDVIHdlN0'
    'YXR1cxIXCgd2X2xldmVsGAUgASgNUgZ2TGV2ZWwaHwoJVHNob3dJbmZvEhIKBG5hbWUYAiABKA'
    'lSBG5hbWUaXgoKTmV3R29kSW5mbxIWCgZzdGF0dXMYASABKAVSBnN0YXR1cxIZCghmaWVsZF9p'
    'ZBgCIAEoDVIHZmllbGRJZBIdCgpmaWVsZF9uYW1lGAMgASgJUglmaWVsZE5hbWUarAEKEFZpcn'
    'R1YWxJbWFnZUluZm8SLgoTaXNzZXRfdmlydHVhbF9pbWFnZRgBIAEoBVIRaXNzZXRWaXJ0dWFs'
    'SW1hZ2USRwoOcGVyc29uYWxfc3RhdGUYCSABKAsyIC5Vc2VyLlZpcnR1YWxJbWFnZUluZm8uU3'
    'RhdGVJbmZvUg1wZXJzb25hbFN0YXRlGh8KCVN0YXRlSW5mbxISCgR0ZXh0GAIgASgJUgR0ZXh0'
    'GicKClVzZXJHcm93dGgSGQoIbGV2ZWxfaWQYASABKA1SB2xldmVsSWQ=');

