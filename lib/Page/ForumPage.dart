import 'package:flutter/material.dart';
import 'package:chinese_font_library/chinese_font_library.dart';

import 'package:tieba_next/Core/Forum.dart';
import 'package:tieba_next/Core/Thread.dart';
import 'package:tieba_next/Core/AccountManager.dart';
import 'package:tieba_next/TieBaAPI/TieBaAPI.dart';
import 'package:tieba_next/Widget/ThreadGrid.dart';
import 'package:tieba_next/Widget/NetworkImageGrid.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ForumPage extends StatefulWidget
{
  final String forumName;

  const ForumPage(this.forumName,{ super.key });
  
  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> with SingleTickerProviderStateMixin
{
  /// 吧主页置顶帖子列表
  final List<Thread> _topThreads = [];
  /// 吧主页全部帖子列表
  final List<Thread> _allThreads = [];
  /// 吧主页精华帖子列表
  final List<Thread> _goodThreads = [];
  /// 初始化加载的数据
  late Future<void> _dataFuture;
  /// 吧主页信息
  late Forum _forum;
  /// 全部帖子排序方式
  int _sortType = 1;
  /// 全部帖子当前加载的页数
  int _allPageNum = 1;
  /// 精华帖子当前加载的页数
  int _goodPageNum = 1;
  /// 是否显示吧名标题
  bool _showTitle = false;
  /// 标签页
  final List<String> _tabs = ['全部', '精华'];
  /// 刷新页面（全部）
  final _allRefreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
  /// 刷新页面（精华）
  final _goodRefreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
  /// 页面控制器
  late TabController _tabController;

  /// 初始化数据
  Future<void> _initData() async
  {
    final List<Future> futures = [];
    futures.add(TieBaAPI.forumHome(widget.forumName, _sortType, 1, false));
    // futures.add(TieBaAPI.forumHome(widget.forumName, 0, 1, true));
    final result = await Future.wait(futures);
    if (result[0] != null)
    {
      _forum = result[0]['forum'];
      _allThreads.addAll(result[0]['threads']);
      _topThreads.addAll(result[0]['topThreads']);
    }
  }

  /// 加载吧主页信息
  /// 
  /// [isGood] 是否精华帖
  Future<void> _updateInfo(bool isGood) async
  {
    if (!isGood)
    {
      _allPageNum++;
      Map? map = await TieBaAPI.forumHome(widget.forumName, _sortType, _allPageNum, false);
      if (map == null) return;
      setState
      (() 
        {
          _forum = map['forum']; 
          if (_allPageNum > (_forum.threadNum / 20.0).ceil()) return;
          // 置为0代表按钮刷新和下滑刷新，否则下划加载
          if (_allPageNum == 1) { _allThreads.clear(); _topThreads.clear(); }
          _allThreads.addAll(map['threads']); 
          _topThreads.addAll(map['topThreads']);
        }
      );
    }
    else 
    {
      _goodPageNum++;
    }
  }

  /// 刷新吧主页信息
  /// 
  /// [isGood] 是否精华帖
  Future<void> _refreshInfo(bool isGood) async
  {
    setState(() => isGood ? _goodPageNum = 0 : _allPageNum = 0 );
    await _updateInfo(isGood);
  }

  /// 刷新界面 全部帖子
  Future<void> _refreshAll() async => await _allRefreshIndicatorKey.currentState?.show();

  /// 刷新界面 精华帖子
  Future<void> _refreshGood() async => await _goodRefreshIndicatorKey.currentState?.show();

  // 吧数据纵向部件
  Widget _buildNum(String text, int num)
  {
    String numStr = '';

    if (num < 10000) { numStr = num.toString(); }
    else if (num >= 10000 && num < 100000000) { numStr = '${(num / 10000).toStringAsFixed(1)}万'; }
    else { numStr = '${(num / 100000000).toStringAsFixed(1)}亿'; }

    return Column
    (
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: 
      [
        Text
        (
          numStr, 
          style: TextStyle
          (
            fontSize: 16.0, fontWeight: FontWeight.w600, 
            color: Theme.of(context).colorScheme.onSurface
          ).useSystemChineseFont()
        ),
        Text
        (
          text, 
          style: TextStyle
          (
            fontSize: 12.0, color: Theme.of(context).colorScheme.onSecondary
          ).useSystemChineseFont()
        )
      ]
    );
  }

  /// 构建吧信息部件
  Widget _buildForumInfo() => Container
  (
    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
    child: Column
    (
      children: 
      [
        Row
        (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: 
          [
            // 吧头像
            NetworkImageGrid(width: 60.0, height: 60.0, radius: 8.0, url: _forum.avatarURL),
            // 吧名字 等级
            Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
                InkWell
                (
                  // TODO: 点击进入吧详细信息页面
                  onTap: () { },
                  child: SizedBox
                  (
                    width: MediaQuery.of(context).size.width - 160.0,
                    child: VisibilityDetector
                    (
                      key: Key('ForumPage${_forum.name}'), 
                      onVisibilityChanged: (info) 
                      {
                        if (info.visibleFraction == 0.0) { setState(() => _showTitle = true ); }
                        else { setState(() => _showTitle = false ); }
                      },
                      child: Text
                      (
                        '${_forum.name}吧', textWidthBasis: TextWidthBasis.parent,
                        maxLines: 1, overflow: TextOverflow.ellipsis, 
                        style: TextStyle
                        (
                          fontSize: 18, color: Theme.of(context).colorScheme.onSurface
                        ).useSystemChineseFont()
                      )
                    )
                  )
                ),
                if (AccountManager().account != null) const SizedBox(height: 2),
                if (AccountManager().account != null && _forum.isLiked) SizedBox
                (
                  width: MediaQuery.of(context).size.width - 160.0,
                  child: LinearProgressIndicator
                  (
                    value: _forum.userLevel < 18
                    ? _forum.userLevelExp / Forum.expOfLevel[_forum.userLevel + 1]
                    : 1,
                    minHeight: 6.0,
                    borderRadius: const BorderRadius.all(Radius.circular(2.0)),
                    color: Theme.of(context).colorScheme.onSurface,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  )
                ),
                if (AccountManager().account != null) const SizedBox(height: 3),
                if (AccountManager().account != null && _forum.isLiked) SizedBox
                (
                  width: MediaQuery.of(context).size.width - 160.0,
                  child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: 
                    [
                      Text
                      (
                        'Lv.${_forum.userLevel}',
                        style: TextStyle
                        (
                          fontSize: 10, 
                          color: Theme.of(context).colorScheme.onSecondary
                        )
                      ),
                      Text
                      (
                        '${_forum.userLevelExp} / ${Forum.expOfLevel[_forum.userLevel + 1]}',
                        style: TextStyle
                        (
                          fontSize: 10, 
                          color: Theme.of(context).colorScheme.onSecondary
                        )
                      ),
                    ]
                  )
                )
              ]
            ),
            // 关注或签到按钮
            if (AccountManager().account != null) Container
            (
              padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
              decoration: BoxDecoration
              (
                borderRadius: BorderRadius.circular(4.0),
                color: _forum.isLiked && _forum.isSigned
                ? Theme.of(context).colorScheme.secondary
                : Theme.of(context).colorScheme.onSurface
              ),
              child: GestureDetector
              (
                // TODO: 签到或关注功能
                onTap: () {  },
                child: Text
                (
                  _forum.isLiked ? (_forum.isSigned ? '已签' : '签到') : '关注', 
                  style: TextStyle
                  (
                    fontSize: 12.0,
                    color: _forum.isLiked && _forum.isSigned
                    ? Theme.of(context).colorScheme.onSecondary
                    : Theme.of(context).colorScheme.surface
                  ).useSystemChineseFont()
                )
              )
            )
          ]
        ),
        const SizedBox(height: 12.0),
        Container
        (
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
          decoration: BoxDecoration
          (
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(8.0)
          ),
          child: Row
          (
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: 
            [
              _buildNum('成员数', _forum.memberNum),
              const SizedBox(width: 48.0),
              _buildNum('帖子数', _forum.threadNum),
              const SizedBox(width: 48.0),
              _buildNum('回帖数', _forum.postNum),
            ],
          )
        )
      ]
    )
  );

  /// 构建帖子部件
  /// 
  /// [thread] 帖子信息
  Widget _buildThread(Thread thread) => Column
  (
    children: 
    [
      // 分割线
      Divider
      (
        height: 0.75, thickness: 0.75, indent: 16.0, endIndent: 16.0,
        color: Theme.of(context).colorScheme.secondary
      ),
      InkWell
      (
        onTap: () {},
        onLongPress: () {},
        child: ThreadGrid
        (
          thread: thread, 
          showForumName: false, showCreateTime: _sortType == 1
        )
      )
    ]
  );

  /// 构建页面数据
  Widget _build() => NestedScrollView
  (
    headerSliverBuilder: (context, innerBoxIsScrolled) => 
    [
      SliverAppBar
      (
        automaticallyImplyLeading: false, expandedHeight: 180.0, 
        flexibleSpace: FlexibleSpaceBar(background: _buildForumInfo()),
        pinned: true, floating: true,
        backgroundColor: Theme.of(context).colorScheme.surface,
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        bottom: PreferredSize
        (
          preferredSize: const Size.fromHeight(30.0),
          child: Align
          (
            alignment: Alignment.centerLeft,
            child: TabBar
            (
              controller: _tabController,
              tabs: _tabs.map((text) => Tab(text: text, height: 24)).toList(),
              isScrollable: true, tabAlignment: TabAlignment.start,
              indicatorColor: Theme.of(context).colorScheme.onSurface, 
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Theme.of(context).colorScheme.onSurface, 
              unselectedLabelColor: Theme.of(context).colorScheme.onSecondary,
              labelStyle: const TextStyle(fontSize: 14),
              dividerColor: Colors.transparent,
              onTap: (index) => index == 0 ? _refreshAll() : _refreshGood()
            )
          )
        )
      )
    ],
    body: TabBarView
    (
      controller: _tabController,
      children: 
      [
        RefreshIndicator
        (
          key: _allRefreshIndicatorKey,
          onRefresh: () async => await _refreshInfo(false),
          displacement: 0.0,
          color: Colors.blue,
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: SingleChildScrollView
          (
            physics: const NeverScrollableScrollPhysics(),
            child: Column
            (
              children: 
              [
                const SizedBox(height: 8.0),
                ...List.generate
                (
                  _topThreads.length, 
                  (index) => InkWell
                  (
                    // TODO: 点击帖子跳转
                    onTap: () {},
                    child: Padding
                    (
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), 
                      child: Row
                      (
                        children: 
                        [
                          Text
                          (
                            '置顶', style: const TextStyle(color: Colors.blue).useSystemChineseFont()
                          ),
                          const SizedBox(width: 8.0),
                          SizedBox
                          (
                            width: MediaQuery.of(context).size.width - 75.0,
                            child: Text
                            (
                              _topThreads[index].title, textWidthBasis: TextWidthBasis.parent,
                              maxLines: 1, overflow: TextOverflow.ellipsis, 
                              style: TextStyle
                              (
                                color: Theme.of(context).colorScheme.onSurface
                              ).useSystemChineseFont()
                            )
                          )
                        ]
                      )
                    )
                  )
                ),
                // 分割线
                Divider
                (
                  height: 1.0, thickness: 0.75, indent: 16.0, endIndent: 16.0,
                  color: Theme.of(context).colorScheme.secondary
                ),
                // 看帖排序 发布 回复
                Padding
                (
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: 
                    [
                      Text
                      (
                        '看帖排序', 
                        style: TextStyle
                        (
                          fontSize: 12.0, color: Theme.of(context).colorScheme.onSecondary
                        ).useSystemChineseFont()
                      ),
                      Row
                      (
                        children: 
                        [
                          GestureDetector
                          (
                            onTap: () 
                            {
                              if (_sortType == 0)
                              {
                                setState(() => _sortType = 1);
                                _refreshAll();
                              }
                            },
                            child: Container
                            (
                              padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
                              decoration: BoxDecoration
                              (
                                color: _sortType == 1
                                ? Theme.of(context).colorScheme.onSurface
                                : Theme.of(context).colorScheme.secondary,
                                borderRadius: const BorderRadius.only
                                (
                                  topLeft: Radius.circular(4.0), bottomLeft: Radius.circular(4.0)
                                )
                              ),
                              child: Text
                              (
                                '发布', 
                                style: TextStyle
                                (
                                  fontSize: 13.0,
                                  color: _sortType == 1
                                  ? Theme.of(context).colorScheme.surface
                                  : Theme.of(context).colorScheme.onSecondary
                                ).useSystemChineseFont()
                              )
                            )
                          ),
                          GestureDetector
                          (
                            onTap: () 
                            {
                              if (_sortType == 1)
                              {
                                setState(() => _sortType = 0);
                                _refreshAll();
                              }
                            },
                            child: Container
                            (
                              padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
                              decoration: BoxDecoration
                              (
                                color: _sortType == 0
                                ? Theme.of(context).colorScheme.onSurface
                                : Theme.of(context).colorScheme.secondary,
                                borderRadius: const BorderRadius.only
                                (
                                  topRight: Radius.circular(4.0), bottomRight: Radius.circular(4.0)
                                )
                              ),
                              child: Text
                              (
                                '回复', 
                                style: TextStyle
                                (
                                  fontSize: 13.0,
                                  color: _sortType == 0
                                  ? Theme.of(context).colorScheme.surface
                                  : Theme.of(context).colorScheme.onSecondary
                                ).useSystemChineseFont()
                              )
                            )
                          )
                        ]
                      ),
                    ]
                  )
                ),
                ...List.generate(_allThreads.length, (index) => _buildThread(_allThreads[index]))
              ]
            )
          )
        ),
        RefreshIndicator
        (
          key: _goodRefreshIndicatorKey,
          onRefresh: () async => await _refreshInfo(true),
          displacement: 0.0,
          color: Colors.blue,
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: SingleChildScrollView
          (
            physics: const NeverScrollableScrollPhysics(),
            child: Column
            (
              children: 
              [
                const SizedBox(height: 8.0),
                ...List.generate(_goodThreads.length, (index) => _buildThread(_goodThreads[index]))
              ]
            )
          )
        )
      ]
    )
  );

  @override
  void initState() 
  { 
    super.initState(); 
    _tabController = TabController(length: _tabs.length, vsync: this);
    _dataFuture = _initData(); 
  }

  @override
  void dispose() 
  {
    _tabController.dispose(); 
    super.dispose(); 
  }

  @override
  Widget build(BuildContext context) => Scaffold
  (
    appBar: AppBar
    (
      title: _showTitle 
      ? Text(_forum.name, style: const TextStyle().useSystemChineseFont()) : null,
      backgroundColor: Theme.of(context).colorScheme.surface,
      surfaceTintColor: Theme.of(context).colorScheme.surface
    ),
    body: FutureBuilder<void>
    (
      future: _dataFuture,
      builder: (context, snapshot) => snapshot.connectionState == ConnectionState.done
      ? _build()
      : const SizedBox.shrink()
    ),
    backgroundColor: Theme.of(context).colorScheme.surface
  );
}