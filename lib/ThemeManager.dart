import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier 
{
  bool _isDarkMode = false;     // 默认日间模式
  bool _isEnabled = false;      // 默认不启用主题切换

  /// 日间主题
  static final lightTheme = ThemeData
  (
    brightness: Brightness.light,    // 日间模式
    colorScheme: ColorScheme.fromSeed
    (
      brightness: Brightness.light,
      seedColor: Colors.white,    // 用于生成整个色彩方案的种子颜色
      primary: Colors.white,    // 应用的主色
      onPrimary: Colors.black,    // 主要颜色上的文本颜色
      surface: Colors.white,    // 应用的背景色
      onSurface: Colors.black,    // 背景上的文本颜色
    ),
    useMaterial3: true    // 使用Material 3组件
  );

  /// 夜间主题
  static final darkTheme = ThemeData
  (
    brightness: Brightness.dark,    // 夜间模式
    colorScheme: ColorScheme.fromSeed
    (
      brightness: Brightness.dark,
      seedColor: Colors.black,    // 用于生成整个色彩方案的种子颜色
      primary: Colors.grey[900],    // 应用的主色
      onPrimary: Colors.white,    // 主要颜色上的文本颜色
      surface: Colors.grey[850],    // 应用的背景色
      onSurface: Colors.white,    // 背景上的文本颜色
    ),
    useMaterial3: true    // 使用Material 3组件
  );

  /// 启用或禁用主题切换
  /// 
  /// [isEnabled] 是否启用主题切换
  void toggleThemeEnabled(bool isEnabled)
  {
    _isEnabled = isEnabled;
    notifyListeners();    // 通知监听器主题切换已启用/禁用
  }

  /// 切换主题
  /// 
  /// [isDark] 是否启用夜间模式
  void toggleThemeMode(bool isDark) 
  {
    _isDarkMode = isDark;
    notifyListeners();    // 通知监听器主题已更改
  }

  /// 当前主题
  bool get isDarkMode => _isDarkMode;

  /// 启用或禁用主题切换
  bool get isEnabled => _isEnabled;

  /// 当前主题
  ThemeMode get currentThemeMode => _isDarkMode ? ThemeMode.dark : ThemeMode.light;
}