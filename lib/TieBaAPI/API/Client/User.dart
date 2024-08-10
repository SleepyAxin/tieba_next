import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tieba_next/TieBaAPI/API/DioManager.dart';
import 'package:tieba_next/TieBaAPI/API/Util.dart';

/// 获取用户信息
class User
{
  /// 获取用户详细信息
  static Future<Map<String, dynamic>?> profile(String tbs) async
  {
    const String url = '/c/u/user/profile';
    final Map<String, String> data = 
    {
      'BDUSS': DioManager.clientBaseData['BDUSS'] ?? '',
      'STOKEN': DioManager.clientBaseData['STOKEN'] ?? '',
      '_client_id': DioManager.clientBaseData['_client_id'] ?? '',
      '_client_type': DioManager.clientBaseData['_client_type'] ?? '',
      '_client_version': DioManager.clientBaseData['_client_version'] ?? '',
      '_phone_imei': DioManager.clientBaseData['_phone_imei'] ?? '',
      'android_id': DioManager.clientBaseData['android_id'] ?? '',
      'c3_aid': DioManager.clientBaseData['c3_aid'] ?? '',
      'cuid': DioManager.clientBaseData['cuid'] ?? '',
      'cuid_galaxy2': DioManager.clientBaseData['cuid_galaxy2'] ?? '',
      'TBS': tbs,
    };
    data['sign'] = Util.clientSign(data);
    
    try 
    {
      final Response res = await DioManager.clientDio.post
      (
        url, 
        data: Util.convertToUrlEncoded(data),
        options: Options(headers: { 'Content-Type': 'application/x-www-form-urlencoded' })
      );
      if (res.statusCode == 200) return jsonDecode(res.data);
      debugPrint('获取用户详细信息失败: $res');
    }
    catch (error) { debugPrint('获取用户详细信息失败: $error'); }
    return null;
  }
}