import 'package:flutter/material.dart';    // 引入Material组件库

export 'package:tieba_next/Page/AboutPage.dart';               // 导出关于页面
export 'package:tieba_next/Page/FavoritePage.dart';            // 导出我的收藏页面
export 'package:tieba_next/Page/ForumsPage.dart';              // 导出吧内页面
export 'package:tieba_next/Page/HistoryPage.dart';             // 导出浏览历史页面
export 'package:tieba_next/Page/HomePage.dart';                // 导出主页页面
export 'package:tieba_next/Page/LaterOnPage.dart';             // 导出稍后再看页面
export 'package:tieba_next/Page/LoadingScreenPage.dart';       // 导出加载页面
export 'package:tieba_next/Page/LoginWebPage.dart';            // 导出登录网页页面
export 'package:tieba_next/Page/MainPage.dart';            // 导出主页面
export 'package:tieba_next/Page/MessagePage.dart';             // 导出消息页面
export 'package:tieba_next/Page/PersonPage.dart';              // 导出我的页面
export 'package:tieba_next/Page/SettingsPage.dart';            // 导出设置页面
export 'package:tieba_next/Page/UserPage.dart';                // 导出个人资料页面

/// 设置右方移入页面切换动画
/// 
/// [page] 要跳转的页面
Route createRoute(Widget page) 
{
  return PageRouteBuilder
  (
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) 
    {
      const Offset begin = Offset(1.0, 0.0);
      const Offset end = Offset.zero;
      const Cubic curve = Curves.ease;

      Animatable<Offset> tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition
      (
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}