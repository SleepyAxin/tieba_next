import 'dart:convert';
import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:http/http.dart' as http;    // HTTP请求

import 'package:tieba_next/TieBaAPI/API/BasicData.dart';

/// 获取帖子列表
class Thread
{
  /// 获取本人发的帖子
  static Future<Map<String, dynamic>?> mine(String bduss, String stoken, int pn, int rn) async
  {
    final String url = '$webURL/mg/o/userpost?pn=$pn&rn=$rn&is_thread=1';
    final String cookies = 'BDUSS=$bduss; STOKEN=$stoken';

    try 
    {
      final response = await http.get(Uri.parse(url), headers: {'cookie': cookies});
      if (response.statusCode == 200) return jsonDecode(response.body);
      return null;
    }
    catch (error)
    {
      debugPrint('获取本人发帖信息失败: $error');
      return null;
    }
  }
}