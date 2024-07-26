import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tieba_next/Core/FileManager.dart';

/// 设备信息管理器
class DeviceManager
{
  /// 创建一个静态的私有实例
  static final DeviceManager _instance = DeviceManager._internal();

  /// 私有构造函数
  DeviceManager._internal();

  /// 提供一个工厂构造函数，返回唯一实例
  factory DeviceManager() => _instance;

  /// 设备信息
  static final Map<String, String> _device = 
  {
    'android_id': '',
    'cuid': '',
    'c3_aid': '',
    'client_logid': '',
    'cuid_gid': '',
    'cuid_galaxy2': '',
    'client_user_token': '',
    'X-Bd-Traceid': ''
  };

  /// 生成设备信息
  /// 
  /// [key] 设备信息的键
  static String _generate(String key)
  {
    switch (key)
    {
      // 长度为16的16进制字符串 包含8字节信息 字母为小写
      case 'android_id':
        final random = Random.secure();
        final bytes = List<int>.generate(8, (_) => random.nextInt(256));
        final hexString = bytes.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join();
        return hexString;
      default: return '';
    }
  }

  /// 保存设备信息到本地存储
  /// 
  /// [device] 设备信息
  static Future<void> _save(Map<String, String> device) async 
  {
    try 
    { 
      for (final String key in _device.keys) { await FileManager.saveMap(key, device[key]!); }
    }
    catch (error) { debugPrint('保存设备信息失败: $error'); }
  }

  /// 从本地存储加载设备信息
  static Future<Map<String, String>> _load() async 
  {
    Map<String, String> device = {..._device};

    try 
    { 
      for (final String key in device.keys) 
      { 
        final String? value = await FileManager.loadMap(key);
        value != null ? device[key] = value : device[key] = '';
      } 
    }
    catch (error) { debugPrint('加载设备信息失败: $error'); }

    return device;
  }

  /// 从本地存储移除设备信息
  static Future<void> _remove() async 
  {
    try { for (final String key in _device.keys) { await FileManager.removeMap(key); } }
    catch (error) { debugPrint('移除设备信息失败: $error'); }
  }

  /// 获取设备信息
  static Map<String, String> get device => Map.from(_device).remove('android_id');

  /// 初始化设备信息
  static Future<void> init() async
  {
    _device.addAll(await _load());

    for (final String key in _device.keys)
    {
      if (_device[key]!.isEmpty) _device[key] = _generate(key);
    }

    await _save(_device);
  }

  /// 从本地存储移除所有设备信息
  static Future<void> remove() async { await _remove(); }
}