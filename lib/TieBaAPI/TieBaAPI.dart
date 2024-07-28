import 'package:flutter/material.dart';    // 引入Material组件库

import 'package:tieba_next/TieBaAPI/API/Web/_Web.dart' as web;
// import 'package:tieba_next/TieBaAPI/API/Client/_Client.dart' as client;
import 'package:tieba_next/Core/User.dart';    // 引入用户类
import 'package:tieba_next/Core/Forum.dart';    // 引入贴吧类
import 'package:tieba_next/Core/Thread.dart';    // 引入帖子类

class TieBaAPI 
{
  /// 创建一个静态的私有实例
  static final TieBaAPI _instance = TieBaAPI._internal();

  /// 私有构造函数
  TieBaAPI._internal();

  /// 提供一个工厂构造函数，返回唯一实例
  factory TieBaAPI() => _instance;

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

    final Map<String, dynamic>? data = await web.TBS.get();

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
  static Future<User?> myUserInfo() async
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
      followNum: detailInfo['data']['concern_num'] ?? 0,
      fansNum: detailInfo['data']['fans_num'] ?? -1,
      likeForumNum: detailInfo['data']['like_forum_num'] ?? 0
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
    final List<Map<String, dynamic>?> data = [];

    try 
    {
      futures.add(web.Forum.mylikes(0, 1, forumNum));
      futures.add(web.Forum.mylikesDetial());
      data.addAll(await Future.wait(futures));
    }
    catch (error) { debugPrint('获取个人关注贴吧时发生错误: $error'); return null; }

    if (data[0] == null || data[0]!['errno'] != 0 || data[1] == null || data[1]!['no'] != 0)
    {
      debugPrint('请求个人关注贴吧时返回为空或数据错误');
      return null;
    }

    final List basic = data[0]!['data']['like_forum']['list'];
    final List detail = data[1]!['data']['like_forum'];

    final List<Forum> forums = [];

    for (final Map<String, dynamic> forumData in basic)
    {
      forums.add
      (
        Forum
        (
          avatarURL: forumData['avatar'] ?? 'https://via.placeholder.com/150/000000/FFFFFF/?text=',
          id: forumData['forum_id'] ?? 0,
          name: forumData['forum_name'] ?? '未知',
          hotNum: forumData['hot_num'] ?? 0,
          userLevel: forumData['level_id'] ?? 0,
          isliked: true
        )
      );
    }

    for (final Map<String, dynamic> forumData in detail)
    {
      final int index = forums.indexWhere((element) => element.id == forumData['forum_id']);
      if (index != -1) forums[index].isSign = forumData['is_sign'] == 1;
    }

    return forums; 
  }

  /// 获取指定吧首页的信息
  /// 
  /// [forumName] 贴吧名称
  /// 
  /// [sortType] 排序类型
  /// 
  /// [pageNum] 页码
  /// 
  /// [isGood] 是否是精华帖子
  static Future<List<dynamic>?> forumHome
  (String forumName, int sortType, int pageNum, bool isGood) async
  {
    final List<Future<Map<String, dynamic>?>> futures = [];
    final List<Map<String, dynamic>?> data = [];

    try 
    {
      futures.add(web.Forum.homeInfo(forumName, sortType, pageNum, 20, isGood ? 1 : 0));
      futures.add(web.Forum.mylikesDetial());
      data.addAll(await Future.wait(futures));
    }
    catch (error) { debugPrint('获取$forumName吧首页信息时发生错误: $error'); return null; }

    if (data[0] == null || data[0]!['errno'] != 0 || data[1] == null || data[1]!['no'] != 0)
    {
      debugPrint('请求个人关注贴吧时返回为空或数据错误');
      return null;
    }

    final Map basic = data[0]!['data']['forum'];
    final List threadList = data[0]!['data']['thread_list'];
    final List likeForums = data[1]!['data']['like_forum'];

    final Forum forum = Forum
    (
      avatarURL: basic['avatar'] ?? 'https://via.placeholder.com/150/000000/FFFFFF/?text=',
      id: basic['id'] ?? 0,
      name: basic['name'] ?? forumName,
      memberNum: basic['member_num'] ?? 0,
      threadNum: basic['thread_num'] ?? 0,
      postNum: basic['post_num'] ?? 0,
    );

    for (final Map<String, dynamic> forumData in likeForums)
    {
      final int index = likeForums.indexWhere((element) => element.id == forumData['forum_id']);
      if (index != -1)
      {
        forum.isliked = forumData['is_like'] == true;
        forum.isSign = forumData['is_sign'] == 1;
        forum.userLevel = forumData['user_level'] ?? 0;
        forum.userLevelExp = forumData['user_exp'] ?? 0;
      }
    }

    final List<Thread> threads = [];

    for (final Map threadData in threadList)
    {
      threads.add
      (
        Thread
        (
          id: threadData['id'] ?? 0,
          author: User
          (
            name: threadData['author']['name'] ?? '未知',
            username: threadData['author']['name_show'] ?? '未知',
            nickname: threadData['author']['show_nickname'] ?? '未知',
            portrait: threadData['author']['portrait'] ?? '',
          ),
          title: threadData['title'] ?? '未知',
          description: threadData['rich_abstract'][0]['text'] ?? '',
        )
      );
    }

    return [forum, threads];
  }
}