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

  /// 保存单个设置到文件
  /// 
  /// [key] 要保存的设置名称
  /// 
  /// [value] 要保存的设置信息
  /// 
  /// [type] 要保存的数据类型
  static Future<void> _saveOne(String key, dynamic value, DataType type) async
  {
    try { await FileManager.saveMap(key, value, type: type); }
    catch (error) { debugPrint('保存设置失败: $error'); }
  }

  /// 从文件中加载全部设置
  static Future<Settings> _load() async 
  { 
    final Settings settings = Settings();

    try 
    {
      settings.showTopTip = await FileManager.loadMap('showSignTip', type: DataType.bool) 
      ?? settings.showTopTip;
      settings.topForums = await FileManager.loadMap('topForums', type: DataType.stringList) 
      ?? settings.topForums;
    }
    catch (error) { debugPrint('加载设置失败: $error'); }

    return settings;
  }

  /// 从文件中删除某项设置
  /// 
  /// [name] 要删除的设置名称
  static Future<void> _removeOne(String name) async
  {
    try { await FileManager.removeMap(name); }
    catch (error) { debugPrint('删除设置失败: $error'); }
  } 

  /// 从文件中删除全部设置
  static Future<void> _remove() async
  {
    try { for (final String name in Settings.variableList) { await FileManager.removeMap(name); } }
    catch (error) { debugPrint('删除设置失败: $error'); }
  }

  /// 初始化设置信息
  static Future<void> init() async => _settings = await _load();

  /// 重置设置
  Future<void> reset() async
  {
    _settings.copy(Settings());
    notifyListeners();
    await _remove();
  }

  /// 设置是否显示置顶提示
  set showTopTip(bool value)
  {
    _settings.showTopTip = value;
    notifyListeners();
    _saveOne('showTopTip', value, DataType.bool);
  }
  /// 获取是否显示置顶提示
  bool get showTopTip => _settings.showTopTip;

  /// 增加置顶贴吧
  /// 
  /// [name] 要置顶的贴吧名字
  void addTopForum(String name)
  {
    if (_settings.topForums.contains(name)) return;
    _settings.topForums.add(name); 
    _saveOne('topForums', _settings.topForums, DataType.stringList);
    notifyListeners();
  }
  /// 移除置顶贴吧
  /// 
  /// [name] 要移除置顶的贴吧名字
  void removeTopForum(String name) 
  {
    if (!_settings.topForums.contains(name)) return;
    _settings.topForums.remove(name);
    _settings.topForums.isNotEmpty
    ? _saveOne('topForums', _settings.topForums, DataType.stringList)
    : _removeOne('topForums');
    notifyListeners();
  }
  /// 获取用户置顶的贴吧列表
  List<String> get topForums => _settings.topForums;
}