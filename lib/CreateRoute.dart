import 'package:flutter/material.dart';    // 引入Material组件库

export 'package:tieba_next/Page/About.dart';               // 引入关于页面
export 'package:tieba_next/Page/Favorite.dart';            // 引入我的收藏页面
export 'package:tieba_next/Page/Forums.dart';              // 引入吧内页面
export 'package:tieba_next/Page/History.dart';             // 引入浏览历史页面
export 'package:tieba_next/Page/Home.dart';                // 引入主页页面
export 'package:tieba_next/Page/LaterOn.dart';             // 引入稍后再看页面
export 'package:tieba_next/Page/LoginWeb.dart';            // 引入登录网页页面
export 'package:tieba_next/Page/MainPage.dart';            // 引入主页面
export 'package:tieba_next/Page/Message.dart';             // 引入消息页面
export 'package:tieba_next/Page/Person.dart';              // 引入我的页面
export 'package:tieba_next/Page/Settings.dart';            // 引入设置页面
export 'package:tieba_next/Page/User.dart';                // 引入个人资料页面

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