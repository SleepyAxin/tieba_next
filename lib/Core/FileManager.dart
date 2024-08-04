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
  /// 
  /// [type] - 属性值的类型，默认为字符串
  static Future<void> saveMap(String key, dynamic value, { DataType type = DataType.string }) async
  {
    try 
    {
      if (_prefs == null) await _init();
      switch (type)
      {
        case DataType.int: await _prefs!.setInt(key, value); break;
        case DataType.double: await _prefs!.setDouble(key, value); break;
        case DataType.bool: await _prefs!.setBool(key, value); break;
        case DataType.string: await _prefs!.setString(key, value); break;
        case DataType.stringList: await _prefs!.setStringList(key, value); break; 
      }
    }
    catch (error) { debugPrint('文件保存失败: $error'); }
  } 

  /// 从本地读取键值对
  /// 
  /// [key] - 属性名字
  /// 
  /// [type] - 属性值的类型，默认为字符串
  static Future<dynamic> loadMap(String key, { DataType type = DataType.string }) async
  {
    try 
    {
      if (_prefs == null) await _init();
      switch (type)
      {
        case DataType.int: return _prefs!.getInt(key);
        case DataType.double: return _prefs!.getDouble(key);
        case DataType.bool: return _prefs!.getBool(key);
        case DataType.string: return _prefs!.getString(key);
        case DataType.stringList: return _prefs!.getStringList(key);
      }
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

/// 存储的数据类型枚举
enum DataType 
{
  /// 整数
  int, 
  /// 小数
  double, 
  /// 布尔值
  bool, 
  /// 字符串
  string, 
  /// 字符串列表
  stringList
}