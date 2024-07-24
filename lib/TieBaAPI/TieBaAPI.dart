import 'package:flutter/material.dart';    // 引入Material组件库

import 'package:tieba_next/TieBaAPI/API/Web/_Web.dart' as web;

import 'package:tieba_next/Core/User.dart';    // 引入用户类
import 'package:tieba_next/Core/Forum.dart';    // 引入贴吧类

/// 获取我的用户信息
/// 
/// [bduss] - BDUSS
/// 
/// [stoken] - STOKEN
Future<User?> getMyUserInfo(String bduss, String stoken) async
{
  Map<String, dynamic>? detailInfo = await web.User.mineDetail(bduss, stoken);
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
String getAvatar(String portrait, bool isBig)
{
  // 无效网址 占位图片
  String invalidURL = 'https://via.placeholder.com/150/000000/FFFFFF/?text=';
  if (portrait.isEmpty) return invalidURL;

  String imageURL = isBig ? web.Avatar.bigImage(portrait) : web.Avatar.smallImage(portrait);
  if (imageURL.isNotEmpty) return imageURL;
  debugPrint('头像网址图片无效');    // 头像网址图片无效
  return invalidURL;
}

/// 获取本人关注的贴吧列表
/// 
/// [bduss] BDUSS 
/// 
/// [stoken] STOKEN
/// 
/// [forumNum] 关注贴吧数量 
Future<List<Forum>?> getMyLikeForums(String bduss, String stoken, int forumNum) async
{
  final List<Future<Map<String, dynamic>?>> futures = [];
  futures.add(web.Forum.mylikes(bduss, stoken, 0, 1, forumNum));
  futures.add(web.Forum.mylikesDetial(bduss, stoken));
  final List<Map<String, dynamic>?> data = await Future.wait(futures);

  if (data[0] == null || data[1] == null)
  {
    debugPrint('请求个人关注贴吧时返回为空');
    return null;
  }

  if (data[0]!['errno'] != 0 || data[1]!['no'] != 0)
  {
    debugPrint('请求个人关注贴吧时数据错误');
    return null;
  }

  List basic = data[0]!['data']['like_forum']['list'];
  List detail = data[1]!['data']['like_forum'];
  List<Forum> forums = [];

  // 无效网址 占位图片
  String invalidURL = 'https://via.placeholder.com/150/000000/FFFFFF/?text=';

  for (Map<String, dynamic> forumData in basic)
  {
    Forum forum = Forum();
    forum.avatarURL = forumData['avatar'] ?? invalidURL;
    forum.id = forumData['forum_id'] ?? forum.id;
    forum.name = forumData['forum_name'] ?? forum.name;
    forum.hotNum = forumData['hot_num'] ?? forum.hotNum;
    forum.userLevel = forumData['level_id'] ?? forum.userLevel;
    forum.isliked = true;
    forums.add(forum);
  }

  for (Map<String, dynamic> forumData in detail)
  {
    int index = forums.indexWhere((element) => element.id == forumData['forum_id']);
    if (index != -1) forums[index].isSign = forumData['is_sign'] == 1;
  }

  return forums; 
}