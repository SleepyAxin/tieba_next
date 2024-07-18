import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';    // 引入透明图片库

import 'package:tieba_next/Core/Forum.dart';    // 引入吧类
import 'package:tieba_next/Core/Account.dart';    // 引入用户信息
import 'package:tieba_next/Core/AccountManager.dart';    // 引入用户信息管理器
import 'package:tieba_next/Core/ThemeManager.dart';    // 引入主题管理器
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
  List<Forum> _likeForums = [];
  /// 刷新页面
  final _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  /// 刷新界面 更新关注贴吧
  Future<void> refresh() async => await _refreshIndicatorKey.currentState?.show();

  /// 更新关注贴吧
  /// 
  /// [account] 用户信息
  Future<void> _refresh(Account? account) async
  {
    if (account == null) return;

    String? bduss = account.bduss;
    String? stoken = account.stoken;
    int likeForumNum = account.likeForumNum ?? -1;
    final List<Forum> likeForums = [];

    List<Future<List<Forum>?>> futures = [];
    for (int i = 1; i <= likeForumNum / 20 + 1; i++)
    {
      futures.add(api.getMyLikeForums(bduss, stoken, 0, i, 20));
    }

    final List<List<Forum>?> results = await Future.wait(futures);
    for (List<Forum>? data in results) { if (data != null) likeForums.addAll(data); }

    setState(() => _likeForums = likeForums);
  }

  /// 处理过长吧名
  /// 
  /// [name] 吧名
  String _handleForumName(String name) => name.length >= 6 ? name.substring(0, 6) : name;

  /// 处理吧热度值为字符串
  /// 
  /// [hotNum] 吧热度值
  String _handleHotNum(int hotNum)
  {
    if (hotNum < 10000) return hotNum.toString();
    return '${(hotNum / 10000).toStringAsFixed(1)}万';
  }

  List<Widget> _setForumGrid(List<Forum> forums)
  {
    List<Widget> list = [];
    for (Forum forum in forums)
    {
      list.add
      (
        InkWell
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
              Container
              (
                width: 36, height: 36,
                decoration: BoxDecoration
                (
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: ClipRRect
                (
                  borderRadius: BorderRadius.circular(8.0),
                  child: FadeInImage.memoryNetwork
                  (
                    placeholder: kTransparentImage,
                    image: forum.avatarURL!,
                    fit: BoxFit.cover
                  )
                )
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
                          if (forum.name != null) Text
                          (
                            _handleForumName(forum.name!), 
                            style: TextStyle
                            (
                              fontSize: 12,
                              color: Theme.of(context).colorScheme.onSurface
                            )
                          ),
                          if (forum.userLevel != null) Container
                          (
                            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                            decoration: BoxDecoration
                            (
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(4.0)
                            ),
                            child: Text
                            (
                              'Lv.${forum.userLevel!}',
                              style: TextStyle
                              (
                                fontSize: 10, 
                                color: Theme.of(context).colorScheme.onSecondary
                              )
                            ),
                          )
                        ],
                      ),
                      // 吧热度
                      if (forum.hotNum != null) Row
                      (
                        mainAxisAlignment: MainAxisAlignment.start,       // 左端对齐
                        crossAxisAlignment: CrossAxisAlignment.center,    // 上下中心对齐
                        children: 
                        [ 
                          const Icon(Icons.local_fire_department_outlined, size: 12.0), 
                          const SizedBox(width: 2),
                          Text
                          (
                            '热度：${_handleHotNum(forum.hotNum!)}', 
                            style: const TextStyle(fontSize: 10)
                          )
                        ]
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12.0),
            ]
          )
        )
      );
    }
    return list;
  }

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
        builder: (context, accountManager, child) => RefreshIndicator
        (
          key: _refreshIndicatorKey,
          onRefresh: () => _refresh(accountManager.account),
          displacement: 5.0,
          color: Colors.blue,
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: ListView
          (
            children: 
            [
              _likeForums.isNotEmpty
              ? GridView.count
              (
                crossAxisCount: 2, childAspectRatio: 3.5,
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                physics: const NeverScrollableScrollPhysics(), shrinkWrap: true,
                children: _setForumGrid(_likeForums)
              )
              : const Center(child: Text('暂无关注吧'))
            ],
          )
        )
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}