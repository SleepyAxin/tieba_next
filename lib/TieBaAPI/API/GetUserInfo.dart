import 'dart:convert';
import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:http/http.dart' as http;    // HTTP请求

import 'package:tieba_next/TieBaAPI/API/BasicURL.dart';

/// 获取用户信息
class GetUserInfo
{
  /// 获取本人基本用户信息
  /// 
  /// [bduss] 登录百度账号的bduss
  /// 
  /// [stoken] 登录百度账号的stoken
  static Future<Map<String, dynamic>?> mineBasic(String bduss, String stoken) async
  {
    const String url = '$webURL/f/user/json_userinfo';
    final String cookies = 'BDUSS=$bduss; STOKEN=$stoken';
    
    try 
    {
      final response = await http.get(Uri.parse(url), headers: {'cookie': cookies});
      if (response.statusCode == 200) return jsonDecode(response.body);
      return null;
    }
    catch (error)
    {
      debugPrint('获取本人基本用户信息失败: $error');
      return null;
    }
  }

  /// 获取本人详细用户信息
  /// 
  /// [bduss] 登录百度账号的bduss
  /// 
  /// [stoken] 登录百度账号的stoken
  static Future<Map<String, dynamic>?> mineDetail
  (String bduss, String stoken, int needUser, String referrer) async
  {
    final String url = '$webURL/mo/q/newmoindex?need_user=$needUser&referrer=$referrer';
    final String cookies = 'BDUSS=$bduss; STOKEN=$stoken';

    try 
    {
      final response = await http.get(Uri.parse(url), headers: {'cookie': cookies});
      if (response.statusCode == 200) return jsonDecode(response.body);
      return null;
    }
    catch (error)
    {
      debugPrint('获取本人详细用户信息失败: $error');
      return null;
    }
  }
}