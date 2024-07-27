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
      final Response response = await DioManager.webDio.get(url);
      if (response.statusCode == 200) return response.data;
      return null;
    }
    catch (error)
    {
      debugPrint('获取TBS失败: $error');
      return null;
    }
  }
}