import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:shared_preferences/shared_preferences.dart';    // 引入本地存储库

/// 对数据进行文件的读写操作
class File 
{
  /// 保存键值对到本地
  /// 
  /// [key] - 属性名字
  /// 
  /// [value] - 属性值
  static Future<bool> saveMap(String key, String value) async
  {
    try 
    {
      // 初始化 
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      // 保存数据
      await prefs.setString(key, value);
      return true;
    }
    catch (error)
    {
      debugPrint('文件保存失败: $error');
      return false;
    }
  } 

  /// 从本地读取键值对
  /// 
  /// [key] - 属性名字
  static Future<String> loadMap(String key) async
  {
    try 
    {
      // 初始化
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      // 读取数据
      return prefs.getString(key) ?? '';
    }
    catch (error)
    {
      debugPrint('文件读取失败: $error');
      return '';
    }
  }

  /// 删除存储在本地的键值对
  /// 
  /// [key] - 属性名字
  static Future<bool> removeMap(String key) async
  {
    try
    {
      // 初始化
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      // 删除数据
      await prefs.remove(key);
      return true;
    }
    catch (error)
    {
      debugPrint('文件删除失败: $error');
      return false;
    }
  }
}