import 'package:flutter/material.dart';    // 引入Material组件库

class Settings 
{
  // 主题

  /// 日间主题
  final ThemeData lightTheme = ThemeData
  (
    brightness: Brightness.light,    // 日间模式
    colorScheme: ColorScheme.fromSeed
    (
      brightness: Brightness.light,    // 日间模式
      seedColor: Colors.white,    // 用于生成整个色彩方案的种子颜色
      primary: Colors.white,    // 应用的主色
      onPrimary: Colors.black,    // 主要颜色上的文本颜色
      secondary: Colors.grey[100],    // 辅助颜色
      surface: Colors.white,    // 应用的背景色
      onSurface: Colors.black,    // 背景上的文本颜色
    ),
    useMaterial3: true    // 使用Material 3组件
  );
  /// 夜间主题
  final ThemeData darkTheme = ThemeData
  (
    brightness: Brightness.dark,    // 夜间模式
    colorScheme: ColorScheme.fromSeed
    (
      brightness: Brightness.dark,    // 夜间模式
      seedColor: Colors.black,    // 用于生成整个色彩方案的种子颜色
      primary: Colors.grey[850],    // 应用的主色
      onPrimary: Colors.white,    // 主要颜色上的文本颜色
      secondary: Colors.grey[850],    // 辅助颜色
      surface: Colors.grey[900],    // 应用的背景色
      onSurface: Colors.white,    // 背景上的文本颜色
    ),
    useMaterial3: true    // 使用Material 3组件
  );
  /// 是否开启主题手动切换 - 默认：false
  bool isThemeManual = false;
  /// 当前主题是否为夜间 - 默认：false
  bool isDarkTheme = false;
}