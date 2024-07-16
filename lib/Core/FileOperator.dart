import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:shared_preferences/shared_preferences.dart';    // 引入本地存储库
import 'package:path_provider/path_provider.dart';    // 引入路径库

/// 对数据进行文件的读写操作
class FileOperator 
{
  /// 获取本地存储路径
  static Future<String> get _localPath async => (await getApplicationDocumentsDirectory()).path;

  /// 保存键值对到本地
  /// 
  /// [key] - 属性名字
  /// 
  /// [value] - 属性值
  static Future<void> saveMap(String key, String value) async
  {
    try 
    {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await removeMap(key);
      await prefs.setString(key, value);
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
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getString(key);
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
      // 初始化
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      // 删除数据
      await prefs.remove(key);
    }
    catch (error) { debugPrint('文件删除失败: $error'); }
  }

  /// 保存JSON数据到本地
  /// 
  /// [data] - JSON数据
  /// 
  /// [fileName] - 文件名字
  static Future<void> saveJSON(Map<String, dynamic> data, String fileName) async 
  {
    try 
    {
      final File file = File('${await _localPath}/$fileName');
      file.writeAsString(jsonEncode(data));
    }
    catch (error) { debugPrint('文件保存失败: $error'); }
  }

  /// 从本地读取JSON数据
  /// 
  /// [fileName] - 文件名字
  static Future<Map<String, dynamic>?> loadJSON(String fileName) async 
  {
    try 
    {
      final File file = File('${await _localPath}/$fileName');
      final contents = await file.readAsString();
      return jsonDecode(contents);
    } 
    catch (error) 
    {
      debugPrint('文件读取失败: $error');
      return null;
    }
  }

  /// 删除本地JSON文件
  /// 
  /// [fileName] - 文件名字
  static Future<void> removeJSON(String fileName) async
  {
    try
    {
      final File file = File('${await _localPath}/$fileName');
      file.delete();
    }
    catch (error) { debugPrint('文件删除失败: $error'); }
  }
}