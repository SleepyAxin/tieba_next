import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:tieba_next/Core/File.dart' as file;    // 引入文件操作

class ThemeManager extends ChangeNotifier 
{
  /// 创建一个静态的私有实例
  static final ThemeManager _instance = ThemeManager._internal();
  /// 私有构造函数
  ThemeManager._internal();
  /// 提供一个工厂构造函数，返回唯一实例
  factory ThemeManager() => _instance;

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

    try { await file.saveMap('themeMode', themeModeString); }
    catch (error) { debugPrint('保存主题模式失败: $error'); }
  }

  /// 从文件中加载主题模式
  static Future<ThemeMode> _load() async
  {
    try 
    {
      String? themeModeString = await file.loadMap('themeMode');

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