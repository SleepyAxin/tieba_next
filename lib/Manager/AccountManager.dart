import 'package:flutter/material.dart';    // 引入Material组件库

import 'package:tieba_next/Core/Account.dart';
import 'package:tieba_next/Core/User.dart';
import 'package:tieba_next/Core/FileOperator.dart';
import 'package:tieba_next/Core/DataHandler.dart';
import 'package:tieba_next/TieBaAPI/TieBaAPI.dart' as api;    // 引入TieBaAPI

/// 用户信息管理器
class AccountManager extends ChangeNotifier
{
  /// 创建一个静态的私有实例
  static final AccountManager _instance = AccountManager._internal();

  /// 私有构造函数
  AccountManager._internal();

  /// 提供一个工厂构造函数，返回唯一实例
  factory AccountManager() => _instance;

  /// 当前用户（null代表无当前用户）
  static Account? _account;
  /// 存储用户信息的JSON文件路径
  static const String _accountJSONPath = "Account.json";

  /// 保存用户信息到JSON文件
  static Future<void> _save(Account? account) async
  {
    try 
    {
      String bduss = DataHandler.encrypt(account!.bduss!);
      String stoken = DataHandler.encrypt(account.stoken!);
      await FileOperator.saveJSON(Account(bduss, stoken).toMap(), _accountJSONPath);
    }
    catch (error) { debugPrint("保存用户信息失败: $error"); }
  }

  /// 从JSON文件中加载用户信息
  /// 
  /// 如果文件不存在，则返回null
  static Future<Account?> _load() async
  {
    try
    {
      Map<String, dynamic>? accountMap = await FileOperator.loadJSON(_accountJSONPath);
      if (accountMap == null) return null;
      String bduss = DataHandler.decrypt(accountMap['bduss']);
      String stoken = DataHandler.decrypt(accountMap['stoken']);
      return Account(bduss, stoken);
    }
    catch (error)
    {
      debugPrint("加载用户信息失败: $error");
      return null;
    }
  }

  /// 从JSON文件中删除用户信息
  static Future<void> _remove() async
  {
    try { await FileOperator.removeJSON(_accountJSONPath); }
    catch (error) { debugPrint("删除用户信息失败: $error"); }
  }

  /// 初始化用户
  Future<void> init() async
  {
    _account = await _load();
  }

  /// 获取当前用户
  Account? get account => _account;

  /// 设置当前用户
  /// 
  /// [account] - 要设置的用户
  Future<void> setAccount(Account account) async
  {
    _account = account;
    await _save(account);
    notifyListeners();
  }

  /// 更新当前用户
  Future<void> updateAccount() async
  {
    if (_account == null) return;

    // 更新用户信息
    User? user = await api.getMyUserInfo(_account!.bduss, _account!.stoken);
    if (user == null) return;
    _account!.copy(user);
  
    notifyListeners();
  }

  /// 退出当前用户
  Future<void> removeAccount() async
  {
    _account = null;
    await _remove();
    notifyListeners();
  }
}