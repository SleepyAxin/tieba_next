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

  Thread
  (
    {
      required this.id,  required this.author, required this.title, required this.description
    }
  );
}