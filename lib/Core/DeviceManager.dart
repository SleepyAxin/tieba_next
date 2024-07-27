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
    'cuid': '',
    'cuid_galaxy2': '',
    'c3_aid': '',
    'client_logid': '',
    'client_user_token': '',
  };

  /// 生成设备信息
  /// 
  /// [key] 设备信息的键
  static String _generate(String key)
  {
    final Random random = Random.secure();
    const String numStr = '123456789';
    const String hexStr = '123456789ABCDEF';
    const String charStr = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789';

    // 随机生成设备信息
    switch (key)
    {
      // 长度为40的字符串，前32位为16进制字符，后8位为大写字母，用|分隔
      // 例如 A3ED2D7B9CFC28E8934A3FBD3A9579C7|VZ5FKB5XS
      case 'cuid' || 'cuid_galaxy2':
        if (_device['cuid']!.isNotEmpty) return _device['cuid']!;
        if (_device['cuid_galaxy2']!.isNotEmpty) return _device['cuid_galaxy2']!;
        final str1 = List<String>.generate(32, (_) => hexStr[random.nextInt(hexStr.length)]);
        final str2 = List<String>.generate(8, (_) => charStr[random.nextInt(charStr.length)]);
        return '${str1.join()}|V${str2.join()}';
      // 长度为45的字符串，前3位为A00，中32位和后8位为大写字母和数字字符，用-分隔
      // 例如 A00-ZNU3O3EP74D727LMQY745CZSGZQJQZGP-3JXCKC7X
      case 'c3_aid':
        final str1 = List<String>.generate(32, (_) => hexStr[random.nextInt(hexStr.length)]);
        final str2 = List<String>.generate(8, (_) => charStr[random.nextInt(charStr.length)]);
        return 'A00-${str1.join()}-${str2.join()}';
      // 长度为13的数字字符串
      // 例如 1711934586258
      case 'client_logid':
        final bytes = List<String>.generate(12, (_) => numStr[random.nextInt(numStr.length)]);
        return '1${bytes.join()}';
      // 长度为10的数字字符串
      // 例如 2263459668
      case 'client_user_token':
        final bytes = List<int>.generate(10, (_) => random.nextInt(10));
        return bytes.join();
      default: return '';
    }
  }

  /// 保存设备信息到本地存储
  /// 
  /// [name] 设备信息的键
  /// 
  /// [value] 设备信息的值
  static Future<void> _saveOne(String name, String value) async 
  {
    try { await FileManager.saveMap(name, value); }
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
  static Map<String, String> get device => _device;

  /// 初始化设备信息
  static Future<void> init() async
  {
    _device.addAll(await _load());

    for (final String key in _device.keys)
    {
      if (_device[key]!.isEmpty)
      {
        _device[key] = _generate(key);
        await _saveOne(key, _device[key]!);
      }
    }
  }

  /// 从本地存储移除所有设备信息
  static Future<void> remove() async { await _remove(); }
}