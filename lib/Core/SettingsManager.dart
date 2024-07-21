import 'package:flutter/material.dart';

import 'package:tieba_next/Core/Settings.dart';
import 'package:tieba_next/Core/FileManager.dart';

class SettingsManager extends ChangeNotifier 
{
  /// 创建一个静态的私有实例
  static final SettingsManager _instance = SettingsManager._internal();
  /// 私有构造函数
  SettingsManager._internal();
  /// 提供一个工厂构造函数，返回唯一实例
  factory SettingsManager() => _instance;

  /// 创建一个静态的Settings实例
  static Settings _settings = Settings();
  /// 获取Settings实例
  Settings get settings => _settings;

  /// 保存单个设置到文件
  /// 
  /// [key] 要保存的设置名称
  /// 
  /// [value] 要保存的设置信息
  static Future<void> _saveOne(String key, String value) async
  {
    try { await FileManager.saveMap(key, value); }
    catch (error) { debugPrint('保存设置失败: $error'); }
  }

  /// 从文件中加载全部设置
  static Future<Settings> _load() async 
  { 
    final Map<String, String> map = Settings().toMap();

    try 
    {
      for (final String name in Settings.variableList)
      {
        String? value = await FileManager.loadMap(name);
        if (value != null) map[name] = value;
      }
      return Settings.fromMap(map);
    }
    catch (error) 
    { 
      debugPrint('加载设置失败: $error'); 
      return Settings(); 
    }
  }

  /// 从文件中删除全部设置
  static Future<void> _remove() async
  {
    try { for (final String name in Settings.variableList) { await FileManager.removeMap(name); } }
    catch (error) { debugPrint('删除设置失败: $error'); }
  } 

  /// 重置设置
  Future<void> reset() async
  {
    _settings.copy(Settings());
    notifyListeners();
    await _remove();
  }

  /// 初始化设置信息
  Future<void> init() async
  {
    _settings = await _load();
    notifyListeners();
  }

  /// 更改设置
  /// 
  /// [name] 要更改的设置名称
  /// 
  /// [settings] 要更改的设置信息
  Future<void> change(String name, Settings settings) async
  {
    final Map<String, String> map = settings.toMap();

    if (!Settings.variableList.contains(name))
    {
      debugPrint('设置名称错误: $name');
      return;
    }

    _settings.copy(settings);    // 更新设置信息
    notifyListeners();    // 通知监听器

    try { await _saveOne(name, map[name]!); }
    catch (error) { debugPrint('保存设置失败: $error'); }
  }
}