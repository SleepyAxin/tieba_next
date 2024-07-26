import 'package:flutter/material.dart';
import 'package:tieba_next/Core/FileManager.dart';

class ThemeManager extends ChangeNotifier 
{
  /// 创建一个静态的私有实例
  static final ThemeManager _instance = ThemeManager._internal();

  /// 私有构造函数
  ThemeManager._internal();

  /// 提供一个工厂构造函数，返回唯一实例
  factory ThemeManager() => _instance;

  /// 日间主题
  static final ThemeData lightTheme = ThemeData
  (
    brightness: Brightness.light,    // 日间模式
    colorScheme: ColorScheme.fromSeed
    (
      brightness: Brightness.light,    // 日间模式
      seedColor: Colors.white,    // 用于生成整个色彩方案的种子颜色
      primary: Colors.white,    // 应用的主色
      onPrimary: Colors.black,    // 主要颜色上的文本颜色
      secondary: Colors.grey[100],    // 辅助颜色
      onSecondary: Colors.grey[600],    // 辅助颜色上的文本颜色
      surface: Colors.white,    // 应用的背景色
      onSurface: Colors.black,    // 背景上的文本颜色
    ),
    useMaterial3: true    // 使用Material 3组件
  );

  /// 夜间主题
  static final ThemeData darkTheme = ThemeData
  (
    brightness: Brightness.dark,    // 夜间模式
    colorScheme: ColorScheme.fromSeed
    (
      brightness: Brightness.dark,    // 夜间模式
      seedColor: Colors.black,    // 用于生成整个色彩方案的种子颜色
      primary: Colors.grey[850],    // 应用的主色
      onPrimary: Colors.white,    // 主要颜色上的文本颜色
      secondary: Colors.grey[850],    // 辅助颜色
      onSecondary: Colors.grey[200],    // 辅助颜色上的文本颜色
      surface: Colors.grey[900],    // 应用的背景色
      onSurface: Colors.white,    // 背景上的文本颜色
    ),
    useMaterial3: true    // 使用Material 3组件
  );

  /// 当前主题
  static ThemeMode _themeMode = ThemeMode.system;

  /// 保存当前主题模式
  /// 
  /// [themeMode] 主题模式
  static Future<void> _save(ThemeMode themeMode) async
  {
    String themeModeString = 'system';
    
    switch (themeMode)
    {
      case ThemeMode.system: themeModeString = 'system'; break;
      case ThemeMode.light: themeModeString = 'light'; break;
      case ThemeMode.dark: themeModeString = 'dark'; break;
      default: break;
    }

    try { await FileManager.saveMap('themeMode', themeModeString); }
    catch (error) { debugPrint('保存主题模式失败: $error'); }
  }

  /// 从文件中加载主题模式
  static Future<ThemeMode> _load() async
  {
    try 
    {
      String? themeModeString = await FileManager.loadMap('themeMode');

      switch (themeModeString)
      {
        case 'system': return ThemeMode.system;
        case 'light': return ThemeMode.light;
        case 'dark': return ThemeMode.dark;
        default: return ThemeMode.system;
      }
    }
    catch (error) 
    { 
      debugPrint('加载主题模式失败: $error'); 
      return ThemeMode.system; 
    }
  }

  /// 初始化主题配置
  static Future<void> init() async => _themeMode = await _load();

  /// 设置当前主题
  /// 
  /// [themeMode] 主题模式
  set themeMode(ThemeMode themeMode)
  {
    _themeMode = themeMode;
    _save(_themeMode);
    notifyListeners();
  }

  /// 获取当前主题模式
  ThemeMode get themeMode => _themeMode;
}