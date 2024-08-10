import 'package:flutter/material.dart';
import 'package:tieba_next/TieBaAPI/API/DioManager.dart';

/// 获取帖子列表
class Thread
{
  /// 获取本人发的帖子
  static Future<Map<String, dynamic>?> mine(int pn, int rn) async
  {
    const String url = '/mg/o/userpost';
    final String params = '?pn=$pn&rn=$rn&is_thread=1';

    try 
    {
      final res = await DioManager.webDio.get(url + params);
      if (res.statusCode == 200) return res.data;
      debugPrint('获取本人发帖信息失败: $res');
    }
    catch (error) { debugPrint('获取本人发帖信息失败: $error'); }
    return null;
  }
}