import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:provider/provider.dart';
import 'package:tieba_next/Core/SettingsManager.dart';
import 'package:transparent_image/transparent_image.dart';    // 引入透明图片库

import 'package:tieba_next/Core/Forum.dart';    // 引入吧类
import 'package:tieba_next/Core/Account.dart';    // 引入用户信息
import 'package:tieba_next/Core/AccountManager.dart';    // 引入用户信息管理器
import 'package:tieba_next/TieBaAPI/TieBaAPI.dart' as api;    // 引入TieBaAPI

class Forums extends StatefulWidget
{
  const Forums({ super.key });
  
  @override
  State<Forums> createState() => ForumsState();
}

class ForumsState extends State<Forums>
{
  /// 我关注的吧列表
  final List<Forum> _likeForums = [];
  /// 刷新页面
  final _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
  /// 是否已经初始化
  bool _isInit = false;

  /// 获得关注或推荐贴吧
  /// 
  /// [account] 用户信息
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
  /// 
  /// [account] 用户信息
  Future<void> _initData(Account? account) async
  {
    if (_isInit) return;
    await Future.delayed(const Duration(milliseconds: 1000));
    final List<Forum> forums = await _getForums(account);
    _likeForums.replaceRange(0, _likeForums.length, forums);
    setState(() => _isInit = true);
  }

  /// 刷新界面 更新关注贴吧
  Future<void> refresh() async => await _refreshIndicatorKey.currentState?.show();

  /// 更新关注贴吧
  /// 
  /// [account] 用户信息
  Future<void> _updateForums(Account? account) async
  {
    final List<Forum> forums = await _getForums(account);
    setState(() => _likeForums.replaceRange(0, _likeForums.length, forums) );
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
      onTap: () => {},
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

  /// 创建吧列表
  /// 
  /// [account] 当前登录账号
  RefreshIndicator _buildForums(Account? account) => RefreshIndicator
  (
    key: _refreshIndicatorKey,
    onRefresh: () => _updateForums(account),
    displacement: 0.0,
    color: Colors.blue,
    backgroundColor: Theme.of(context).colorScheme.primary,
    child: ListView
    (
      children: 
      [
        account != null
        ? _setInfoText('关注的吧', Icons.forum_outlined)
        : _setInfoText('推荐关注', Icons.forum_outlined),
        Consumer<SettingsManager>
        (
          builder: (context, settingsManager, child) => Container
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
                  style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.onSecondary)
                ),
                InkWell
                (
                  onTap: () => {},
                  child: Text
                  (
                    '不再显示',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.blue)
                  ),
                )
              ],
            ),
          ),
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
  );

  /// 创建加载空部件
  GridView _buildEmpty() => GridView.count
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
  );

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('我的吧'),
        backgroundColor: Theme.of(context).colorScheme.surface,
        surfaceTintColor: Theme.of(context).colorScheme.surface,
      ),
      body: Consumer<AccountManager>
      (
        builder: (context, accountManager, child) => FutureBuilder
        (
          future: _initData(accountManager.account),
          builder: (context, snapshot) => _isInit
          ? _buildForums(accountManager.account)
          : _buildEmpty(),
        )
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}