import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:provider/provider.dart';    // 引入状态管理组件库
import 'package:tieba_next/Manager/ThemeManager.dart';    // 引入主题管理类
import 'package:tieba_next/Page/MainPage.dart';    // 引入自定义的首页类

void main() 
{
  WidgetsFlutterBinding.ensureInitialized(); 
  runApp
  (
    MultiProvider
    (
      providers: [ChangeNotifierProvider(create: (_) => ThemeManager())],
      child: const MyApp(),
    ),
  ); 
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) 
  {
    return Consumer<ThemeManager>
    (
      builder: (context, themeManager, child)
      {
        return MaterialApp
        (
          theme: ThemeManager.lightTheme,    // 日间模式
          darkTheme: ThemeManager.darkTheme,    // 夜间模式
          // 如果手动切换，则使用设置的主题；如果自动切换，则使用系统主题
          themeMode: themeManager.isEnabled ? themeManager.currentThemeMode : ThemeMode.system,
          home: const MainPage()    // 主界面
        );
      }
    );
  }
}
