import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:provider/provider.dart';    // 引入状态管理库

import 'package:tieba_next/Manager.dart';    // 引入用户信息管理器

import 'package:tieba_next/Page/Util.dart' as util;    // 引入工具函数
import 'package:tieba_next/Page/LoginWeb.dart';    // 引入登录页面
import 'package:tieba_next/Page/User.dart';    // 引入个人资料页面
import 'package:tieba_next/Page/Forums.dart';    // 引入我的贴吧页面
import 'package:tieba_next/Page/Favorite.dart';    // 引入收藏页面
import 'package:tieba_next/Page/History.dart';    // 引入浏览历史页面
import 'package:tieba_next/Page/Settings.dart';    // 引入设置页面
import 'package:tieba_next/Page/About.dart';    // 引入关于页面

class Person extends StatefulWidget
{
  const Person({ super.key });
  
  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person>
{
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
        padding: const EdgeInsets.all(10)
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
          ),
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
        return accountManager.account == null
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
              // 用户头像 信息
              Row(),
              // 我的贴子 关注的吧 收藏 浏览历史
              Container
              (
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Material
                (
                  color: Theme.of(context).colorScheme.secondary,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.center,       // 中心对齐
                    crossAxisAlignment: CrossAxisAlignment.center,    // 上下中心对齐
                    children: 
                    [
                      _setColumnButton('我的贴子', const User(isMine: true), null),
                      const SizedBox(width: 8),    // 按钮之间的间距
                      _setColumnButton('关注的吧', const Forums(), null),
                      const SizedBox(width: 8),    // 按钮之间的间距
                      _setColumnButton('我的收藏', const Favorite(), null),
                      const SizedBox(width: 8),    // 按钮之间的间距
                      _setColumnButton('浏览历史', const History(), null)
                    ],
                  ),
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

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('我的'),
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: Column
      (
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
        [
          _setAccountButton(),   
          _setRowButton('设置', const Settings(), Icons.settings),
          _setRowButton('关于', const About(), Icons.info)
        ]
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}