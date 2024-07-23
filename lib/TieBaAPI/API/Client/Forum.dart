import 'dart:convert';
import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:http/http.dart' as http;    // HTTP请求

import 'package:tieba_next/TieBaAPI/API/BasicData.dart';
import 'package:tieba_next/TieBaAPI/API/Util.dart';

/// 获取吧数据
class Forum
{
  /// 获取本人关注的贴吧列表
  static Future<Map<String, dynamic>?> mylikes(String bduss, int pn) async
  {
    const String url = '$clientURL/c/f/forum/favolike';
    final Map<String ,String> data = { 'BDUSS': bduss, 'pn': pn.toString()};
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

  /// 签到某个吧
  static Future<void> sign(String bduss, String forumName, int forumID, String tbs) async 
  {
    const String url = '$clientURL/c/f/forum/like';
    final Map<String, String> data = 
    {
      "BDUSS": bduss,
      "_client_id": "wappc_1534235498291_488",
      "from": "1008621y",
      "page_no": "1",
      "page_size": "200",
      "timestamp": DateTime.now().millisecondsSinceEpoch.toString(),
      "vcode_tag": "11",
      "_client_type": "2",
      "_client_version": "9.7.8.0",
      "_phone_imei": "000000000000000",
      "model": "MI+5",
      "net_type": "1"
    };
    final header = 
    {  
      "User-Agent": "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36",
    };

    try 
    {
      final response = await http.post(Uri.parse(url),headers: header, body: clientSign(data));
      debugPrint('签到$forumName吧成功: ${response.body}');
      if (response.statusCode != 200) debugPrint('签到$forumName吧失败: ${response.body}');
    }
    catch (error) { debugPrint('签到$forumName吧失败: $error'); }
  }
}