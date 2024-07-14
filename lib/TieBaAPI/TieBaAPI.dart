import 'package:flutter/material.dart';    // 引入Material组件库

import 'package:tieba_next/TieBaAPI/API/GetAvatar.dart';
import 'package:tieba_next/TieBaAPI/API/GetUserInfo.dart';
import 'package:tieba_next/TieBaAPI/API/GetTBS.dart';
import 'package:tieba_next/TieBaAPI/API/GetThreads.dart';

import 'package:tieba_next/Core/User.dart';    // 引入用户类

/// 获取我的用户信息
/// 
/// [bduss] - BDUSS
/// 
/// [stoken] - STOKEN
Future<User?> getMyUserInfo(String? bduss, String? stoken) async
{
  if (bduss == null || stoken == null)
  {
    debugPrint('请求个人信息时BDUSS或STOKEN不存在');
    return null;
  }

  Map<String, dynamic>? basicInfo = await GetUserInfo.mineBasic(bduss, stoken);
  if (basicInfo == null || basicInfo['no'] != 0)
  {
    debugPrint('请求个人基本信息时发生错误');
    return null;
  }
  
  User user = User();
  user.name = basicInfo['data']['user_name_weak'];
  user.username = basicInfo['data']['user_name_show'];
  user.nickname = basicInfo['data']['show_nickname'];
  user.portrait = basicInfo['data']['user_portrait'];
  
  Map<String, dynamic>? detailInfo = await GetUserInfo.mineDetail(bduss, stoken, 1, 'f');
  if (detailInfo == null || detailInfo['no'] != 0)
  {
    debugPrint('请求个人详细信息时发生错误');
    return user;
  }
  user.followNum = detailInfo['data']['concern_num'];
  user.fansNum  = detailInfo['data']['fans_num'];
  user.likeForumNum = detailInfo['data']['like_forum_num'];
  user.threadNum = detailInfo['data']['post_num'];
  return user;
}

/// 获取头像地址字符串
/// 
/// [portrait] - 头像ID
/// 
/// [isBig] - 是否是清晰的大头像
String getAvatar(String? portrait, bool isBig)
{
  // 无效网址 占位图片
  String invalidURL = 'https://via.placeholder.com/150/000000/FFFFFF/?text=';
  if (portrait == null)
  {
    debugPrint('头像ID不存在');
    return invalidURL;
  }

  String imageURL = isBig ? GetAvatar.bigImage(portrait) : GetAvatar.smallImage(portrait);
  if (imageURL.isNotEmpty) return imageURL;
  debugPrint('头像网址图片无效');    // 头像网址图片无效
  return invalidURL;
}

/// 获取TBS
/// 
/// [bduss] - BDUSS
/// 
/// [stoken] - STOKEN
Future<String?> getTBS(String? bduss, String? stoken) async
{
  if (bduss == null || stoken == null)
  {
    debugPrint('请求TBS时BDUSS或STOKEN不存在，将调用非登录接口');
    return await GetTBS.withoutLogin();
  }

  return await GetTBS.withLogin(bduss, stoken);
}

/// 获取本人发的帖子
/// 
/// [bduss] 登录百度账号的bduss
/// 
/// [stoken] 登录百度账号的stoken
Future<Map<String, dynamic>?> getMyThreads(String? bduss, String? stoken) async
{
  if (bduss == null || stoken == null)
  {
    debugPrint('请求个人发帖信息时BDUSS或STOKEN不存在');
    return null;
  }

  return await GetThreads.mine(bduss, stoken, 1, 20);
}