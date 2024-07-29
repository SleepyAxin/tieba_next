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

class _ForumPageState extends State<ForumPage>
{
  /// 初始化加载的数据
  late Future<void> _dataFuture;
  /// 吧主页信息
  Forum _forum = Forum.empty;
  /// 吧主页帖子列表
  final List<Thread> _threads = [];
  /// 当前加载的页数
  int _pageNum = 1;
  /// 刷新页面
  final _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  /// 初始化数据
  Future<void> _initData() async
  {
    Map? map = await TieBaAPI.forumHome(widget.forumName, 0, 1, false);
    if (map == null) return;
    _forum = map['forum'];
    _threads.addAll(map['threads']);
  }

  /// 刷新吧主页信息
  Future<void> _updateInfo() async
  {
    /// 置为0代表按钮刷新，否则下滑刷新
    if (_pageNum == 0) _threads.clear();
    _pageNum++;
    Map? map = await TieBaAPI.forumHome(widget.forumName, 0, _pageNum, false);
    if (map == null) return;
    setState(() { _forum = map['forum']; _threads.addAll(map['threads']); });
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
  Widget _buildForum() => Container
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
                  onTap: () {},
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
                onTap: () {},
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
              const SizedBox(width: 36.0),
              _buildNum('帖子数', _forum.threadNum),
              const SizedBox(width: 36.0),
              _buildNum('回帖数', _forum.postNum),
            ],
          )
        )
      ]
    )
  );

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
        child: SingleChildScrollView(child: Column(children: [_buildForum(), _buildThreads()]))
      )
      : const SizedBox.shrink()
    ),
    backgroundColor: Theme.of(context).colorScheme.surface
  );
}