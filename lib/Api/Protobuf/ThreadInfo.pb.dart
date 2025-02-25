//
//  Generated code. Do not modify.
//  source: ThreadInfo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'Agree.pb.dart' as $4;
import 'Media.pb.dart' as $6;
import 'PbContent.pb.dart' as $5;
import 'PollInfo.pb.dart' as $2;
import 'User.pb.dart' as $0;
import 'VideoInfo.pb.dart' as $3;
import 'Voice.pb.dart' as $1;

class ThreadInfo_OriginThreadInfo extends $pb.GeneratedMessage {
  factory ThreadInfo_OriginThreadInfo({
    $core.String? title,
    $core.Iterable<$6.Media>? media,
    $core.String? fname,
    $core.String? tid,
    $fixnum.Int64? fid,
    $core.Iterable<$1.Voice>? voiceInfo,
    $3.VideoInfo? videoInfo,
    $core.Iterable<$5.PbContent>? content,
    $2.PollInfo? pollInfo,
    $fixnum.Int64? pid,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (media != null) {
      $result.media.addAll(media);
    }
    if (fname != null) {
      $result.fname = fname;
    }
    if (tid != null) {
      $result.tid = tid;
    }
    if (fid != null) {
      $result.fid = fid;
    }
    if (voiceInfo != null) {
      $result.voiceInfo.addAll(voiceInfo);
    }
    if (videoInfo != null) {
      $result.videoInfo = videoInfo;
    }
    if (content != null) {
      $result.content.addAll(content);
    }
    if (pollInfo != null) {
      $result.pollInfo = pollInfo;
    }
    if (pid != null) {
      $result.pid = pid;
    }
    return $result;
  }
  ThreadInfo_OriginThreadInfo._() : super();
  factory ThreadInfo_OriginThreadInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThreadInfo_OriginThreadInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThreadInfo.OriginThreadInfo', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..pc<$6.Media>(2, _omitFieldNames ? '' : 'media', $pb.PbFieldType.PM, subBuilder: $6.Media.create)
    ..aOS(4, _omitFieldNames ? '' : 'fname')
    ..aOS(5, _omitFieldNames ? '' : 'tid')
    ..aInt64(7, _omitFieldNames ? '' : 'fid')
    ..pc<$1.Voice>(12, _omitFieldNames ? '' : 'voiceInfo', $pb.PbFieldType.PM, subBuilder: $1.Voice.create)
    ..aOM<$3.VideoInfo>(13, _omitFieldNames ? '' : 'videoInfo', subBuilder: $3.VideoInfo.create)
    ..pc<$5.PbContent>(14, _omitFieldNames ? '' : 'content', $pb.PbFieldType.PM, subBuilder: $5.PbContent.create)
    ..aOM<$2.PollInfo>(21, _omitFieldNames ? '' : 'pollInfo', subBuilder: $2.PollInfo.create)
    ..aInt64(25, _omitFieldNames ? '' : 'pid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThreadInfo_OriginThreadInfo clone() => ThreadInfo_OriginThreadInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThreadInfo_OriginThreadInfo copyWith(void Function(ThreadInfo_OriginThreadInfo) updates) => super.copyWith((message) => updates(message as ThreadInfo_OriginThreadInfo)) as ThreadInfo_OriginThreadInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreadInfo_OriginThreadInfo create() => ThreadInfo_OriginThreadInfo._();
  ThreadInfo_OriginThreadInfo createEmptyInstance() => create();
  static $pb.PbList<ThreadInfo_OriginThreadInfo> createRepeated() => $pb.PbList<ThreadInfo_OriginThreadInfo>();
  @$core.pragma('dart2js:noInline')
  static ThreadInfo_OriginThreadInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThreadInfo_OriginThreadInfo>(create);
  static ThreadInfo_OriginThreadInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$6.Media> get media => $_getList(1);

  @$pb.TagNumber(4)
  $core.String get fname => $_getSZ(2);
  @$pb.TagNumber(4)
  set fname($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasFname() => $_has(2);
  @$pb.TagNumber(4)
  void clearFname() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get tid => $_getSZ(3);
  @$pb.TagNumber(5)
  set tid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasTid() => $_has(3);
  @$pb.TagNumber(5)
  void clearTid() => clearField(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get fid => $_getI64(4);
  @$pb.TagNumber(7)
  set fid($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasFid() => $_has(4);
  @$pb.TagNumber(7)
  void clearFid() => clearField(7);

  @$pb.TagNumber(12)
  $core.List<$1.Voice> get voiceInfo => $_getList(5);

  @$pb.TagNumber(13)
  $3.VideoInfo get videoInfo => $_getN(6);
  @$pb.TagNumber(13)
  set videoInfo($3.VideoInfo v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasVideoInfo() => $_has(6);
  @$pb.TagNumber(13)
  void clearVideoInfo() => clearField(13);
  @$pb.TagNumber(13)
  $3.VideoInfo ensureVideoInfo() => $_ensure(6);

  @$pb.TagNumber(14)
  $core.List<$5.PbContent> get content => $_getList(7);

  @$pb.TagNumber(21)
  $2.PollInfo get pollInfo => $_getN(8);
  @$pb.TagNumber(21)
  set pollInfo($2.PollInfo v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasPollInfo() => $_has(8);
  @$pb.TagNumber(21)
  void clearPollInfo() => clearField(21);
  @$pb.TagNumber(21)
  $2.PollInfo ensurePollInfo() => $_ensure(8);

  @$pb.TagNumber(25)
  $fixnum.Int64 get pid => $_getI64(9);
  @$pb.TagNumber(25)
  set pid($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(25)
  $core.bool hasPid() => $_has(9);
  @$pb.TagNumber(25)
  void clearPid() => clearField(25);
}

class ThreadInfo_CustomFigure extends $pb.GeneratedMessage {
  factory ThreadInfo_CustomFigure({
    $core.String? backgroundValue,
  }) {
    final $result = create();
    if (backgroundValue != null) {
      $result.backgroundValue = backgroundValue;
    }
    return $result;
  }
  ThreadInfo_CustomFigure._() : super();
  factory ThreadInfo_CustomFigure.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThreadInfo_CustomFigure.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThreadInfo.CustomFigure', createEmptyInstance: create)
    ..aOS(3, _omitFieldNames ? '' : 'backgroundValue')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThreadInfo_CustomFigure clone() => ThreadInfo_CustomFigure()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThreadInfo_CustomFigure copyWith(void Function(ThreadInfo_CustomFigure) updates) => super.copyWith((message) => updates(message as ThreadInfo_CustomFigure)) as ThreadInfo_CustomFigure;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreadInfo_CustomFigure create() => ThreadInfo_CustomFigure._();
  ThreadInfo_CustomFigure createEmptyInstance() => create();
  static $pb.PbList<ThreadInfo_CustomFigure> createRepeated() => $pb.PbList<ThreadInfo_CustomFigure>();
  @$core.pragma('dart2js:noInline')
  static ThreadInfo_CustomFigure getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThreadInfo_CustomFigure>(create);
  static ThreadInfo_CustomFigure? _defaultInstance;

  @$pb.TagNumber(3)
  $core.String get backgroundValue => $_getSZ(0);
  @$pb.TagNumber(3)
  set backgroundValue($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(3)
  $core.bool hasBackgroundValue() => $_has(0);
  @$pb.TagNumber(3)
  void clearBackgroundValue() => clearField(3);
}

class ThreadInfo_CustomState extends $pb.GeneratedMessage {
  factory ThreadInfo_CustomState({
    $core.String? content,
  }) {
    final $result = create();
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  ThreadInfo_CustomState._() : super();
  factory ThreadInfo_CustomState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThreadInfo_CustomState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThreadInfo.CustomState', createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'content')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThreadInfo_CustomState clone() => ThreadInfo_CustomState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThreadInfo_CustomState copyWith(void Function(ThreadInfo_CustomState) updates) => super.copyWith((message) => updates(message as ThreadInfo_CustomState)) as ThreadInfo_CustomState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreadInfo_CustomState create() => ThreadInfo_CustomState._();
  ThreadInfo_CustomState createEmptyInstance() => create();
  static $pb.PbList<ThreadInfo_CustomState> createRepeated() => $pb.PbList<ThreadInfo_CustomState>();
  @$core.pragma('dart2js:noInline')
  static ThreadInfo_CustomState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThreadInfo_CustomState>(create);
  static ThreadInfo_CustomState? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(0);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
}

class ThreadInfo extends $pb.GeneratedMessage {
  factory ThreadInfo({
    $fixnum.Int64? id,
    $core.String? title,
    $core.int? replyNum,
    $core.int? viewNum,
    $core.int? lastTimeInt,
    $core.int? isTop,
    $core.int? isGood,
    $core.int? isVoiceThread,
    $0.User? author,
    $core.Iterable<$1.Voice>? voiceInfo,
    $core.int? threadType,
    $fixnum.Int64? fid,
    $core.String? fname,
    $core.int? isLivepost,
    $fixnum.Int64? firstPostId,
    $core.int? createTime,
    $fixnum.Int64? postId,
    $fixnum.Int64? authorId,
    $core.int? isAd,
    $2.PollInfo? pollInfo,
    $3.VideoInfo? videoInfo,
    $core.int? isGodthreadRecommend,
    $4.Agree? agree,
    $core.int? shareNum,
    ThreadInfo_OriginThreadInfo? originThreadInfo,
    $core.Iterable<$5.PbContent>? firstPostContent,
    $core.int? isShareThread,
    $core.int? tabId,
    $core.int? isDeleted,
    $core.int? isFrsMask,
    ThreadInfo_CustomFigure? customFigure,
    ThreadInfo_CustomState? customState,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (replyNum != null) {
      $result.replyNum = replyNum;
    }
    if (viewNum != null) {
      $result.viewNum = viewNum;
    }
    if (lastTimeInt != null) {
      $result.lastTimeInt = lastTimeInt;
    }
    if (isTop != null) {
      $result.isTop = isTop;
    }
    if (isGood != null) {
      $result.isGood = isGood;
    }
    if (isVoiceThread != null) {
      $result.isVoiceThread = isVoiceThread;
    }
    if (author != null) {
      $result.author = author;
    }
    if (voiceInfo != null) {
      $result.voiceInfo.addAll(voiceInfo);
    }
    if (threadType != null) {
      $result.threadType = threadType;
    }
    if (fid != null) {
      $result.fid = fid;
    }
    if (fname != null) {
      $result.fname = fname;
    }
    if (isLivepost != null) {
      $result.isLivepost = isLivepost;
    }
    if (firstPostId != null) {
      $result.firstPostId = firstPostId;
    }
    if (createTime != null) {
      $result.createTime = createTime;
    }
    if (postId != null) {
      $result.postId = postId;
    }
    if (authorId != null) {
      $result.authorId = authorId;
    }
    if (isAd != null) {
      $result.isAd = isAd;
    }
    if (pollInfo != null) {
      $result.pollInfo = pollInfo;
    }
    if (videoInfo != null) {
      $result.videoInfo = videoInfo;
    }
    if (isGodthreadRecommend != null) {
      $result.isGodthreadRecommend = isGodthreadRecommend;
    }
    if (agree != null) {
      $result.agree = agree;
    }
    if (shareNum != null) {
      $result.shareNum = shareNum;
    }
    if (originThreadInfo != null) {
      $result.originThreadInfo = originThreadInfo;
    }
    if (firstPostContent != null) {
      $result.firstPostContent.addAll(firstPostContent);
    }
    if (isShareThread != null) {
      $result.isShareThread = isShareThread;
    }
    if (tabId != null) {
      $result.tabId = tabId;
    }
    if (isDeleted != null) {
      $result.isDeleted = isDeleted;
    }
    if (isFrsMask != null) {
      $result.isFrsMask = isFrsMask;
    }
    if (customFigure != null) {
      $result.customFigure = customFigure;
    }
    if (customState != null) {
      $result.customState = customState;
    }
    return $result;
  }
  ThreadInfo._() : super();
  factory ThreadInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThreadInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThreadInfo', createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'replyNum', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'viewNum', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'lastTimeInt', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'isTop', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'isGood', $pb.PbFieldType.O3)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'isVoiceThread', $pb.PbFieldType.O3)
    ..aOM<$0.User>(18, _omitFieldNames ? '' : 'author', subBuilder: $0.User.create)
    ..pc<$1.Voice>(23, _omitFieldNames ? '' : 'voiceInfo', $pb.PbFieldType.PM, subBuilder: $1.Voice.create)
    ..a<$core.int>(26, _omitFieldNames ? '' : 'threadType', $pb.PbFieldType.O3)
    ..aInt64(27, _omitFieldNames ? '' : 'fid')
    ..aOS(28, _omitFieldNames ? '' : 'fname')
    ..a<$core.int>(30, _omitFieldNames ? '' : 'isLivepost', $pb.PbFieldType.O3)
    ..aInt64(40, _omitFieldNames ? '' : 'firstPostId')
    ..a<$core.int>(45, _omitFieldNames ? '' : 'createTime', $pb.PbFieldType.O3)
    ..aInt64(52, _omitFieldNames ? '' : 'postId')
    ..aInt64(56, _omitFieldNames ? '' : 'authorId')
    ..a<$core.int>(59, _omitFieldNames ? '' : 'isAd', $pb.PbFieldType.OU3)
    ..aOM<$2.PollInfo>(74, _omitFieldNames ? '' : 'pollInfo', subBuilder: $2.PollInfo.create)
    ..aOM<$3.VideoInfo>(79, _omitFieldNames ? '' : 'videoInfo', subBuilder: $3.VideoInfo.create)
    ..a<$core.int>(85, _omitFieldNames ? '' : 'isGodthreadRecommend', $pb.PbFieldType.O3)
    ..aOM<$4.Agree>(126, _omitFieldNames ? '' : 'agree', subBuilder: $4.Agree.create)
    ..a<$core.int>(135, _omitFieldNames ? '' : 'shareNum', $pb.PbFieldType.O3)
    ..aOM<ThreadInfo_OriginThreadInfo>(141, _omitFieldNames ? '' : 'originThreadInfo', subBuilder: ThreadInfo_OriginThreadInfo.create)
    ..pc<$5.PbContent>(142, _omitFieldNames ? '' : 'firstPostContent', $pb.PbFieldType.PM, subBuilder: $5.PbContent.create)
    ..a<$core.int>(143, _omitFieldNames ? '' : 'isShareThread', $pb.PbFieldType.O3)
    ..a<$core.int>(175, _omitFieldNames ? '' : 'tabId', $pb.PbFieldType.O3)
    ..a<$core.int>(181, _omitFieldNames ? '' : 'isDeleted', $pb.PbFieldType.O3)
    ..a<$core.int>(198, _omitFieldNames ? '' : 'isFrsMask', $pb.PbFieldType.O3)
    ..aOM<ThreadInfo_CustomFigure>(211, _omitFieldNames ? '' : 'customFigure', subBuilder: ThreadInfo_CustomFigure.create)
    ..aOM<ThreadInfo_CustomState>(212, _omitFieldNames ? '' : 'customState', subBuilder: ThreadInfo_CustomState.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThreadInfo clone() => ThreadInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThreadInfo copyWith(void Function(ThreadInfo) updates) => super.copyWith((message) => updates(message as ThreadInfo)) as ThreadInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreadInfo create() => ThreadInfo._();
  ThreadInfo createEmptyInstance() => create();
  static $pb.PbList<ThreadInfo> createRepeated() => $pb.PbList<ThreadInfo>();
  @$core.pragma('dart2js:noInline')
  static ThreadInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThreadInfo>(create);
  static ThreadInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get replyNum => $_getIZ(2);
  @$pb.TagNumber(4)
  set replyNum($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasReplyNum() => $_has(2);
  @$pb.TagNumber(4)
  void clearReplyNum() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get viewNum => $_getIZ(3);
  @$pb.TagNumber(5)
  set viewNum($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasViewNum() => $_has(3);
  @$pb.TagNumber(5)
  void clearViewNum() => clearField(5);

  @$pb.TagNumber(7)
  $core.int get lastTimeInt => $_getIZ(4);
  @$pb.TagNumber(7)
  set lastTimeInt($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastTimeInt() => $_has(4);
  @$pb.TagNumber(7)
  void clearLastTimeInt() => clearField(7);

  @$pb.TagNumber(9)
  $core.int get isTop => $_getIZ(5);
  @$pb.TagNumber(9)
  set isTop($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(9)
  $core.bool hasIsTop() => $_has(5);
  @$pb.TagNumber(9)
  void clearIsTop() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get isGood => $_getIZ(6);
  @$pb.TagNumber(10)
  set isGood($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(10)
  $core.bool hasIsGood() => $_has(6);
  @$pb.TagNumber(10)
  void clearIsGood() => clearField(10);

  @$pb.TagNumber(15)
  $core.int get isVoiceThread => $_getIZ(7);
  @$pb.TagNumber(15)
  set isVoiceThread($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(15)
  $core.bool hasIsVoiceThread() => $_has(7);
  @$pb.TagNumber(15)
  void clearIsVoiceThread() => clearField(15);

  @$pb.TagNumber(18)
  $0.User get author => $_getN(8);
  @$pb.TagNumber(18)
  set author($0.User v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasAuthor() => $_has(8);
  @$pb.TagNumber(18)
  void clearAuthor() => clearField(18);
  @$pb.TagNumber(18)
  $0.User ensureAuthor() => $_ensure(8);

  @$pb.TagNumber(23)
  $core.List<$1.Voice> get voiceInfo => $_getList(9);

  @$pb.TagNumber(26)
  $core.int get threadType => $_getIZ(10);
  @$pb.TagNumber(26)
  set threadType($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(26)
  $core.bool hasThreadType() => $_has(10);
  @$pb.TagNumber(26)
  void clearThreadType() => clearField(26);

  @$pb.TagNumber(27)
  $fixnum.Int64 get fid => $_getI64(11);
  @$pb.TagNumber(27)
  set fid($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(27)
  $core.bool hasFid() => $_has(11);
  @$pb.TagNumber(27)
  void clearFid() => clearField(27);

  @$pb.TagNumber(28)
  $core.String get fname => $_getSZ(12);
  @$pb.TagNumber(28)
  set fname($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(28)
  $core.bool hasFname() => $_has(12);
  @$pb.TagNumber(28)
  void clearFname() => clearField(28);

  @$pb.TagNumber(30)
  $core.int get isLivepost => $_getIZ(13);
  @$pb.TagNumber(30)
  set isLivepost($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(30)
  $core.bool hasIsLivepost() => $_has(13);
  @$pb.TagNumber(30)
  void clearIsLivepost() => clearField(30);

  @$pb.TagNumber(40)
  $fixnum.Int64 get firstPostId => $_getI64(14);
  @$pb.TagNumber(40)
  set firstPostId($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(40)
  $core.bool hasFirstPostId() => $_has(14);
  @$pb.TagNumber(40)
  void clearFirstPostId() => clearField(40);

  @$pb.TagNumber(45)
  $core.int get createTime => $_getIZ(15);
  @$pb.TagNumber(45)
  set createTime($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(45)
  $core.bool hasCreateTime() => $_has(15);
  @$pb.TagNumber(45)
  void clearCreateTime() => clearField(45);

  @$pb.TagNumber(52)
  $fixnum.Int64 get postId => $_getI64(16);
  @$pb.TagNumber(52)
  set postId($fixnum.Int64 v) { $_setInt64(16, v); }
  @$pb.TagNumber(52)
  $core.bool hasPostId() => $_has(16);
  @$pb.TagNumber(52)
  void clearPostId() => clearField(52);

  @$pb.TagNumber(56)
  $fixnum.Int64 get authorId => $_getI64(17);
  @$pb.TagNumber(56)
  set authorId($fixnum.Int64 v) { $_setInt64(17, v); }
  @$pb.TagNumber(56)
  $core.bool hasAuthorId() => $_has(17);
  @$pb.TagNumber(56)
  void clearAuthorId() => clearField(56);

  @$pb.TagNumber(59)
  $core.int get isAd => $_getIZ(18);
  @$pb.TagNumber(59)
  set isAd($core.int v) { $_setUnsignedInt32(18, v); }
  @$pb.TagNumber(59)
  $core.bool hasIsAd() => $_has(18);
  @$pb.TagNumber(59)
  void clearIsAd() => clearField(59);

  @$pb.TagNumber(74)
  $2.PollInfo get pollInfo => $_getN(19);
  @$pb.TagNumber(74)
  set pollInfo($2.PollInfo v) { setField(74, v); }
  @$pb.TagNumber(74)
  $core.bool hasPollInfo() => $_has(19);
  @$pb.TagNumber(74)
  void clearPollInfo() => clearField(74);
  @$pb.TagNumber(74)
  $2.PollInfo ensurePollInfo() => $_ensure(19);

  @$pb.TagNumber(79)
  $3.VideoInfo get videoInfo => $_getN(20);
  @$pb.TagNumber(79)
  set videoInfo($3.VideoInfo v) { setField(79, v); }
  @$pb.TagNumber(79)
  $core.bool hasVideoInfo() => $_has(20);
  @$pb.TagNumber(79)
  void clearVideoInfo() => clearField(79);
  @$pb.TagNumber(79)
  $3.VideoInfo ensureVideoInfo() => $_ensure(20);

  @$pb.TagNumber(85)
  $core.int get isGodthreadRecommend => $_getIZ(21);
  @$pb.TagNumber(85)
  set isGodthreadRecommend($core.int v) { $_setSignedInt32(21, v); }
  @$pb.TagNumber(85)
  $core.bool hasIsGodthreadRecommend() => $_has(21);
  @$pb.TagNumber(85)
  void clearIsGodthreadRecommend() => clearField(85);

  @$pb.TagNumber(126)
  $4.Agree get agree => $_getN(22);
  @$pb.TagNumber(126)
  set agree($4.Agree v) { setField(126, v); }
  @$pb.TagNumber(126)
  $core.bool hasAgree() => $_has(22);
  @$pb.TagNumber(126)
  void clearAgree() => clearField(126);
  @$pb.TagNumber(126)
  $4.Agree ensureAgree() => $_ensure(22);

  @$pb.TagNumber(135)
  $core.int get shareNum => $_getIZ(23);
  @$pb.TagNumber(135)
  set shareNum($core.int v) { $_setSignedInt32(23, v); }
  @$pb.TagNumber(135)
  $core.bool hasShareNum() => $_has(23);
  @$pb.TagNumber(135)
  void clearShareNum() => clearField(135);

  @$pb.TagNumber(141)
  ThreadInfo_OriginThreadInfo get originThreadInfo => $_getN(24);
  @$pb.TagNumber(141)
  set originThreadInfo(ThreadInfo_OriginThreadInfo v) { setField(141, v); }
  @$pb.TagNumber(141)
  $core.bool hasOriginThreadInfo() => $_has(24);
  @$pb.TagNumber(141)
  void clearOriginThreadInfo() => clearField(141);
  @$pb.TagNumber(141)
  ThreadInfo_OriginThreadInfo ensureOriginThreadInfo() => $_ensure(24);

  @$pb.TagNumber(142)
  $core.List<$5.PbContent> get firstPostContent => $_getList(25);

  @$pb.TagNumber(143)
  $core.int get isShareThread => $_getIZ(26);
  @$pb.TagNumber(143)
  set isShareThread($core.int v) { $_setSignedInt32(26, v); }
  @$pb.TagNumber(143)
  $core.bool hasIsShareThread() => $_has(26);
  @$pb.TagNumber(143)
  void clearIsShareThread() => clearField(143);

  @$pb.TagNumber(175)
  $core.int get tabId => $_getIZ(27);
  @$pb.TagNumber(175)
  set tabId($core.int v) { $_setSignedInt32(27, v); }
  @$pb.TagNumber(175)
  $core.bool hasTabId() => $_has(27);
  @$pb.TagNumber(175)
  void clearTabId() => clearField(175);

  @$pb.TagNumber(181)
  $core.int get isDeleted => $_getIZ(28);
  @$pb.TagNumber(181)
  set isDeleted($core.int v) { $_setSignedInt32(28, v); }
  @$pb.TagNumber(181)
  $core.bool hasIsDeleted() => $_has(28);
  @$pb.TagNumber(181)
  void clearIsDeleted() => clearField(181);

  @$pb.TagNumber(198)
  $core.int get isFrsMask => $_getIZ(29);
  @$pb.TagNumber(198)
  set isFrsMask($core.int v) { $_setSignedInt32(29, v); }
  @$pb.TagNumber(198)
  $core.bool hasIsFrsMask() => $_has(29);
  @$pb.TagNumber(198)
  void clearIsFrsMask() => clearField(198);

  @$pb.TagNumber(211)
  ThreadInfo_CustomFigure get customFigure => $_getN(30);
  @$pb.TagNumber(211)
  set customFigure(ThreadInfo_CustomFigure v) { setField(211, v); }
  @$pb.TagNumber(211)
  $core.bool hasCustomFigure() => $_has(30);
  @$pb.TagNumber(211)
  void clearCustomFigure() => clearField(211);
  @$pb.TagNumber(211)
  ThreadInfo_CustomFigure ensureCustomFigure() => $_ensure(30);

  @$pb.TagNumber(212)
  ThreadInfo_CustomState get customState => $_getN(31);
  @$pb.TagNumber(212)
  set customState(ThreadInfo_CustomState v) { setField(212, v); }
  @$pb.TagNumber(212)
  $core.bool hasCustomState() => $_has(31);
  @$pb.TagNumber(212)
  void clearCustomState() => clearField(212);
  @$pb.TagNumber(212)
  ThreadInfo_CustomState ensureCustomState() => $_ensure(31);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
