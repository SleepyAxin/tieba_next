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
  final int lastReplyTime;
  /// 是否点赞
  final bool isAgreed;
  /// 点赞数
  final int agreeNum;
  /// 回复数
  final int replyNum;
  /// 帖子类型
  final ThreadType type;

  Thread
  (
    {
      required this.id,  required this.author, required this.title, required this.description,
      required this.createTime, required this.lastReplyTime, 
      required this.isAgreed, required this.agreeNum, required this.replyNum,
      this.type = ThreadType.normal
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