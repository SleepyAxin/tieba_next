import 'dart:convert';
import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:http/http.dart' as http;    // HTTP请求
import 'package:tieba_next/TieBaAPI/API/BasicData.dart';

/// 获取TBS
class TBS
{
  static const String _url = '$webURL/dc/common/tbs/';
  /// 最新的TBS
  static String? _tbs;
  /// 上次获取TBS的时间
  static DateTime? _lastTBSFetchTime;

  /// 检测TBS获取时间间隔是否太短
  static bool _check()
  {
    // 首次获取TBS或者间隔超过10秒
    if (_lastTBSFetchTime == null ||
        _lastTBSFetchTime!.add(const Duration(seconds: 10)).isBefore(DateTime.now()))
    {
      _lastTBSFetchTime = DateTime.now();
      return true;
    }

    return false;
  }

  /// 登录状态下获取TBS
  static Future<String?> withLogin(String bduss, String stoken) async
  {
    if (!_check()) return _tbs;

    try 
    {
      final String cookies = 'BDUSS=$bduss; STOKEN=$stoken';
      final response = await http.get(Uri.parse(_url), headers: {'cookie': cookies});
      if (response.statusCode == 200) return jsonDecode(response.body)['tbs'];
      return null;
    }
    catch (error)
    {
      debugPrint('获取TBS失败: $error');
      return null;
    }
  }

  /// 非登录状态下获取TBS
  static Future<String?> withoutLogin() async
  {
    if (!_check()) return _tbs;

    try 
    {
      final response = await http.get(Uri.parse(_url));
      if (response.statusCode == 200) return jsonDecode(response.body)['tbs'];
      return null;
    }
    catch (error)
    {
      debugPrint('获取TBS失败: $error');
      return null;
    }
  }
}