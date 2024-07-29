import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

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

class _ForumPageState extends State<ForumPage> with SingleTickerProviderStateMixin
{
  /// 初始化加载的数据
  late Future<void> _dataFuture;
  /// 吧主页信息
  Forum _forum = Forum.empty;
  /// 吧主页置顶帖子列表
  final List<Thread> _topThreads = [];
  /// 吧主页帖子列表
  final List<Thread> _threads = [];
  /// 当前加载的页数
  int _pageNum = 1;
  /// 刷新页面
  final _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
  /// 标签页
  List<String> _tabs = ['全部', '精华'];
  /// 页面控制器
  late TabController _tabController;

  /// 初始化数据
  Future<void> _initData() async
  {
    Map? map = await TieBaAPI.forumHome(widget.forumName, 0, 1, false);
    if (map == null) return;
    _forum = map['forum'];
    _threads.addAll(map['threads']);
    _topThreads.addAll(map['topThreads']);
  }

  /// 加载吧主页信息
  Future<void> _updateInfo() async
  {
    _pageNum++;
    Map? map = await TieBaAPI.forumHome(widget.forumName, 0, _pageNum, false);
    if (map == null) return;
    setState
    (() 
      {
        _forum = map['forum']; 
        // 置为0代表按钮刷新和下滑刷新，否则下划加载
        if (_pageNum == 1) { _threads.clear(); _topThreads.clear(); }
        _threads.addAll(map['threads']); 
        _topThreads.addAll(map['topThreads']);
      }
    );
  }

  /// 刷新吧主页信息
  Future<void> _refreshInfo() async
  {
    setState(() => _pageNum = 0 );
    _updateInfo();
  }

  /// 刷新界面
  Future<void> _refresh() async => await _refreshIndicatorKey.currentState?.show();

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
          style: TextStyle(fontSize: 16.0, color: Theme.of(context).colorScheme.onSurface)
        ),
        Text
        (
          text, 
          style: TextStyle(fontSize: 12.0, color: Theme.of(context).colorScheme.onSecondary)
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
            Container
            (
              width: 60, height: 60,
              decoration: BoxDecoration
              (
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(12.0)
              ),
              child: ClipRRect
              (
                borderRadius: BorderRadius.circular(12.0),
                child: FadeInImage.memoryNetwork
                (
                  placeholder: kTransparentImage,
                  image: _forum.avatarURL,
                  fit: BoxFit.cover
                )
              )
            ),
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
                    child: Text
                    (
                      '${_forum.name}吧', textWidthBasis: TextWidthBasis.parent,
                      maxLines: 1, overflow: TextOverflow.ellipsis, 
                      style: TextStyle
                      (
                        fontSize: 18, fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface
                      )
                    )
                  )
                ),
                const SizedBox(height: 2),
                if (_forum.isliked) SizedBox
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
                const SizedBox(height: 3),
                if (_forum.isliked) SizedBox
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
            // 签到按钮
            Container
            (
              padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
              decoration: BoxDecoration
              (
                borderRadius: BorderRadius.circular(4.0),
                color: Theme.of(context).colorScheme.onSurface
              ),
              child: GestureDetector
              (
                // TODO: 签到功能
                onTap: () { debugPrint('签到'); },
                child: Text
                (
                  '签到', 
                  style: TextStyle
                  (
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.surface
                  )
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
            borderRadius: BorderRadius.circular(12.0)
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

  /// 构建吧帖子列表部件
  Widget _buildThreads() => Container();

  /// 构建页面数据
  Widget _build() => NestedScrollView
  (
    physics: const AlwaysScrollableScrollPhysics(),
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
          child: TabBar
          (
            controller: _tabController,
            tabs: _tabs.map((text) => Tab(text: text, height: 24)).toList(),
            isScrollable: true, tabAlignment: TabAlignment.start,
            indicatorColor: Colors.blue, indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.blue, 
            unselectedLabelColor: Theme.of(context).colorScheme.onSurface,
            labelStyle: const TextStyle(fontSize: 14),
            dividerColor: Colors.transparent,
          ),
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
          key: _refreshIndicatorKey,
          onRefresh: _refreshInfo,
          displacement: 0.0,
          color: Colors.blue,
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: ListView.builder
          (
            itemCount: 60,
            itemBuilder: (context, index) => 
            List.generate(60, (index) => Center(child: Text(index.toString())))[index]
          )
        ),
        RefreshIndicator
        (
          // key: _refreshIndicatorKey,
          onRefresh: _refreshInfo,
          displacement: 0.0,
          color: Colors.blue,
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: ListView.builder
          (
            itemCount: 60,
            itemBuilder: (context, index) => 
            List.generate(60, (index) => Center(child: Text(index.toString())))[index]
          )
        )
      ]
    )
  );

  @override
  void initState() 
  { 
    super.initState(); 
    _tabController = TabController(initialIndex: 0, length: _tabs.length, vsync: this);
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
      backgroundColor: Theme.of(context).colorScheme.surface,
      surfaceTintColor: Theme.of(context).colorScheme.surface,
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