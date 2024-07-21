import 'dart:convert';
import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:http/http.dart' as http;    // HTTP请求

import 'package:tieba_next/TieBaAPI/API/BasicData.dart';
import 'package:tieba_next/TieBaAPI/API/Util.dart';

/// 获取吧数据列表
class Forums
{
  /// 获取本人关注的贴吧列表
  static Future<Map<String, dynamic>?> mylikes(String bduss, int pn) async
  {
    const String url = '$clientURL/c/f/forum/favolike';
    final Map<String ,dynamic> data = { 'BDUSS': bduss, 'pn': pn};
    data['sign'] = clientSign(data);

    try 
    {
      final response = await http.post(Uri.parse(url), body: jsonEncode(data));
      if (response.statusCode == 200) return jsonDecode(response.body);
      return null;
    }
    catch (error)
    {
      debugPrint('获取本人关注贴吧列表失败: $error');
      return null;
    }
  }
}