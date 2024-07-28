import 'package:flutter/material.dart';

import 'package:tieba_next/Core/Forum.dart';
import 'package:tieba_next/Core/Thread.dart';
import 'package:tieba_next/TieBaAPI/TieBaAPI.dart';

class ForumPage extends StatefulWidget
{
  final String forumName;

  const ForumPage(this.forumName,{ super.key });
  
  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage>
{
  /// 初始化加载的数据
  late Future<void> _dataFuture;
  /// 吧主页信息
  late Forum _forum;
  /// 吧主页帖子列表
  final List<Thread> _threads = [];
  /// 当前加载的页数
  int _pageNum = 1;

  /// 初始化数据
  Future<void> _initData() async
  {
    List? list = await TieBaAPI.forumHome(widget.forumName, 0, 1, false);
    _forum = list![0];
    _threads.addAll(list[1]);
  }

  /// 刷新吧主页信息
  Future<void> _updateInfo() async
  {
    /// 置为0代表按钮刷新，否则下滑刷新
    if (_pageNum == 0) _threads.clear();
    _pageNum++;
    List? list = await TieBaAPI.forumHome(widget.forumName, 0, _pageNum, false);
    setState(() { _forum = list![0]; _threads.addAll(list[1]); });
  }

  /// 构建吧信息部件
  Widget _buildForum() => Container();

  /// 构建吧帖子列表部件
  Widget _buildThreads() => Container();

  @override
  void initState() 
  { 
    super.initState(); 
    _dataFuture = _initData(); 
  }

  @override
  Widget build(BuildContext context) => Scaffold
  (
    appBar: AppBar
    (
      backgroundColor: Theme.of(context).colorScheme.surface
    ),
    body: FutureBuilder<void>
    (
      future: _dataFuture,
      builder: (context, snapshot) => snapshot.connectionState == ConnectionState.done
      ? RefreshIndicator
      (
        onRefresh: _updateInfo,
        displacement: 0.0,
        color: Colors.blue,
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: SingleChildScrollView
        (
          child: Column
          (
            children: [_buildForum(), _buildThreads()]
          )
        )
      )
      : const SizedBox.shrink()
    ),
    backgroundColor: Theme.of(context).colorScheme.surface
  );
}