import 'package:flutter/material.dart';    // 引入Material组件库

import 'package:tieba_next/Core/Account.dart';
import 'package:tieba_next/Core/User.dart';
import 'package:tieba_next/Core/File.dart' as file;
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

  /// 保存用户信息到本地
  static Future<void> _save(Account account) async
  {
    try 
    {
      Map<String, dynamic> encryptedMap = account.toEncryptedMap();
      for (String key in encryptedMap.keys)
      {
        await file.saveMap(key, encryptedMap[key]);
      }
    }
    catch (error) { debugPrint("保存用户信息失败: $error"); }
  }

  /// 从本地加载用户信息
  /// 
  /// 如果文件不存在，则返回null
  static Future<Account?> _load() async
  {
    try
    {
      Map<String, dynamic> map = 
      {
        'BDUSS': await file.loadMap('BDUSS'),
        'STOKEN': await file.loadMap('STOKEN')
      };

      return Account.fromEncryptedMap(map);
    }
    catch (error)
    {
      debugPrint("加载用户信息失败: $error");
      return null;
    }
  }

  /// 从JSON文件中删除用户信息
  static Future<void> _remove(Account account) async
  {
    try 
    { 
      for (String key in account.toEncryptedMap().keys)
      {
        await file.removeMap(key);
      }
    }
    catch (error) { debugPrint("删除用户信息失败: $error"); }
  }

  /// 初始化用户
  static Future<void> init() async => _account = await _load();

  /// 获取当前用户
  Account? get account => _account;

  /// 设置当前用户
  /// 
  /// [account] - 要设置的用户
  Future<void> setAccount(Account? account) async
  {
    if (account == null) return;
    _account = account;
    await _save(account);
    notifyListeners();
  }

  /// 更新当前用户
  Future<void> updateAccount() async
  {
    if (_account == null) return;

    User? user = await api.getMyUserInfo(_account!.bduss, _account!.stoken);
    if (user == null) return;
    _account!.copy(user);
  
    notifyListeners();
  }

  /// 退出当前用户
  Future<void> removeAccount() async
  {
    if (_account == null) return;
    _account = null;
    await _remove(_account!);
    notifyListeners();
  }
}