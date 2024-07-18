import 'package:flutter/material.dart';    // 引入Material组件库

import 'package:tieba_next/TieBaAPI/API/Avatar.dart';
import 'package:tieba_next/TieBaAPI/API/UserInfo.dart';
import 'package:tieba_next/TieBaAPI/API/TBS.dart';
import 'package:tieba_next/TieBaAPI/API/Threads.dart';
import 'package:tieba_next/TieBaAPI/API/Forums.dart';

import 'package:tieba_next/Core/User.dart';    // 引入用户类
import 'package:tieba_next/Core/Forum.dart';    // 引入贴吧类

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

  Map<String, dynamic>? detailInfo = await UserInfo.mineDetail(bduss, stoken, 1, 'f');
  if (detailInfo == null || detailInfo['no'] != 0)
  {
    debugPrint('请求个人详细信息时响应体为空或数据错误');
    return null;
  }

  User user = User();
  user.name = detailInfo['data']['name'];
  user.nickname = detailInfo['data']['name_show'];
  user.portrait = detailInfo['data']['portrait'];
  user.followNum = detailInfo['data']['concern_num'];
  user.fansNum  = detailInfo['data']['fans_num'];
  user.likeForumNum = detailInfo['data']['like_forum_num'];
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

  String imageURL = isBig ? Avatar.bigImage(portrait) : Avatar.smallImage(portrait);
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
    return await TBS.withoutLogin();
  }

  return await TBS.withLogin(bduss, stoken);
}

/// 获取本人关注的贴吧列表
/// 
/// [bduss] BDUSS 
/// 
/// [stoken] STOKEN
/// 
/// [st] 排序方式 
/// 
/// [pn] 页码 
/// 
/// [rn] 每页数量
Future<List<Forum>?> getMyLikeForums(String? bduss, String? stoken, int st, int pn, int rn) async
{
  if (bduss == null || stoken == null)
  {
    debugPrint('请求个人关注贴吧时BDUSS或STOKEN不存在');
    return null;
  }

  final Map<String, dynamic>? data = await Forums.mylikes(bduss, stoken, st, pn, rn);

  if (data == null || data['errno'] != 0)
  {
    debugPrint('请求个人关注贴吧时数据错误');
    return null;
  }

  if (data['data']['like_forum']['page']['cur_page'] > 
      data['data']['like_forum']['page']['total_page']) return null;

  List list = data['data']['like_forum']['list'];
  List<Forum> forums = [];

  // 无效网址 占位图片
  String invalidURL = 'https://via.placeholder.com/150/000000/FFFFFF/?text=';

  for (Map<String, dynamic> forumData in list)
  {
    Forum forum = Forum();
    forum.avatarURL = forumData['avatar'] ?? invalidURL;
    forum.id = forumData['forum_id'];
    forum.name = forumData['forum_name'];
    forum.hotNum = forumData['hot_num'];
    forum.userLevel = forumData['level_id'];
    forums.add(forum);
  }

  return forums; 
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

  return await Threads.mine(bduss, stoken, 1, 20);
}