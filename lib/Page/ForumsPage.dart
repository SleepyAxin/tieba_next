import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tieba_next/CreateRoute.dart';
import 'package:tieba_next/Widget/MyFlushBar.dart';
import 'package:tieba_next/Widget/ForumGrid.dart';
import 'package:tieba_next/Core/Forum.dart';    // 引入吧类
import 'package:tieba_next/Core/AccountManager.dart';    // 引入用户信息管理器
import 'package:tieba_next/Core/SettingsManager.dart';    // 引入设置管理器
import 'package:tieba_next/TieBaAPI/TieBaAPI.dart';

class ForumsPage extends StatefulWidget
{
  const ForumsPage({ super.key });
  
  @override
  State<ForumsPage> createState() => ForumsPageState();
}

class ForumsPageState extends State<ForumsPage>
{
  /// 我关注的吧列表
  List<Forum> _likeForums = <Forum>[];
  /// 置顶吧列表
  List<Forum> _topForums = <Forum>[];
  /// 初始化加载的数据
  late Future<void> _dataFuture;
  /// 刷新页面
  final _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  /// 初始化吧列表数据
  Future<void> _initData() async
  {
    final List<Forum> likeforums = await TieBaAPI.myLikeForums(99999999) ?? [];
    _likeForums = List<Forum>.from(likeforums);
    
    final List<Forum> topForums = [];
    for (int id in SettingsManager().topForums)
    {
      int index = likeforums.indexWhere((element) => element.id == id);
      if (index != -1) topForums.add(likeforums[index]);
    }
    _topForums = List<Forum>.from(topForums);
  }

  /// 刷新界面 更新关注贴吧
  Future<void> refresh() async => await _refreshIndicatorKey.currentState?.show();

  /// 更新关注和置顶贴吧
  Future<void> _updateForums() async
  {
    final List<Forum> forums = await TieBaAPI.myLikeForums(99999999) ?? [];
    setState(() => _likeForums = List.from(forums) );

    final List<Forum> topForums = [];
    for (int id in SettingsManager().topForums)
    {
      int index = forums.indexWhere((element) => element.id == id);
      if (index != -1) topForums.add(forums[index]);
    }
    setState(() => _topForums = List<Forum>.from(topForums) );
  }

  /// 设置吧列表
  /// 
  /// [forums] 吧列表
  List<Widget> _setForumGrid(List<Forum> forums) => List<Widget>.generate
  (forums.length, (index) => InkWell
    (
      // 点击跳转到吧页面
      onTap: () => Navigator.push(context, createRoute(ForumPage(forums[index].name))),
      // 长按置顶吧
      onLongPress: ()
      {
        final Forum forum = forums[index];
        !_topForums.contains(forum)
        ? { setState(() => _topForums.add(forum) ), SettingsManager().addTopForum(forum.id) }
        : { setState(() => _topForums.remove(forum) ), SettingsManager().removeTopForum(forum.id) };
      },
      child: ForumGrid(forum: forums[index])
    )
  );

  /// 设置分区域文本
  /// 
  /// [text] 文本内容
  /// 
  /// [icon] 图标
  Widget _setInfoText(String text, IconData icon) => Container
  (
    padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 12.0),
    child: Row
    (
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: 
      [
        Icon(icon, size: 16.0),
        const SizedBox(width: 4.0),
        Text(text, style: const TextStyle(fontSize: 16))
      ]
    ),
  );

  Widget _buildForums() => RefreshIndicator
  (
    key: _refreshIndicatorKey,
    onRefresh: _updateForums,
    displacement: 0.0,
    color: Colors.blue,
    backgroundColor: Theme.of(context).colorScheme.primary,
    child: SingleChildScrollView
    (
      child: Column
      (
        children: 
        [
          if (_topForums.isNotEmpty) ...
          [
            _setInfoText('置顶的吧', Icons.forum_outlined),
            GridView.builder
            (
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
              (
                crossAxisCount: 2,
                childAspectRatio: 3.5,
              ),
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              physics: const NeverScrollableScrollPhysics(), shrinkWrap: true,
              itemCount: _topForums.length,
              itemBuilder: (context, index) => _setForumGrid(_topForums)[index]
            )
          ],
          _setInfoText('关注的吧', Icons.forum_outlined),
          Consumer<SettingsManager>
          (
            builder: (context, settingsManager, child) => settingsManager.showSignTip
            ? Container
            (
              margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 24.0),
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              decoration: BoxDecoration
              (
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(4.0)
              ),
              child: Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: 
                [
                  Text
                  (
                    '吧头像右下角打勾表示已签到哦',
                    textAlign: TextAlign.center,
                    style: TextStyle
                    (
                      fontSize: 12, 
                      color: Theme.of(context).colorScheme.onSecondary
                    )
                  ),
                  InkWell
                  (
                    onTap: () => {},
                    child: const Text
                    (
                      '不再显示',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Colors.blue)
                    ),
                  )
                ],
              ),
            )
            : const SizedBox.shrink()
          ),
          GridView.builder
          (
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
            (
              crossAxisCount: 2,
              childAspectRatio: 3.5,
            ),
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            physics: const NeverScrollableScrollPhysics(), shrinkWrap: true,
            itemCount: _likeForums.length,
            itemBuilder: (context, index) => _setForumGrid(_likeForums)[index]
          )
        ]
      )
    )
  );

  Widget _buildPlaceHolder() => GridView.builder
  (
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
    (
      crossAxisCount: 2,
      childAspectRatio: 3.5,
    ),
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    physics: const NeverScrollableScrollPhysics(), shrinkWrap: true,
    itemCount: 30,
    itemBuilder: (context, index) => List.generate(30, (index) => const ForumGridPlaceholder())[index]
  );

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
      leading: IconButton
      (
        icon: Icon(Icons.help_outline, color: Theme.of(context).colorScheme.onSurface),
        onPressed: () => myFlushBar(context: context, message: '长按将吧置顶', duration: 1000)
      ),
      title: InkWell
      (
        child: Container
        (
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          height: 32,
          decoration: BoxDecoration
          (
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Row
          (
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: 
            [
              Icon(Icons.search, size: 16, color: Theme.of(context).colorScheme.onSecondary),
              const SizedBox(width: 8.0),
              Text('搜索', style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.onSecondary))
            ],
          )
        )
      ),
      actions: <Widget>
      [
        IconButton
        (
          icon: Icon(Icons.check_circle_outline_rounded, color: Theme.of(context).colorScheme.onSurface),
          onPressed: () {}
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.surface,
      surfaceTintColor: Theme.of(context).colorScheme.surface,
    ),
    body: FutureBuilder<void>
    (
      future: _dataFuture,
      builder: (context, snapshot) => snapshot.connectionState == ConnectionState.done
      ? Consumer<AccountManager>
      (
        builder: (context, accountManager, child)
        {
          if (accountManager.account != null)
          {
            if (_likeForums.isEmpty) _updateForums();
            return _buildForums();
          }
          else { return const SizedBox.shrink(); }
        }
      )
      : _buildPlaceHolder()
    ),
    backgroundColor: Theme.of(context).colorScheme.surface
  );
}