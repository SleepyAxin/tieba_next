import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:tieba_next/Core/Core.dart';

/// 用户信息管理器
class AccountManager with ChangeNotifier
{
  /// 创建一个静态的私有实例
  static final AccountManager _instance = AccountManager._internal();

  /// 用户列表
  static List<Account> _accountList = [];

  /// 私有构造函数
  AccountManager._internal();

  /// 提供一个工厂构造函数，返回唯一实例
  factory AccountManager() => _instance;
}