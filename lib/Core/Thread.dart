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
  /// 帖子类型
  final ThreadType type;

  Thread
  (
    {
      required this.id,  required this.author, required this.title, required this.description,
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
  top,
  /// 吧规帖子 
  rule
}