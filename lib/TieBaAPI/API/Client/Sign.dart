import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:http/http.dart' as http;    // HTTP请求

import 'package:tieba_next/TieBaAPI/API/BasicData.dart';
import 'package:tieba_next/TieBaAPI/API/Util.dart';

/// 客户端签到吧
class Sign 
{
  static Future<void> one(String kw, String tbs) async 
  {
    const String url = '$clientURL/c/c/forum/sign';
    final String forumName = kw.replaceAll('%2B', '+');
    final String data = 'kw=$kw&tbs=$tbs&sign=${clientSign({'kw': kw, 'tbs': tbs})}';
    try 
    {
      final response = await http.post(Uri.parse(url), body: data);
      if (response.statusCode != 200) debugPrint('签到$forumName吧失败: ${response.body}');
    }
    catch (error) { debugPrint('签到$forumName吧失败: $error'); }
  }
}