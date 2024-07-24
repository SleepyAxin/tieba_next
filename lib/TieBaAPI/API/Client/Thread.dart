import 'dart:convert';
import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:http/http.dart' as http;    // HTTP请求

import 'package:tieba_next/TieBaAPI/API/BasicData.dart';

/// 获取帖子列表
class Thread
{
  /// 获取主页推荐帖
  static Future<Map<String, dynamic>?> recommend(String bduss, int count, int pn) async
  {
    const String url = '$clientURL/c/f/excellent/personalized';

    final Map<String, dynamic> data = 
    {
      "BDUSS": bduss,
      "page_thread_count": count,
      "pn": pn,
      "pre_ad_thread_count": 0,
      "request_time": DateTime.now().millisecondsSinceEpoch,
      "invoke_source": "",
      "load_type": 1,
      "_client_version": clientVersion,
    };
    // data['sign'] = clientSign(data);

    try 
    {
      final response = await http.post
      (
        Uri.parse(url),
        headers: 
        {
          // 'User-Agent': chromeUA,
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: jsonEncode(data)
      );
      if (response.statusCode == 200) return jsonDecode(response.body);
      return null;
    }
    catch (error)
    {
      debugPrint('获取主页推荐帖失败: $error');
      return null;
    }
  }
}