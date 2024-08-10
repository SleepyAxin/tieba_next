import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tieba_next/TieBaAPI/API/DioManager.dart';    // HTTP请求

/// 获取TBS
class TBS
{
  /// 登录状态下获取TBS
  static Future<Map<String, dynamic>?> get() async
  {
    const String url = '/dc/common/tbs';

    try 
    {
      final Response res = await DioManager.webDio.get(url);
      if (res.statusCode == 200) return jsonDecode(res.data);
      debugPrint('获取TBS失败: $res');
    }
    catch (error) { debugPrint('获取TBS失败: $error'); }
    return null;
  }
}