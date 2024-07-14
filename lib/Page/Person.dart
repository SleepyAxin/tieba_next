import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:provider/provider.dart';    // 引入状态管理库
import 'package:transparent_image/transparent_image.dart';    // 引入透明图片库

// 引入管理器
import 'package:tieba_next/Manager/AccountManager.dart';
import 'package:tieba_next/TieBaAPI/TieBaAPI.dart' as api;    // 引入贴吧API

import 'package:tieba_next/Page/Util.dart' as util;    // 引入工具函数
import 'package:tieba_next/Page/LoginWeb.dart';        // 引入登录页面
import 'package:tieba_next/Page/User.dart';            // 引入个人资料页面
import 'package:tieba_next/Page/Favorite.dart';        // 引入我的收藏页面
import 'package:tieba_next/Page/LaterOn.dart';         // 引入稍后再看页面
import 'package:tieba_next/Page/History.dart';         // 引入浏览历史页面
import 'package:tieba_next/Page/Settings.dart';        // 引入设置页面
import 'package:tieba_next/Page/About.dart';           // 引入关于页面

class Person extends StatefulWidget
{
  const Person({ super.key });
  
  @override
  State<Person> createState() => PersonState();
}

class PersonState extends State<Person>
{
  /// 刷新页面
  final _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  /// 设置横向排列功能按钮
  /// 
  /// [text] 按钮文本
  /// 
  /// [page] 按钮跳转页面
  /// 
  /// [icon] 按钮图标
  Material _setRowButton(String text, dynamic page, IconData icon)
  {
    return Material
    (
      color: Theme.of(context).colorScheme.surface,
      child: InkWell
      (
        onTap: () => Navigator.push(context, util.createRoute(page)),
        child: Container
        (
          padding: const EdgeInsets.all(16.0),    // 上下间距
          decoration: const BoxDecoration(color: Colors.transparent),
          child: Row
          (
            mainAxisAlignment: MainAxisAlignment.start,       // 左端对齐
            crossAxisAlignment: CrossAxisAlignment.center,    // 上下中心对齐
            children: 
            [
              Icon(icon, color: Theme.of(context).colorScheme.onSurface),
              const SizedBox(width: 8),    // 图标和文本之间的间距
              Text(text, style: TextStyle(color: Theme.of(context).colorScheme.onSurface)),
            ]
          )
        )
      )
    );
  }

  /// 设置竖向排列功能按钮
  /// 
  /// [text] 按钮文本
  /// 
  /// [page] 按钮跳转页面
  /// 
  /// [count] 按钮计数数字
  ElevatedButton _setColumnButton(String text, dynamic page, int? count)
  {
    return ElevatedButton
    (
      onPressed: () => Navigator.push(context, util.createRoute(page)),
      style: ElevatedButton.styleFrom
      (
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0)
      ),
      child: Column
      (
        mainAxisAlignment: MainAxisAlignment.center,       // 中心对齐
        crossAxisAlignment: CrossAxisAlignment.center,    // 上下中心对齐
        children: 
        [
          Text
          (
            count != null ? count.toString() : '0', 
            style: TextStyle
            (
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.bold,    // 加粗
              fontSize: 22    // 加大
            )
          ),
          const SizedBox(width: 8),    // 计数和文本之间的间距
          Text
          (
            text, 
            style: TextStyle
            (
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: 12    // 减小
            )
          )
        ]
      )
    );
  }

  /// 设置用户信息按钮
  Consumer<AccountManager> _setAccountButton()
  {
    return Consumer<AccountManager>
    (
      builder: (context, accountManager, child)
      {
        return accountManager.account != null
        // 如果已登录，显示用户信息
        ? Material
        (
          color: Theme.of(context).colorScheme.surface,
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.start,       // 左端对齐
            crossAxisAlignment: CrossAxisAlignment.center,    // 上下中心对齐
            children: 
            [
              // 用户头像 信息 主页
              GestureDetector
              (
                onTap: () => Navigator.push(context, util.createRoute(const User(isMine: true))),
                child: Container
                (
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.start,       // 向左对齐
                    crossAxisAlignment: CrossAxisAlignment.center,    // 上下中心对齐
                    children: 
                    [
                      // 用户头像
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
                            image: api.getAvatar(accountManager.account?.portrait, false),
                            fit: BoxFit.contain
                          )
                        )
                      ),
                      // 用户昵称 关注 粉丝
                      Container
                      (
                        height: 60,
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: Column
                        (
                          crossAxisAlignment: CrossAxisAlignment.start,    // 左端对齐
                          children: 
                          [
                            Text
                            (
                              accountManager.account?.nickname ?? '', 
                              style: TextStyle
                              (
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Theme.of(context).colorScheme.onSurface
                              )
                            ),
                            const SizedBox(height: 2),
                            Text
                            (
                              '关注 ${accountManager.account?.followNum ?? ''}  '
                              '粉丝 ${accountManager.account?.fansNum ?? ''}',
                              style: TextStyle
                              (
                                fontSize: 12,
                                color: Theme.of(context).colorScheme.onSurface
                              )
                            )
                          ]
                        )
                      ),
                      // 前往个人主页
                    ]
                  ),
                )
              ),
              // 我的贴子 关注的吧 收藏 浏览历史
              Container
              (
                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                decoration: BoxDecoration
                (
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12.0)
                ),
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.center,       // 中心对齐
                  crossAxisAlignment: CrossAxisAlignment.center,    // 上下中心对齐
                  children: 
                  [
                    _setColumnButton('我的贴子', const User(isMine: true), accountManager.account?.threadNum),
                    const SizedBox(width: 8),    // 按钮之间的间距
                    _setColumnButton('我的收藏', const Favorite(), null),
                    const SizedBox(width: 8),    // 按钮之间的间距
                    _setColumnButton('稍后再看', const LaterOn(), null),
                    const SizedBox(width: 8),    // 按钮之间的间距
                    _setColumnButton('浏览历史', const History(), null)
                  ],
                )
              )
            ],
          )
        )
        // 如果未登录，显示登录按钮
        : _setRowButton('前往登录', const LoginWeb(), Icons.login);
      }
    );
  }

  /// 刷新界面 更新账号信息
  Future<void> refresh() async => await _refreshIndicatorKey.currentState?.show();

  /// 更新账号信息
  Future<void> _refresh() async => await AccountManager().updateAccount();
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('我的'),
        backgroundColor: Theme.of(context).colorScheme.surface
      ),
      body: RefreshIndicator
      (
        key: _refreshIndicatorKey,
        onRefresh: _refresh,
        displacement: 5.0,
        color: Colors.blue,
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: SingleChildScrollView
        (
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: 
            [
              _setAccountButton(),   
              _setRowButton('设置', const Settings(), Icons.settings),
              _setRowButton('关于', const About(), Icons.info)
            ]
          )
        )
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}