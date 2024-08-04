import 'package:flutter/material.dart';
import 'package:chinese_font_library/chinese_font_library.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'package:tieba_next/Core/Forum.dart';
import 'package:tieba_next/Widget/NetworkImageGrid.dart';

/// 吧信息网格
class ForumGrid extends StatefulWidget 
{
  /// 吧信息
  final Forum forum;

  /// 吧信息网格构造函数
  /// 
  /// [forum] 吧信息
  const ForumGrid({ super.key, required this.forum });

  @override
  State<ForumGrid> createState() => _ForumGridState();
}

class _ForumGridState extends State<ForumGrid>
{
  /// 是否显示吧头像
  bool _showImage = false;

  /// 处理吧热度值为字符串
  /// 
  /// [hotNum] 吧热度值
  String _handleHotNum(int hotNum) => hotNum < 10000
  ? hotNum.toString()
  : '${(hotNum / 10000).toStringAsFixed(1)}万';

  @override
  Widget build(BuildContext context) => VisibilityDetector
  (
    key: Key('ForumGrid${widget.forum.name}'), 
    onVisibilityChanged: (info) 
    {
      if (info.visibleFraction > 0.0) setState(() => _showImage = true);
    },
    child: Row
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
            _showImage
            ? NetworkImageGrid(width: 36.0, height: 36.0, url: widget.forum.avatarURL)
            : Container
            (
              width: 36.0, height: 36.0,
              decoration: BoxDecoration
              (
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(4.0)
              )
            ),
            if(widget.forum.isSigned) Positioned
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
        Container
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
                  SizedBox
                  (
                    width: MediaQuery.of(context).size.width / 2.0 - 104.0,
                    child: Text
                    (
                      widget.forum.name, textWidthBasis: TextWidthBasis.parent,
                      maxLines: 1, overflow: TextOverflow.ellipsis,
                      style: TextStyle
                      (
                        fontSize: 12, color: Theme.of(context).colorScheme.onSurface
                      ).useSystemChineseFont()
                    )
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
                      'Lv.${widget.forum.userLevel}',
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
                    '热度：${_handleHotNum(widget.forum.hotNum)}', 
                    style: const TextStyle(fontSize: 10).useSystemChineseFont()
                  )
                ]
              )
            ]
          )
        ),
        const SizedBox(width: 12.0),
      ]
    )
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