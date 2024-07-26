import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// 管理文件的读取和存储
class FileManager
{
  /// 创建一个静态的私有实例
  static final FileManager _instance = FileManager._internal();

  /// 私有构造函数
  FileManager._internal();

  /// 提供一个工厂构造函数，返回唯一实例
  factory FileManager() => _instance;

  /// SharedPreferences 实例
  static SharedPreferences? _prefs;

  /// 初始化 SharedPreferences 实例
  static Future<void> _init() async => _prefs = await SharedPreferences.getInstance();

  /// 保存键值对到本地
  /// 
  /// [key] - 属性名字
  /// 
  /// [value] - 属性值
  static Future<void> saveMap(String key, String value) async
  {
    try 
    {
      if (_prefs == null) await _init();
      await _prefs!.setString(key, value);
    }
    catch (error) { debugPrint('文件保存失败: $error'); }
  } 

  /// 从本地读取键值对
  /// 
  /// [key] - 属性名字
  static Future<String?> loadMap(String key) async
  {
    try 
    {
      if (_prefs == null) await _init();
      return _prefs!.getString(key);
    }
    catch (error)
    {
      debugPrint('文件读取失败: $error');
      return null;
    }
  }

  /// 删除存储在本地的键值对
  /// 
  /// [key] - 属性名字
  static Future<void> removeMap(String key) async
  {
    try
    {
      if (_prefs == null) await _init();
      await _prefs!.remove(key);
    }
    catch (error) { debugPrint('文件删除失败: $error'); }
  }
}