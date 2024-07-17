import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:shared_preferences/shared_preferences.dart';    // 引入本地存储库

/// 保存键值对到本地
/// 
/// [key] - 属性名字
/// 
/// [value] - 属性值
Future<void> saveMap(String key, String value) async
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
Future<String?> loadMap(String key) async
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
Future<void> removeMap(String key) async
{
  try
  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }
  catch (error) { debugPrint('文件删除失败: $error'); }
}