import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:transparent_image/transparent_image.dart';

import 'package:tieba_next/Core/Thread.dart';
import 'package:tieba_next/TieBaAPI/TieBaAPI.dart';

class ThreadGrid extends StatelessWidget 
{
  /// 帖子信息
  final Thread thread;
  /// 是否显示吧名
  final bool showForumName;
  /// 显示创建时间还是回复时间
  final bool showCreateTime;

  const ThreadGrid
  (
    { 
      super.key, required this.thread, this.showForumName = false, this.showCreateTime = false 
    }
  );

  /// 格式化时间戳
  /// 
  /// [timestamp] 时间戳
  /// 
  /// 输出格式：
  /// - 1分钟内：x秒前
  /// - 1小时内：x分钟前
  /// - 当天：今天HH:mm
  /// - 昨天：昨天HH:mm
  /// - 前天：前天HH:mm
  /// - 1年内：MM-dd HH:mm
  /// - 1年以上：yyyy-MM-dd HH:mm
  static String formatTimestamp(int timestamp) 
  {
    final DateTime now = DateTime.now();
    final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

    final Duration diff = now.difference(dateTime);

    if (diff.inSeconds < 60) { return '${diff.inSeconds}秒前'; } 
    else if (diff.inMinutes < 60) { return '${diff.inMinutes}分钟前'; } 
    else if (diff.inDays == 0) { return '今天${DateFormat('HH:mm').format(dateTime)}'; } 
    else if (diff.inDays == 1) { return '昨天${DateFormat('HH:mm').format(dateTime)}'; } 
    else if (diff.inDays == 2) { return '前天${DateFormat('HH:mm').format(dateTime)}'; } 
    else if (diff.inDays < 365) { return DateFormat('MM-dd HH:mm').format(dateTime); } 
    else { return DateFormat('yyyy-MM-dd HH:mm').format(dateTime); }
  }

  @override
  Widget build(BuildContext context) => Padding
  (
    padding: const EdgeInsets.all(16.0),
    child: Column
    (
      children: 
      [
        // 用户头像 昵称 时间
        Row
        (
          children: 
          [
            Container
            (
              width: 32, height: 32,
              decoration: BoxDecoration
              (
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(4.0)
              ),
              child: ClipRRect
              (
                borderRadius: BorderRadius.circular(4.0),
                child: FadeInImage.memoryNetwork
                (
                  placeholder: kTransparentImage,
                  image: TieBaAPI.avatar(thread.author.portrait, false),
                  fit: BoxFit.cover
                )
              )
            ),
          ]
        )
      ]
    )
  );
}