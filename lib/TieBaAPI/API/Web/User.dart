import 'package:flutter/material.dart';
import 'package:tieba_next/TieBaAPI/API/DioManager.dart';

/// 获取用户信息
class User
{
  /// 获取本人详细用户信息
  static Future<Map<String, dynamic>?> mineDetail() async
  {
    const String url = '/mo/q/newmoindex';
    const String params = '?need_user=1&referrer=f';

    try 
    {
      final Response res = await DioManager.webDio.get(url + params);
      if (res.statusCode == 200) return res.data;
      debugPrint('获取本人详细用户信息失败: $res');
    }
    catch (error) { debugPrint('获取本人详细用户信息失败: $error'); }
    return null;
  }
}