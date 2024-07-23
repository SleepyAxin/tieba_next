import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:provider/provider.dart';    // 引入状态管理组件库

import 'package:tieba_next/Core/AccountManager.dart';
import 'package:tieba_next/Core/Theme.dart' as theme;
import 'package:tieba_next/Core/ThemeManager.dart';
import 'package:tieba_next/Core/SettingsManager.dart';

import 'package:tieba_next/CreateRoute.dart';    // 引入路由

void main() //async
{
  WidgetsFlutterBinding.ensureInitialized();
  runApp
  (
    MultiProvider
    (
      providers: 
      [
        ChangeNotifierProvider(create: (context) => AccountManager()),    // 账号管理器
        ChangeNotifierProvider(create: (context) => ThemeManager()),      // 主题管理器
        ChangeNotifierProvider(create: (context) => SettingsManager())    // 设置管理器
      ],
      child: const MyApp()    // 运行应用
    )
  );
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  Future<void> _initData() async
  {
    final List<Future<void>> futures = 
    [
      AccountManager().init(), 
      ThemeManager().init(),
      SettingsManager().init()
    ];
    await Future.wait(futures);    // 等待所有异步操作完成
    AccountManager().updateAccount();
  }

  Consumer<ThemeManager> _showPage(Widget page)
  {
    return Consumer<ThemeManager>
    (
      builder: (context, themeManager, child)
      {
        return MaterialApp
        (
          theme: theme.lightTheme,    // 日间模式
          darkTheme: theme.darkTheme,    // 夜间模式
          // 如果手动切换，则使用设置的主题；如果自动切换，则使用系统主题
          themeMode: themeManager.themeMode,
          debugShowCheckedModeBanner: false,    // 隐藏调试标签
          home: page,    // 主页
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) 
  {
    return FutureBuilder<void>
    (
      future: _initData(),
      builder: (context, snapshot) => snapshot.connectionState == ConnectionState.done
      ? _showPage(const MainPage())    // 初始化完成，显示主页
      : _showPage(const LoadingScreenPage()),    // 初始化未完成，显示加载页面
    );
  }
}
