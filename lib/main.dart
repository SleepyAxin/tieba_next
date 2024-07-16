import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:provider/provider.dart';    // 引入状态管理组件库

// 引入自定义的管理类
import 'package:tieba_next/Manager/AccountManager.dart';
import 'package:tieba_next/Manager/SettingsManager.dart';

import 'package:tieba_next/CreateRoute.dart';    // 引入路由

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  runApp
  (
    MultiProvider
    (
      providers: 
      [
        ChangeNotifierProvider(create: (_) => AccountManager()),    // 账号管理器
        ChangeNotifierProvider(create: (_) => SettingsManager())    // 设置管理器
      ],
      child: const MyApp()    // 运行应用
    )
  );
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) 
  {
    return Consumer<SettingsManager>
    (
      builder: (context, settingsManager, child)
      {
        return MaterialApp
        (
          theme: settingsManager.settings.lightTheme,    // 日间模式
          darkTheme: settingsManager.settings.darkTheme,    // 夜间模式
          // 如果手动切换，则使用设置的主题；如果自动切换，则使用系统主题
          themeMode: settingsManager.currentThemeMode,
          debugShowCheckedModeBanner: false,    // 隐藏调试标签
          home: const MainPage(),    // 主页
        );
      }
    );
  }
}
