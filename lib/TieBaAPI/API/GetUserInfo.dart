import 'dart:convert';
import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:http/http.dart' as http;    // HTTP请求

import 'package:tieba_next/TieBaAPI/API/AbstractAPI.dart';

class GetUserInfo extends AbstractAPI 
{
  static const String _myInfoURL = '${AbstractAPI.webURL}/f/user/json_userinfo';

  /// 获取本人用户信息
  /// 
  /// [bduss] 登录百度账号的bduss
  /// 
  /// [stoken] 登录百度账号的stoken
  static Future<Map<String, dynamic>?> getMine(String bduss, String stoken) async
  {
    final String cookies = 'BDUSS=$bduss; STOKEN=$stoken';
    
    try 
    {
      final response = await http.get(Uri.parse(_myInfoURL), headers: {'cookie': cookies});
      if (response.statusCode == 200) return jsonDecode(response.body);
      return null;
    }
    catch (error)
    {
      debugPrint('获取本人用户信息失败: $error');
      return null;
    }
  }
}