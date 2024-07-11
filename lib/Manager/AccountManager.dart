import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:tieba_next/Core.dart';
import 'package:tieba_next/TieBaAPI/TieBaAPI.dart';    // 引入TieBaAPI

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
  static Future<void> init() async => _account = await _load();

  /// 获取当前用户
  Account? get account => _account;

  /// 设置当前用户
  /// 
  /// [account] - 要设置的用户
  Future<void> setAccount(Account account) async
  {
    _account = account;
    await _save();
    notifyListeners();
  }

  /// 更新当前用户
  /// 
  /// [account] - 要更新的用户
  Future<void> updateAccount() async
  {
    if (_account == null) return;
    String? bduss = _account?.bduss;
    String? stoken = _account?.stoken;
    _account = null;    // 清空当前用户
    // 更新用户信息
    Map<String, dynamic>? info = await TieBaAPI.getMyUserInfo(bduss, stoken);
    _account = Account(bduss: bduss, stoken: stoken);
    _account?.portrait = info?['data']['user_portrait'] ?? _account?.portrait;
    _account?.name = info?['data']['user_name_weak'] ?? _account?.name;
    _account?.username = info?['data']['user_name_weak'] ?? _account?.username;
    _account?.nickname = info?['data']['show_nickname'] ?? _account?.nickname;
    await _remove();    // 删除用户信息  
    await _save();    // 重新保存用户信息
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