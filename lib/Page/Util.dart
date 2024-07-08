// 实用函数

import 'package:flutter/material.dart';    // 引入Material组件库

/// 设置右方移入页面切换动画
/// 
/// [page] 要跳转的页面
Route createRoute(dynamic page) 
{
  return PageRouteBuilder
  (
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) 
    {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition
      (
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}