import 'dart:convert';
import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:http/http.dart' as http;    // HTTP请求

import 'package:tieba_next/TieBaAPI/API/BasicData.dart';

/// 获取吧数据列表
class Forums
{
  /// 获取本人关注的贴吧列表
  static Future<Map<String, dynamic>?> mylikes
  (String bduss, String stoken, int st, int pn, int rn) async
  {
    final String url = '$webURL/mg/o/getForumHome?st=$st&pn=$pn&rn=$rn';
    final String cookies = 'BDUSS=$bduss; STOKEN=$stoken';

    try 
    {
      final response = await http.get(Uri.parse(url), headers: {'cookie': cookies});
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