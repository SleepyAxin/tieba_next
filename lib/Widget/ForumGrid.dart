import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';    // 引入透明图片库

import 'package:tieba_next/Core/Forum.dart';    // 引入吧类

class ForumGrid extends StatelessWidget 
{
  final Forum forum;

  const ForumGrid({ super.key, required this.forum });

  /// 处理过长吧名
  /// 
  /// [name] 吧名
  String _handleForumName(BuildContext context, String name)
  {
    double width = MediaQuery.of(context).size.width / 2 - 60.0;
    int num = (width / 24.0).floor();
    return name.length > num ? '${name.substring(0, num)}...' : name;
  }

  /// 处理吧热度值为字符串
  /// 
  /// [hotNum] 吧热度值
  String _handleHotNum(int hotNum) => hotNum < 10000
  ? hotNum.toString()
  : '${(hotNum / 10000).toStringAsFixed(1)}万';

  @override
  Widget build(BuildContext context) => Row
  (
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: 
    [
      const SizedBox(width: 12.0),
      // 吧头像
      Stack
      (
        clipBehavior: Clip.none,    // 允许溢出部分显示
        children: 
        [
          Container
          (
            width: 36, height: 36,
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
                image: forum.avatarURL,
                fit: BoxFit.cover
              )
            )
          ),
          if(forum.isSign) Positioned
          (
            right: 0, bottom: 0,
            child: Container
            (
              width: 12, height: 12,
              decoration: BoxDecoration
              (
                color: Theme.of(context).colorScheme.surface,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(4.0))
              ),
              child: const Icon(Icons.check_outlined, size: 10)
            )
          )
        ],
      ),
      // 吧名字 用户等级 热度
      Expanded
      (
        child: Container
        (
          height: 36,
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
          child: Column
          (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: 
            [
              // 吧名字 用户等级
              Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: 
                [
                  Text
                  (
                    _handleForumName(context, forum.name),
                    style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.onSurface)
                  ),
                  Container
                  (
                    padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                    decoration: BoxDecoration
                    (
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(4.0)
                    ),
                    child: Text
                    (
                      'Lv.${forum.userLevel}',
                      style: TextStyle
                      (
                        fontSize: 10, 
                        color: Theme.of(context).colorScheme.onSecondary
                      )
                    ),
                  )
                ],
              ),
              // 吧热度 是否签到
              Row
              (
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: 
                [ 
                  const Icon(Icons.local_fire_department_outlined, size: 12.0), 
                  const SizedBox(width: 2),
                  Text
                  (
                    '热度：${_handleHotNum(forum.hotNum)}', 
                    style: const TextStyle(fontSize: 10)
                  )
                ]
              )
            ]
          )
        )
      ),
      const SizedBox(width: 12.0),
    ]
  );
}

class ForumGridPlaceholder extends StatelessWidget
{
  const ForumGridPlaceholder({ super.key });

  @override
  Widget build(BuildContext context) => Row
  (
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: 
    [
      const SizedBox(width: 12.0),
      Container
      (
        width: 36, height: 36,
        decoration: BoxDecoration
        (
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8.0)
        ),
      ),
      const SizedBox(width: 4.0),
      Column
      (
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
        [
          Container(width: 64, height: 16, color: Theme.of(context).colorScheme.secondary),
          const SizedBox(height: 4.0),
          Container(width: 80, height: 12, color: Theme.of(context).colorScheme.secondary)
        ]
      )
    ]
  );
}