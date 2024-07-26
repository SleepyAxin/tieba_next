import 'package:flutter/material.dart';    // 引入Material组件库

import 'package:tieba_next/TieBaAPI/API/Web/_Web.dart' as web;
import 'package:tieba_next/Core/User.dart';    // 引入用户类
import 'package:tieba_next/Core/Forum.dart';    // 引入贴吧类

class API 
{
  /// 创建一个静态的私有实例
  static final API _instance = API._internal();

  /// 私有构造函数
  API._internal();

  /// 提供一个工厂构造函数，返回唯一实例
  factory API() => _instance;

  /// 最新的TBS
  static String? _lastTBS;

  /// 上次获取TBS的时间
  static DateTime? _lastTBSFetchTime;

  /// 检测TBS获取时间间隔是否太短
  static bool get _checkTBS => 
  _lastTBSFetchTime == null 
  || _lastTBSFetchTime!.add(const Duration(seconds: 10)).isBefore(DateTime.now());

  /// 获取TBS
  static Future<String?> get _tbs async
  {
    if (!_checkTBS) return _lastTBS;

    _lastTBSFetchTime = DateTime.now();

    final Map<String, dynamic>? data = await web.TBS.get;

    if (data == null)
    {
      debugPrint('获取TBS时响应体为空');
      return null;
    }

    if (data['tbs'] == null)
    {
      debugPrint('获取TBS时响应体中无TBS字段');
      return null;
    }

    _lastTBS = data['tbs'];
    return _lastTBS;
  }

  /// 获取我的用户信息
  static Future<User?> get myUserInfo async
  {
    Map<String, dynamic>? detailInfo = await web.User.mineDetail();

    if (detailInfo == null || detailInfo['no'] != 0)
    {
      debugPrint('请求个人详细信息时响应体为空或数据错误');
      return null;
    }

    return User
    (
      name: detailInfo['data']['name'] ?? '未获取',
      username: '未获取',
      nickname: detailInfo['data']['name_show'] ?? '未获取',
      portrait: detailInfo['data']['portrait'] ?? '',
      followNum: detailInfo['data']['concern_num'] ?? -1,
      fansNum: detailInfo['data']['fans_num'] ?? -1,
      likeForumNum: detailInfo['data']['like_forum_num'] ?? -1
    );
  }

  /// 获取头像地址字符串
  /// 
  /// [portrait] - 头像ID
  /// 
  /// [isBig] - 是否是清晰的大头像
  static String avatar(String portrait, bool isBig)
  {
    // 无效网址 占位图片
    String invalidURL = 'https://via.placeholder.com/150/000000/FFFFFF/?text=';
    if (portrait.isEmpty) return invalidURL;

    String imageURL = isBig ? web.Avatar.bigImage(portrait) : web.Avatar.smallImage(portrait);
    return imageURL;
  }

  /// 获取本人关注的贴吧列表
  /// 
  /// [forumNum] 关注贴吧数量 
  static Future<List<Forum>?> myLikeForums(int forumNum) async
  {
    final List<Future<Map<String, dynamic>?>> futures = [];
    futures.add(web.Forum.mylikes(0, 1, forumNum));
    futures.add(web.Forum.mylikesDetial());
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

    /// 无效网址 占位图片
    String invalidURL = 'https://via.placeholder.com/150/000000/FFFFFF/?text=';

    for (Map<String, dynamic> forumData in basic)
    {
      forums.add
      (
        Forum
        (
          avatarURL: forumData['avatar'] ?? invalidURL,
          id: forumData['forum_id'] ?? -1,
          name: forumData['forum_name'] ?? '未知',
          hotNum: forumData['hot_num'] ?? -1,
          userLevel: forumData['level_id'] ?? -1,
          isliked: true
        )
      );
    }

    for (Map<String, dynamic> forumData in detail)
    {
      int index = forums.indexWhere((element) => element.id == forumData['forum_id']);
      if (index != -1) forums[index].isSign = forumData['is_sign'] == 1;
    }

    return forums; 
  }

  /// 获取指定吧首页的信息和帖子
  /// 
  /// [forumName] 贴吧名称
  /// 
  /// [sort] 排序方式
  /// 
  /// [pageNum] 页码
  /// 
  /// [isGood] 是否是精品帖子
  static Future<List<dynamic>?> forumHome
  (String forumName, int sort, int pageNum, bool isGood) async
  {
    
  }
}