import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:provider/provider.dart';
import 'package:tieba_next/Core/SettingsManager.dart';
import 'package:tieba_next/Widget/MyFlushBar.dart';
import 'package:transparent_image/transparent_image.dart';    // 引入透明图片库

import 'package:tieba_next/Core/Forum.dart';    // 引入吧类
import 'package:tieba_next/Core/Account.dart';    // 引入用户信息
import 'package:tieba_next/Core/AccountManager.dart';    // 引入用户信息管理器
import 'package:tieba_next/TieBaAPI/TieBaAPI.dart' as api;    // 引入TieBaAPI

class ForumsPage extends StatefulWidget
{
  const ForumsPage({ super.key });
  
  @override
  State<ForumsPage> createState() => ForumsPageState();
}

class ForumsPageState extends State<ForumsPage>
{
  /// 我关注的吧列表
  List<Forum> _likeForums = [];
  /// 置顶吧列表
  List<Forum> _topForums = [];
  /// 刷新页面
  final _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
  /// 是否已经初始化
  bool _isInit = false;

  /// 获得关注或推荐贴吧
  /// 
  /// [account] 当前账户
  Future<List<Forum>> _getForums(Account? account) async
  {
    if (account == null) return [];
    final String bduss = account.bduss;
    final String stoken = account.stoken;
    final int likeForumNum = account.likeForumNum;
    final List<Forum>? forums = await api.getMyLikeForums(bduss, stoken, likeForumNum);
    return forums ?? [];
  }

  /// 初始化吧列表数据
  Future<void> _initData() async
  {
    if (_isInit) return;
    final List<Forum> likeforums = await _getForums(AccountManager().account);
    _likeForums = List<Forum>.from(likeforums);
    
    final List<Forum> topForums = [];
    for (int id in SettingsManager().topForums)
    {
      int index = likeforums.indexWhere((element) => element.id == id);
      if (index != -1) topForums.add(likeforums[index]);
    }
    _topForums = List<Forum>.from(topForums);
    setState(() => _isInit = true);
  }

  /// 刷新界面 更新关注贴吧
  Future<void> refresh() async => await _refreshIndicatorKey.currentState?.show();

  /// 更新关注和置顶贴吧
  /// 
  /// [account] 当前账户
  Future<void> _updateForums(Account? account) async
  {
    debugPrint('更新吧列表');
    final List<Forum> forums = await _getForums(account);
    setState(() => _likeForums = List.from(forums) );

    final List<Forum> topForums = [];
    for (int id in SettingsManager().topForums)
    {
      int index = forums.indexWhere((element) => element.id == id);
      if (index != -1) topForums.add(forums[index]);
    }
    setState(() => _topForums = List<Forum>.from(topForums) );
  }

  /// 处理过长吧名
  /// 
  /// [name] 吧名
  String _handleForumName(String name) => name.length >= 6 ? name.substring(0, 6) : name;

  /// 处理吧热度值为字符串
  /// 
  /// [hotNum] 吧热度值
  String _handleHotNum(int hotNum) => hotNum < 10000
  ? hotNum.toString()
  : '${(hotNum / 10000).toStringAsFixed(1)}万';

  /// 设置吧列表
  /// 
  /// [forums] 吧列表
  List<Widget> _setForumGrid(List<Forum> forums) => List<Widget>.generate
  (forums.length, (index) => InkWell
    (
      onTap: () {},
      onLongPress: () 
      {
        final Forum forum = forums[index];
        !_topForums.contains(forum)
        ? { setState(() => _topForums.add(forum) ), SettingsManager().addTopForum(forum.id) }
        : { setState(() => _topForums.remove(forum) ), SettingsManager().removeTopForum(forum.id) };
      },
      child: Row
      (
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: 
        [
          const SizedBox(width: 12.0),
          // 吧头像
          Stack
          (
            clipBehavior: Clip.none,    // 允许溢出部分显示
            children: 
            [
              Container
              (
                width: 36, height: 36,
                decoration: BoxDecoration
                (
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(4.0)
                ),
                child: ClipRRect
                (
                  borderRadius: BorderRadius.circular(4.0),
                  child: FadeInImage.memoryNetwork
                  (
                    placeholder: kTransparentImage,
                    image: forums[index].avatarURL,
                    fit: BoxFit.cover
                  )
                )
              ),
              if(forums[index].isSign) Positioned
              (
                right: 0, bottom: 0,
                child: Container
                (
                  width: 12, height: 12,
                  decoration: BoxDecoration
                  (
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(4.0))
                  ),
                  child: const Icon(Icons.check_outlined, size: 10)
                )
              )
            ],
          ),
          // 吧名字 用户等级 热度
          Expanded
          (
            child: Container
            (
              height: 36,
              padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
              child: Column
              (
                crossAxisAlignment: CrossAxisAlignment.start,
                children: 
                [
                  // 吧名字 用户等级
                  Row
                  (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: 
                    [
                      Text
                      (
                        _handleForumName(forums[index].name), 
                        style: TextStyle
                        (
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.onSurface
                        )
                      ),
                      Container
                      (
                        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                        decoration: BoxDecoration
                        (
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(4.0)
                        ),
                        child: Text
                        (
                          'Lv.${forums[index].userLevel}',
                          style: TextStyle
                          (
                            fontSize: 10, 
                            color: Theme.of(context).colorScheme.onSecondary
                          )
                        ),
                      )
                    ],
                  ),
                  // 吧热度 是否签到
                  Row
                  (
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: 
                    [ 
                      const Icon(Icons.local_fire_department_outlined, size: 12.0), 
                      const SizedBox(width: 2),
                      Text
                      (
                        '热度：${_handleHotNum(forums[index].hotNum)}', 
                        style: const TextStyle(fontSize: 10)
                      )
                    ]
                  )
                ]
              )
            )
          ),
          const SizedBox(width: 12.0),
        ]
      )
    )
  );

  /// 设置分区域文本
  /// 
  /// [text] 文本内容
  /// 
  /// [icon] 图标
  Container _setInfoText(String text, IconData icon)
  {
    return Container
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
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        leading: IconButton
        (
          icon: Icon(Icons.help_outline, color: Theme.of(context).colorScheme.onSurface),
          onPressed: () => myFlushBar(context, '双击置顶吧，长按复制吧名', 3000)
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
            onPressed: () {},
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.surface,
        surfaceTintColor: Theme.of(context).colorScheme.surface,
      ),
      body: FutureBuilder
      (
        future: _initData(),
        builder: (context, snapshot) => _isInit
        ? Consumer<AccountManager>
        (
          builder: (context, accountManager, child) => accountManager.account != null
          ? RefreshIndicator
          (
            key: _refreshIndicatorKey,
            onRefresh: () async => _updateForums(accountManager.account),
            displacement: 0.0,
            color: Colors.blue,
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: ListView
            (
              children: 
              [
                if (_topForums.isNotEmpty) ...
                [
                  _setInfoText('置顶的吧', Icons.forum_outlined),
                  GridView.count
                  (
                    crossAxisCount: 2, childAspectRatio: 3.5,
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    physics: const NeverScrollableScrollPhysics(), shrinkWrap: true,
                    children: _setForumGrid(_topForums)
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
                GridView.count
                (
                  crossAxisCount: 2, childAspectRatio: 3.5,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  physics: const NeverScrollableScrollPhysics(), shrinkWrap: true,
                  children: _setForumGrid(_likeForums)
                )
              ]
            )
          )
          : const SizedBox.shrink()
        )
        : GridView.count
        (
          crossAxisCount: 2, childAspectRatio: 3.5,
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          physics: const NeverScrollableScrollPhysics(), shrinkWrap: true,
          children: List.generate
          (30, (index) => Row
          (
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: 
            [
              const SizedBox(width: 12.0),
              Container
              (
                width: 36, height: 36,
                decoration: BoxDecoration
                (
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(8.0)
                ),
              ),
              const SizedBox(width: 4.0),
              Column
              (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: 
                [
                  Container(width: 64, height: 16, color: Theme.of(context).colorScheme.secondary),
                  const SizedBox(height: 4.0),
                  Container(width: 80, height: 12, color: Theme.of(context).colorScheme.secondary)
                ]
              )
            ]
          )
          )
        )
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}