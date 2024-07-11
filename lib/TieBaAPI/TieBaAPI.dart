import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:tieba_next/TieBaAPI/API.dart';

class TieBaAPI 
{
  /// 获取我的用户信息
  /// 
  /// [bduss] - BDUSS
  /// 
  /// [stoken] - STOKEN
  static Future<Map<String, dynamic>?> getMyUserInfo(String? bduss, String? stoken) async
  {
    if (bduss == null || stoken == null)
    {
      debugPrint('BDUSS或STOKEN不存在');
      return null;
    }

    return await GetUserInfo.getMine(bduss, stoken);
  }

  /// 获取头像地址字符串
  /// 
  /// [portrait] - 头像ID
  /// 
  /// [isBig] - 是否是清晰的大头像
  static String getAvatar(String? portrait, bool isBig)
  {
    // 无效网址 占位图片
    String invalidURL = 'https://via.placeholder.com/150/000000/FFFFFF/?text=';
    if (portrait == null)
    {
      debugPrint('头像ID不存在');
      return invalidURL;
    }

    String imageURL = GetAvatar.avatarUrl(portrait, isBig);
    // 头像网址图片无效
    if (imageURL.isEmpty)
    {
      debugPrint('头像网址图片无效');
      return invalidURL;
    }

    return GetAvatar.avatarUrl(portrait, isBig);
  }
}