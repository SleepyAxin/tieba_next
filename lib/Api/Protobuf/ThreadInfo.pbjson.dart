//
//  Generated code. Do not modify.
//  source: ThreadInfo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use threadInfoDescriptor instead')
const ThreadInfo$json = {
  '1': 'ThreadInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    {'1': 'reply_num', '3': 4, '4': 1, '5': 5, '10': 'replyNum'},
    {'1': 'view_num', '3': 5, '4': 1, '5': 5, '10': 'viewNum'},
    {'1': 'last_time_int', '3': 7, '4': 1, '5': 5, '10': 'lastTimeInt'},
    {'1': 'is_top', '3': 9, '4': 1, '5': 5, '10': 'isTop'},
    {'1': 'is_good', '3': 10, '4': 1, '5': 5, '10': 'isGood'},
    {'1': 'is_voice_thread', '3': 15, '4': 1, '5': 5, '10': 'isVoiceThread'},
    {'1': 'author', '3': 18, '4': 1, '5': 11, '6': '.User', '10': 'author'},
    {'1': 'voice_info', '3': 23, '4': 3, '5': 11, '6': '.Voice', '10': 'voiceInfo'},
    {'1': 'thread_type', '3': 26, '4': 1, '5': 5, '10': 'threadType'},
    {'1': 'fid', '3': 27, '4': 1, '5': 3, '10': 'fid'},
    {'1': 'fname', '3': 28, '4': 1, '5': 9, '10': 'fname'},
    {'1': 'is_livepost', '3': 30, '4': 1, '5': 5, '10': 'isLivepost'},
    {'1': 'first_post_id', '3': 40, '4': 1, '5': 3, '10': 'firstPostId'},
    {'1': 'create_time', '3': 45, '4': 1, '5': 5, '10': 'createTime'},
    {'1': 'post_id', '3': 52, '4': 1, '5': 3, '10': 'postId'},
    {'1': 'author_id', '3': 56, '4': 1, '5': 3, '10': 'authorId'},
    {'1': 'is_ad', '3': 59, '4': 1, '5': 13, '10': 'isAd'},
    {'1': 'poll_info', '3': 74, '4': 1, '5': 11, '6': '.PollInfo', '10': 'pollInfo'},
    {'1': 'video_info', '3': 79, '4': 1, '5': 11, '6': '.VideoInfo', '10': 'videoInfo'},
    {'1': 'is_godthread_recommend', '3': 85, '4': 1, '5': 5, '10': 'isGodthreadRecommend'},
    {'1': 'agree', '3': 126, '4': 1, '5': 11, '6': '.Agree', '10': 'agree'},
    {'1': 'share_num', '3': 135, '4': 1, '5': 5, '10': 'shareNum'},
    {'1': 'origin_thread_info', '3': 141, '4': 1, '5': 11, '6': '.ThreadInfo.OriginThreadInfo', '10': 'originThreadInfo'},
    {'1': 'first_post_content', '3': 142, '4': 3, '5': 11, '6': '.PbContent', '10': 'firstPostContent'},
    {'1': 'is_share_thread', '3': 143, '4': 1, '5': 5, '10': 'isShareThread'},
    {'1': 'tab_id', '3': 175, '4': 1, '5': 5, '10': 'tabId'},
    {'1': 'is_deleted', '3': 181, '4': 1, '5': 5, '10': 'isDeleted'},
    {'1': 'is_frs_mask', '3': 198, '4': 1, '5': 5, '10': 'isFrsMask'},
    {'1': 'custom_figure', '3': 211, '4': 1, '5': 11, '6': '.ThreadInfo.CustomFigure', '10': 'customFigure'},
    {'1': 'custom_state', '3': 212, '4': 1, '5': 11, '6': '.ThreadInfo.CustomState', '10': 'customState'},
  ],
  '3': [ThreadInfo_OriginThreadInfo$json, ThreadInfo_CustomFigure$json, ThreadInfo_CustomState$json],
};

@$core.Deprecated('Use threadInfoDescriptor instead')
const ThreadInfo_OriginThreadInfo$json = {
  '1': 'OriginThreadInfo',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'media', '3': 2, '4': 3, '5': 11, '6': '.Media', '10': 'media'},
    {'1': 'fname', '3': 4, '4': 1, '5': 9, '10': 'fname'},
    {'1': 'tid', '3': 5, '4': 1, '5': 9, '10': 'tid'},
    {'1': 'fid', '3': 7, '4': 1, '5': 3, '10': 'fid'},
    {'1': 'voice_info', '3': 12, '4': 3, '5': 11, '6': '.Voice', '10': 'voiceInfo'},
    {'1': 'video_info', '3': 13, '4': 1, '5': 11, '6': '.VideoInfo', '10': 'videoInfo'},
    {'1': 'content', '3': 14, '4': 3, '5': 11, '6': '.PbContent', '10': 'content'},
    {'1': 'poll_info', '3': 21, '4': 1, '5': 11, '6': '.PollInfo', '10': 'pollInfo'},
    {'1': 'pid', '3': 25, '4': 1, '5': 3, '10': 'pid'},
  ],
};

@$core.Deprecated('Use threadInfoDescriptor instead')
const ThreadInfo_CustomFigure$json = {
  '1': 'CustomFigure',
  '2': [
    {'1': 'background_value', '3': 3, '4': 1, '5': 9, '10': 'backgroundValue'},
  ],
};

@$core.Deprecated('Use threadInfoDescriptor instead')
const ThreadInfo_CustomState$json = {
  '1': 'CustomState',
  '2': [
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `ThreadInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threadInfoDescriptor = $convert.base64Decode(
    'CgpUaHJlYWRJbmZvEg4KAmlkGAEgASgDUgJpZBIUCgV0aXRsZRgDIAEoCVIFdGl0bGUSGwoJcm'
    'VwbHlfbnVtGAQgASgFUghyZXBseU51bRIZCgh2aWV3X251bRgFIAEoBVIHdmlld051bRIiCg1s'
    'YXN0X3RpbWVfaW50GAcgASgFUgtsYXN0VGltZUludBIVCgZpc190b3AYCSABKAVSBWlzVG9wEh'
    'cKB2lzX2dvb2QYCiABKAVSBmlzR29vZBImCg9pc192b2ljZV90aHJlYWQYDyABKAVSDWlzVm9p'
    'Y2VUaHJlYWQSHQoGYXV0aG9yGBIgASgLMgUuVXNlclIGYXV0aG9yEiUKCnZvaWNlX2luZm8YFy'
    'ADKAsyBi5Wb2ljZVIJdm9pY2VJbmZvEh8KC3RocmVhZF90eXBlGBogASgFUgp0aHJlYWRUeXBl'
    'EhAKA2ZpZBgbIAEoA1IDZmlkEhQKBWZuYW1lGBwgASgJUgVmbmFtZRIfCgtpc19saXZlcG9zdB'
    'geIAEoBVIKaXNMaXZlcG9zdBIiCg1maXJzdF9wb3N0X2lkGCggASgDUgtmaXJzdFBvc3RJZBIf'
    'CgtjcmVhdGVfdGltZRgtIAEoBVIKY3JlYXRlVGltZRIXCgdwb3N0X2lkGDQgASgDUgZwb3N0SW'
    'QSGwoJYXV0aG9yX2lkGDggASgDUghhdXRob3JJZBITCgVpc19hZBg7IAEoDVIEaXNBZBImCglw'
    'b2xsX2luZm8YSiABKAsyCS5Qb2xsSW5mb1IIcG9sbEluZm8SKQoKdmlkZW9faW5mbxhPIAEoCz'
    'IKLlZpZGVvSW5mb1IJdmlkZW9JbmZvEjQKFmlzX2dvZHRocmVhZF9yZWNvbW1lbmQYVSABKAVS'
    'FGlzR29kdGhyZWFkUmVjb21tZW5kEhwKBWFncmVlGH4gASgLMgYuQWdyZWVSBWFncmVlEhwKCX'
    'NoYXJlX251bRiHASABKAVSCHNoYXJlTnVtEksKEm9yaWdpbl90aHJlYWRfaW5mbxiNASABKAsy'
    'HC5UaHJlYWRJbmZvLk9yaWdpblRocmVhZEluZm9SEG9yaWdpblRocmVhZEluZm8SOQoSZmlyc3'
    'RfcG9zdF9jb250ZW50GI4BIAMoCzIKLlBiQ29udGVudFIQZmlyc3RQb3N0Q29udGVudBInCg9p'
    'c19zaGFyZV90aHJlYWQYjwEgASgFUg1pc1NoYXJlVGhyZWFkEhYKBnRhYl9pZBivASABKAVSBX'
    'RhYklkEh4KCmlzX2RlbGV0ZWQYtQEgASgFUglpc0RlbGV0ZWQSHwoLaXNfZnJzX21hc2sYxgEg'
    'ASgFUglpc0Zyc01hc2sSPgoNY3VzdG9tX2ZpZ3VyZRjTASABKAsyGC5UaHJlYWRJbmZvLkN1c3'
    'RvbUZpZ3VyZVIMY3VzdG9tRmlndXJlEjsKDGN1c3RvbV9zdGF0ZRjUASABKAsyFy5UaHJlYWRJ'
    'bmZvLkN1c3RvbVN0YXRlUgtjdXN0b21TdGF0ZRqyAgoQT3JpZ2luVGhyZWFkSW5mbxIUCgV0aX'
    'RsZRgBIAEoCVIFdGl0bGUSHAoFbWVkaWEYAiADKAsyBi5NZWRpYVIFbWVkaWESFAoFZm5hbWUY'
    'BCABKAlSBWZuYW1lEhAKA3RpZBgFIAEoCVIDdGlkEhAKA2ZpZBgHIAEoA1IDZmlkEiUKCnZvaW'
    'NlX2luZm8YDCADKAsyBi5Wb2ljZVIJdm9pY2VJbmZvEikKCnZpZGVvX2luZm8YDSABKAsyCi5W'
    'aWRlb0luZm9SCXZpZGVvSW5mbxIkCgdjb250ZW50GA4gAygLMgouUGJDb250ZW50Ugdjb250ZW'
    '50EiYKCXBvbGxfaW5mbxgVIAEoCzIJLlBvbGxJbmZvUghwb2xsSW5mbxIQCgNwaWQYGSABKANS'
    'A3BpZBo5CgxDdXN0b21GaWd1cmUSKQoQYmFja2dyb3VuZF92YWx1ZRgDIAEoCVIPYmFja2dyb3'
    'VuZFZhbHVlGicKC0N1c3RvbVN0YXRlEhgKB2NvbnRlbnQYAiABKAlSB2NvbnRlbnQ=');

