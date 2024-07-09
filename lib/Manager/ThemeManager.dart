import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:tieba_next/Core/ThemeConfiguration.dart';    // 引入主题配置文件

/// 主题管理器
class ThemeManager with ChangeNotifier 
{
  /// 创建一个静态的私有实例
  static final ThemeManager _instance = ThemeManager._internal();

  /// 是否启用夜间模式
  bool _isDarkMode = false;     // 默认日间模式
  
  /// 是否启用主题切换
  bool _isEnabled = false;      // 默认不启用主题切换

  /// 私有构造函数
  ThemeManager._internal();

  /// 提供一个工厂构造函数，返回唯一实例
  factory ThemeManager() => _instance;

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

  /// 获取日间主题
  static ThemeData get lightTheme => ThemeConfiguration.lightTheme;

  /// 获取夜间主题
  static ThemeData get darkTheme => ThemeConfiguration.darkTheme;

  /// 当前主题是否为夜间
  bool get isDarkMode => _isDarkMode;

  /// 是否启用主题切换
  bool get isEnabled => _isEnabled;

  /// 当前主题
  ThemeMode get currentThemeMode => _isDarkMode ? ThemeMode.dark : ThemeMode.light;
}