//
//  Generated code. Do not modify.
//  source: PostInfoList.proto
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
import 'Media.pb.dart' as $0;
import 'PbContent.pb.dart' as $5;
import 'PollInfo.pb.dart' as $2;
import 'VideoInfo.pb.dart' as $3;
import 'Voice.pb.dart' as $1;

class PostInfoList_PostInfoContent_Abstract extends $pb.GeneratedMessage {
  factory PostInfoList_PostInfoContent_Abstract({
    $core.int? type,
    $core.String? text,
    $core.String? link,
    $core.String? duringTime,
    $core.String? voiceMd5,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (text != null) {
      $result.text = text;
    }
    if (link != null) {
      $result.link = link;
    }
    if (duringTime != null) {
      $result.duringTime = duringTime;
    }
    if (voiceMd5 != null) {
      $result.voiceMd5 = voiceMd5;
    }
    return $result;
  }
  PostInfoList_PostInfoContent_Abstract._() : super();
  factory PostInfoList_PostInfoContent_Abstract.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostInfoList_PostInfoContent_Abstract.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostInfoList.PostInfoContent.Abstract', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..aOS(3, _omitFieldNames ? '' : 'link')
    ..aOS(6, _omitFieldNames ? '' : 'duringTime')
    ..aOS(7, _omitFieldNames ? '' : 'voiceMd5')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostInfoList_PostInfoContent_Abstract clone() => PostInfoList_PostInfoContent_Abstract()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostInfoList_PostInfoContent_Abstract copyWith(void Function(PostInfoList_PostInfoContent_Abstract) updates) => super.copyWith((message) => updates(message as PostInfoList_PostInfoContent_Abstract)) as PostInfoList_PostInfoContent_Abstract;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostInfoList_PostInfoContent_Abstract create() => PostInfoList_PostInfoContent_Abstract._();
  PostInfoList_PostInfoContent_Abstract createEmptyInstance() => create();
  static $pb.PbList<PostInfoList_PostInfoContent_Abstract> createRepeated() => $pb.PbList<PostInfoList_PostInfoContent_Abstract>();
  @$core.pragma('dart2js:noInline')
  static PostInfoList_PostInfoContent_Abstract getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostInfoList_PostInfoContent_Abstract>(create);
  static PostInfoList_PostInfoContent_Abstract? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get link => $_getSZ(2);
  @$pb.TagNumber(3)
  set link($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLink() => $_has(2);
  @$pb.TagNumber(3)
  void clearLink() => clearField(3);

  @$pb.TagNumber(6)
  $core.String get duringTime => $_getSZ(3);
  @$pb.TagNumber(6)
  set duringTime($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasDuringTime() => $_has(3);
  @$pb.TagNumber(6)
  void clearDuringTime() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get voiceMd5 => $_getSZ(4);
  @$pb.TagNumber(7)
  set voiceMd5($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasVoiceMd5() => $_has(4);
  @$pb.TagNumber(7)
  void clearVoiceMd5() => clearField(7);
}

class PostInfoList_PostInfoContent extends $pb.GeneratedMessage {
  factory PostInfoList_PostInfoContent({
    $core.Iterable<PostInfoList_PostInfoContent_Abstract>? postContent,
    $fixnum.Int64? createTime,
    $fixnum.Int64? postType,
    $fixnum.Int64? postId,
  }) {
    final $result = create();
    if (postContent != null) {
      $result.postContent.addAll(postContent);
    }
    if (createTime != null) {
      $result.createTime = createTime;
    }
    if (postType != null) {
      $result.postType = postType;
    }
    if (postId != null) {
      $result.postId = postId;
    }
    return $result;
  }
  PostInfoList_PostInfoContent._() : super();
  factory PostInfoList_PostInfoContent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostInfoList_PostInfoContent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostInfoList.PostInfoContent', createEmptyInstance: create)
    ..pc<PostInfoList_PostInfoContent_Abstract>(1, _omitFieldNames ? '' : 'postContent', $pb.PbFieldType.PM, subBuilder: PostInfoList_PostInfoContent_Abstract.create)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'createTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'postType', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'postId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostInfoList_PostInfoContent clone() => PostInfoList_PostInfoContent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostInfoList_PostInfoContent copyWith(void Function(PostInfoList_PostInfoContent) updates) => super.copyWith((message) => updates(message as PostInfoList_PostInfoContent)) as PostInfoList_PostInfoContent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostInfoList_PostInfoContent create() => PostInfoList_PostInfoContent._();
  PostInfoList_PostInfoContent createEmptyInstance() => create();
  static $pb.PbList<PostInfoList_PostInfoContent> createRepeated() => $pb.PbList<PostInfoList_PostInfoContent>();
  @$core.pragma('dart2js:noInline')
  static PostInfoList_PostInfoContent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostInfoList_PostInfoContent>(create);
  static PostInfoList_PostInfoContent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PostInfoList_PostInfoContent_Abstract> get postContent => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get createTime => $_getI64(1);
  @$pb.TagNumber(2)
  set createTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateTime() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get postType => $_getI64(2);
  @$pb.TagNumber(3)
  set postType($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPostType() => $_has(2);
  @$pb.TagNumber(3)
  void clearPostType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get postId => $_getI64(3);
  @$pb.TagNumber(4)
  set postId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPostId() => $_has(3);
  @$pb.TagNumber(4)
  void clearPostId() => clearField(4);
}

class PostInfoList extends $pb.GeneratedMessage {
  factory PostInfoList({
    $fixnum.Int64? forumId,
    $fixnum.Int64? threadId,
    $fixnum.Int64? postId,
    $core.int? createTime,
    $core.String? forumName,
    $core.String? title,
    $core.Iterable<PostInfoList_PostInfoContent>? content,
    $core.String? userName,
    $core.Iterable<$0.Media>? media,
    $core.int? replyNum,
    $fixnum.Int64? userId,
    $core.String? userPortrait,
    $core.Iterable<$1.Voice>? voiceInfo,
    $fixnum.Int64? threadType,
    $2.PollInfo? pollInfo,
    $3.VideoInfo? videoInfo,
    $core.int? freqNum,
    $core.String? nameShow,
    $core.int? shareNum,
    $4.Agree? agree,
    $core.int? isShareThread,
    $core.Iterable<$5.PbContent>? firstPostContent,
  }) {
    final $result = create();
    if (forumId != null) {
      $result.forumId = forumId;
    }
    if (threadId != null) {
      $result.threadId = threadId;
    }
    if (postId != null) {
      $result.postId = postId;
    }
    if (createTime != null) {
      $result.createTime = createTime;
    }
    if (forumName != null) {
      $result.forumName = forumName;
    }
    if (title != null) {
      $result.title = title;
    }
    if (content != null) {
      $result.content.addAll(content);
    }
    if (userName != null) {
      $result.userName = userName;
    }
    if (media != null) {
      $result.media.addAll(media);
    }
    if (replyNum != null) {
      $result.replyNum = replyNum;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (userPortrait != null) {
      $result.userPortrait = userPortrait;
    }
    if (voiceInfo != null) {
      $result.voiceInfo.addAll(voiceInfo);
    }
    if (threadType != null) {
      $result.threadType = threadType;
    }
    if (pollInfo != null) {
      $result.pollInfo = pollInfo;
    }
    if (videoInfo != null) {
      $result.videoInfo = videoInfo;
    }
    if (freqNum != null) {
      $result.freqNum = freqNum;
    }
    if (nameShow != null) {
      $result.nameShow = nameShow;
    }
    if (shareNum != null) {
      $result.shareNum = shareNum;
    }
    if (agree != null) {
      $result.agree = agree;
    }
    if (isShareThread != null) {
      $result.isShareThread = isShareThread;
    }
    if (firstPostContent != null) {
      $result.firstPostContent.addAll(firstPostContent);
    }
    return $result;
  }
  PostInfoList._() : super();
  factory PostInfoList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostInfoList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostInfoList', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'forumId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'threadId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'postId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'createTime', $pb.PbFieldType.OU3)
    ..aOS(6, _omitFieldNames ? '' : 'forumName')
    ..aOS(7, _omitFieldNames ? '' : 'title')
    ..pc<PostInfoList_PostInfoContent>(8, _omitFieldNames ? '' : 'content', $pb.PbFieldType.PM, subBuilder: PostInfoList_PostInfoContent.create)
    ..aOS(10, _omitFieldNames ? '' : 'userName')
    ..pc<$0.Media>(16, _omitFieldNames ? '' : 'media', $pb.PbFieldType.PM, subBuilder: $0.Media.create)
    ..a<$core.int>(17, _omitFieldNames ? '' : 'replyNum', $pb.PbFieldType.OU3)
    ..aInt64(18, _omitFieldNames ? '' : 'userId')
    ..aOS(19, _omitFieldNames ? '' : 'userPortrait')
    ..pc<$1.Voice>(23, _omitFieldNames ? '' : 'voiceInfo', $pb.PbFieldType.PM, subBuilder: $1.Voice.create)
    ..a<$fixnum.Int64>(26, _omitFieldNames ? '' : 'threadType', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$2.PollInfo>(28, _omitFieldNames ? '' : 'pollInfo', subBuilder: $2.PollInfo.create)
    ..aOM<$3.VideoInfo>(29, _omitFieldNames ? '' : 'videoInfo', subBuilder: $3.VideoInfo.create)
    ..a<$core.int>(33, _omitFieldNames ? '' : 'freqNum', $pb.PbFieldType.O3)
    ..aOS(35, _omitFieldNames ? '' : 'nameShow')
    ..a<$core.int>(39, _omitFieldNames ? '' : 'shareNum', $pb.PbFieldType.O3)
    ..aOM<$4.Agree>(40, _omitFieldNames ? '' : 'agree', subBuilder: $4.Agree.create)
    ..a<$core.int>(44, _omitFieldNames ? '' : 'isShareThread', $pb.PbFieldType.O3)
    ..pc<$5.PbContent>(49, _omitFieldNames ? '' : 'firstPostContent', $pb.PbFieldType.PM, subBuilder: $5.PbContent.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostInfoList clone() => PostInfoList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostInfoList copyWith(void Function(PostInfoList) updates) => super.copyWith((message) => updates(message as PostInfoList)) as PostInfoList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostInfoList create() => PostInfoList._();
  PostInfoList createEmptyInstance() => create();
  static $pb.PbList<PostInfoList> createRepeated() => $pb.PbList<PostInfoList>();
  @$core.pragma('dart2js:noInline')
  static PostInfoList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostInfoList>(create);
  static PostInfoList? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get forumId => $_getI64(0);
  @$pb.TagNumber(1)
  set forumId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasForumId() => $_has(0);
  @$pb.TagNumber(1)
  void clearForumId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get threadId => $_getI64(1);
  @$pb.TagNumber(2)
  set threadId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasThreadId() => $_has(1);
  @$pb.TagNumber(2)
  void clearThreadId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get postId => $_getI64(2);
  @$pb.TagNumber(3)
  set postId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPostId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPostId() => clearField(3);

  @$pb.TagNumber(5)
  $core.int get createTime => $_getIZ(3);
  @$pb.TagNumber(5)
  set createTime($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreateTime() => $_has(3);
  @$pb.TagNumber(5)
  void clearCreateTime() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get forumName => $_getSZ(4);
  @$pb.TagNumber(6)
  set forumName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasForumName() => $_has(4);
  @$pb.TagNumber(6)
  void clearForumName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get title => $_getSZ(5);
  @$pb.TagNumber(7)
  set title($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasTitle() => $_has(5);
  @$pb.TagNumber(7)
  void clearTitle() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<PostInfoList_PostInfoContent> get content => $_getList(6);

  @$pb.TagNumber(10)
  $core.String get userName => $_getSZ(7);
  @$pb.TagNumber(10)
  set userName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(10)
  $core.bool hasUserName() => $_has(7);
  @$pb.TagNumber(10)
  void clearUserName() => clearField(10);

  @$pb.TagNumber(16)
  $core.List<$0.Media> get media => $_getList(8);

  @$pb.TagNumber(17)
  $core.int get replyNum => $_getIZ(9);
  @$pb.TagNumber(17)
  set replyNum($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(17)
  $core.bool hasReplyNum() => $_has(9);
  @$pb.TagNumber(17)
  void clearReplyNum() => clearField(17);

  @$pb.TagNumber(18)
  $fixnum.Int64 get userId => $_getI64(10);
  @$pb.TagNumber(18)
  set userId($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(18)
  $core.bool hasUserId() => $_has(10);
  @$pb.TagNumber(18)
  void clearUserId() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get userPortrait => $_getSZ(11);
  @$pb.TagNumber(19)
  set userPortrait($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(19)
  $core.bool hasUserPortrait() => $_has(11);
  @$pb.TagNumber(19)
  void clearUserPortrait() => clearField(19);

  @$pb.TagNumber(23)
  $core.List<$1.Voice> get voiceInfo => $_getList(12);

  @$pb.TagNumber(26)
  $fixnum.Int64 get threadType => $_getI64(13);
  @$pb.TagNumber(26)
  set threadType($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(26)
  $core.bool hasThreadType() => $_has(13);
  @$pb.TagNumber(26)
  void clearThreadType() => clearField(26);

  @$pb.TagNumber(28)
  $2.PollInfo get pollInfo => $_getN(14);
  @$pb.TagNumber(28)
  set pollInfo($2.PollInfo v) { setField(28, v); }
  @$pb.TagNumber(28)
  $core.bool hasPollInfo() => $_has(14);
  @$pb.TagNumber(28)
  void clearPollInfo() => clearField(28);
  @$pb.TagNumber(28)
  $2.PollInfo ensurePollInfo() => $_ensure(14);

  @$pb.TagNumber(29)
  $3.VideoInfo get videoInfo => $_getN(15);
  @$pb.TagNumber(29)
  set videoInfo($3.VideoInfo v) { setField(29, v); }
  @$pb.TagNumber(29)
  $core.bool hasVideoInfo() => $_has(15);
  @$pb.TagNumber(29)
  void clearVideoInfo() => clearField(29);
  @$pb.TagNumber(29)
  $3.VideoInfo ensureVideoInfo() => $_ensure(15);

  @$pb.TagNumber(33)
  $core.int get freqNum => $_getIZ(16);
  @$pb.TagNumber(33)
  set freqNum($core.int v) { $_setSignedInt32(16, v); }
  @$pb.TagNumber(33)
  $core.bool hasFreqNum() => $_has(16);
  @$pb.TagNumber(33)
  void clearFreqNum() => clearField(33);

  @$pb.TagNumber(35)
  $core.String get nameShow => $_getSZ(17);
  @$pb.TagNumber(35)
  set nameShow($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(35)
  $core.bool hasNameShow() => $_has(17);
  @$pb.TagNumber(35)
  void clearNameShow() => clearField(35);

  @$pb.TagNumber(39)
  $core.int get shareNum => $_getIZ(18);
  @$pb.TagNumber(39)
  set shareNum($core.int v) { $_setSignedInt32(18, v); }
  @$pb.TagNumber(39)
  $core.bool hasShareNum() => $_has(18);
  @$pb.TagNumber(39)
  void clearShareNum() => clearField(39);

  @$pb.TagNumber(40)
  $4.Agree get agree => $_getN(19);
  @$pb.TagNumber(40)
  set agree($4.Agree v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasAgree() => $_has(19);
  @$pb.TagNumber(40)
  void clearAgree() => clearField(40);
  @$pb.TagNumber(40)
  $4.Agree ensureAgree() => $_ensure(19);

  @$pb.TagNumber(44)
  $core.int get isShareThread => $_getIZ(20);
  @$pb.TagNumber(44)
  set isShareThread($core.int v) { $_setSignedInt32(20, v); }
  @$pb.TagNumber(44)
  $core.bool hasIsShareThread() => $_has(20);
  @$pb.TagNumber(44)
  void clearIsShareThread() => clearField(44);

  @$pb.TagNumber(49)
  $core.List<$5.PbContent> get firstPostContent => $_getList(21);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
