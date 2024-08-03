import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:chinese_font_library/chinese_font_library.dart';

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
  /// [timestamp] 时间戳（秒）
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

    // 如果不是在同一年的话，直接返回年份-月份-日期
    if (now.year != dateTime.year) return DateFormat('yyyy-MM-dd HH:mm').format(dateTime);
    // 同一年内
    // 如果不是同一天的话，判断是否是昨天或前天
    if (now.day != dateTime.day)
    {
      switch (now.day - dateTime.day)
      {
        case 1: return '昨天${DateFormat('HH:mm').format(dateTime)}';
        case 2: return '前天${DateFormat('HH:mm').format(dateTime)}';
        // 如果不是昨天或前天的话，返回月份-日期
        default: return DateFormat('MM-dd HH:mm').format(dateTime);
      }
    }
    // 同一天内
    if (now.hour != dateTime.hour) return '今天${DateFormat('HH:mm').format(dateTime)}';
    // 同一小时内
    if (now.minute != dateTime.minute) return '${now.difference(dateTime).inMinutes}分钟前';
    // 同一分钟内
    return '${now.difference(dateTime).inSeconds}秒前';
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
            const SizedBox(width: 8.0),
            Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
                Text
                (
                  thread.author.nickname,
                  style: const TextStyle
                  (
                    fontSize: 12.0, fontWeight: FontWeight.bold
                  ).useSystemChineseFont()
                ),
                Text
                (
                  showCreateTime 
                  ? formatTimestamp(thread.createTime) : formatTimestamp(thread.lastReplyTime),
                  style: TextStyle
                  (
                    fontSize: 10.0, color: Theme.of(context).colorScheme.onSecondary
                  ).useSystemChineseFont()
                )
              ]
            )
          ]
        ),
        const SizedBox(height: 8.0),
        // 标题
        if (thread.title.isNotEmpty) SizedBox
        (
          width: MediaQuery.of(context).size.width - 32.0,
          child: Text
          (
            thread.title, textWidthBasis: TextWidthBasis.parent,
            maxLines: 2, overflow: TextOverflow.ellipsis,
            style: const TextStyle
            (
              fontSize: 14.0, fontWeight: FontWeight.w600
            ).useSystemChineseFont()
          )
        ),
        // 描述
        if (thread.description.isNotEmpty) SizedBox
        (
          width: MediaQuery.of(context).size.width - 32.0,
          child: Text
          (
            thread.description, textWidthBasis: TextWidthBasis.parent,
            maxLines: 4, overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14.0).useSystemChineseFont()
          )
        )
      ]
    )
  );
}