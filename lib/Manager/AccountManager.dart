import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:tieba_next/Core.dart';

/// 用户信息管理器
class AccountManager with ChangeNotifier
{
  /// 创建一个静态的私有实例
  static final AccountManager _instance = AccountManager._internal();

  /// 私有构造函数
  AccountManager._internal();

  /// 提供一个工厂构造函数，返回唯一实例
  factory AccountManager() => _instance;

  /// 当前用户（null代表无当前用户）
  static late Account? _account;
  /// 存储用户信息的JSON文件路径
  static const String _accountJSONPath = "Account.json";

  /// 保存用户信息到JSON文件
  static Future<void> _save() async
  {
    try 
    {
      Map<String, dynamic> accountMap = _account!.toMap();
      await FileOperator.saveJSON(accountMap, _accountJSONPath);
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
      return accountMap == null ? null : Account.fromMap(accountMap);
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
  void init() async
  {
    _account = await _load();
    notifyListeners();
  }

  /// 获取当前用户
  Account? get account => _account;

  /// 设置当前用户
  /// 
  /// [account] - 要设置的用户
  void setAccount(Account account) async
  {
    _account = account;
    await _save();
    notifyListeners();
  }

  /// 更新当前用户
  /// 
  /// [account] - 要更新的用户
  void updateAccount(Account account) async
  {
    _account = account;
    await _remove();
    await _save();
    notifyListeners();
  }

  /// 退出当前用户
  void removeAccount() async
  {
    _account = null;
    await _remove();
    notifyListeners();
  }
}