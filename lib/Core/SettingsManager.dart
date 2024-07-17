import 'package:flutter/material.dart';    // 引入Material组件库

import 'package:tieba_next/Core/Settings.dart';    // 引入Settings类

class SettingsManager extends ChangeNotifier 
{
  /// 创建一个静态的私有实例
  static final SettingsManager _instance = SettingsManager._internal();
  /// 私有构造函数
  SettingsManager._internal();
  /// 提供一个工厂构造函数，返回唯一实例
  factory SettingsManager() => _instance;

  /// 创建一个静态的Settings实例
  static final Settings _settings = Settings();
  /// 获取Settings实例
  Settings get settings => _settings;
}