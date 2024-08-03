import 'package:tieba_next/Core/User.dart';

/// 帖子信息
class Thread
{
  /// 帖子ID
  final int id;
  /// 楼主
  final User author;
  /// 帖子标题
  final String title;
  /// 帖子描述
  final String description;
  /// 创建时间（时间戳）
  final int createTime;
  /// 最后回复时间（时间戳）
  int lastReplyTime;
  /// 是否点赞
  bool isAgreed;
  /// 点赞数
  int agreeNum;
  /// 回复数
  int replyNum;
  /// 帖子类型
  final ThreadType type;
  /// 帖子媒体
  final List<ThreadMedia> medias;

  Thread
  (
    {
      required this.id,  required this.author, required this.title, required this.description,
      required this.createTime, required this.lastReplyTime, 
      required this.isAgreed, required this.agreeNum, required this.replyNum,
      this.type = ThreadType.normal, required this.medias
    }
  );
}

/// 帖子类型
enum ThreadType
{
  /// 普通帖子
  normal, 
  /// 精华帖子
  good,
  /// 置顶帖子
  top
}

/// 帖子媒体信息，如视频、图片等
class ThreadMedia
{
  /// 缩略图地址或视频封面地址
  final String smallURL;
  /// 大图地址或视频地址
  final String bigURL;
  /// 媒体类型（图片或视频）
  final ThreadMediaType type;

  ThreadMedia({required this.smallURL, required this.bigURL, required this.type});
}

/// 帖子媒体类型
enum ThreadMediaType
{
  /// 图片
  image,
  /// 视频
  video
}