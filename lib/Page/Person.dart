import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:provider/provider.dart';    // 引入状态管理库
import 'package:transparent_image/transparent_image.dart';    // 引入透明图片库

import 'package:tieba_next/CreateRoute.dart';    // 引入路由
import 'package:tieba_next/Core/Account.dart';
import 'package:tieba_next/Core/AccountManager.dart';
import 'package:tieba_next/Core/ThemeManager.dart';
import 'package:tieba_next/TieBaAPI/TieBaAPI.dart' as api;    // 引入贴吧API

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
  /// [action] 按钮执行动作
  /// 
  /// [icon] 按钮图标
  Material _setRowButton(String text, Function() action, IconData icon)
  {
    return Material
    (
      color: Theme.of(context).colorScheme.surface,
      child: InkWell
      (
        onTap: action,
        child: Container
        (
          padding: const EdgeInsets.all(16.0),    // 上下间距
          decoration: const BoxDecoration(color: Colors.transparent),
          child: Row
          (
            mainAxisAlignment: MainAxisAlignment.start,       // 左端对齐
            crossAxisAlignment: CrossAxisAlignment.center,    // 上下中心对齐
            children: [ Icon(icon), const SizedBox(width: 8), Text(text) ]
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
  /// [icon] 按钮图标
  ElevatedButton _setColumnButton(String text, Widget page, IconData icon)
  {
    return ElevatedButton
    (
      onPressed: () => Navigator.push(context, createRoute(page)),
      style: ElevatedButton.styleFrom
      (
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0)
      ),
      child: Column
      (
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: 
        [
          Icon
          (
            icon,
            size: 30,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          const SizedBox(height: 4),    // 图标和文本之间的间距
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
  Material _setAccountButton(Account account)
  {
    return Material
    (
      color: Theme.of(context).colorScheme.surface,
      child: Column
      (
        mainAxisAlignment: MainAxisAlignment.start,       
        crossAxisAlignment: CrossAxisAlignment.center,    
        children: 
        [
          // 用户头像 信息 主页
          InkWell
          (
            onTap: () => Navigator.push(context, createRoute(const User())),
            child: Container
            (
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
              child: Row
              (
                mainAxisAlignment: MainAxisAlignment.start,       
                crossAxisAlignment: CrossAxisAlignment.center,    
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
                        image: api.getAvatar(account.portrait, false),
                        fit: BoxFit.cover
                      )
                    )
                  ),
                  // 用户昵称 关注 粉丝
                  Expanded
                  (
                    child: Container
                    (
                      height: 60,
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      child: Column
                      (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: 
                        [
                          Text
                          (
                            account.nickname, 
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
                            '关注 ${account.followNum}  '
                            '粉丝 ${account.fansNum}',
                            style: TextStyle
                            (
                              fontSize: 12,
                              color: Theme.of(context).colorScheme.onSurface
                            )
                          )
                        ]
                      )
                    ),
                  ),
                  // 前往个人主页
                  const SizedBox
                  (
                    height: 60,
                    child: Row
                    (
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:
                      [
                        Text('个人主页', style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 2),
                        Icon(Icons.keyboard_arrow_right)
                      ]
                    ),
                  )
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
                _setColumnButton('我的贴子', const User(), Icons.article_outlined),
                const SizedBox(width: 12),    // 按钮之间的间距
                _setColumnButton('我的收藏', const Favorite(), Icons.favorite_outline),
                const SizedBox(width: 12),    // 按钮之间的间距
                _setColumnButton('稍后再看', const LaterOn(), Icons.timer_outlined),
                const SizedBox(width: 12),    // 按钮之间的间距
                _setColumnButton('浏览历史', const History(), Icons.history_outlined)
              ],
            )
          )
        ],
      )
    );
  }

  Function() _selectTheme() => () => showDialog
  (
    context: context,
    barrierDismissible: true,    // 允许点击空白区域关闭对话框
    builder: (BuildContext context) 
    {
      /// 主题管理器
      ThemeManager themeManager = ThemeManager();
      /// 主题模式
      ThemeMode themeMode = themeManager.themeMode;

      return StatefulBuilder
      (
        builder: (context, setState) => AlertDialog
        (
          title: const Text('选择主题'),
          backgroundColor: Theme.of(context).colorScheme.surface,
          iconColor: Theme.of(context).colorScheme.onSurface,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.0))),
          content: SingleChildScrollView
          (
            child: ListBody
            (
              children: <Widget>
              [
                const SizedBox(height: 8),
                RadioListTile<ThemeMode>
                (
                  title: const Text('跟随系统'), value: ThemeMode.system, groupValue: themeMode,
                  fillColor: WidgetStateProperty.resolveWith<Color>((states) => Theme.of(context).colorScheme.onSurface),
                  onChanged: (value) => setState(() => themeMode = ThemeMode.system)
                ),
                RadioListTile<ThemeMode>
                (
                  title: const Text('浅色'), value: ThemeMode.light, groupValue: themeMode,
                  fillColor: WidgetStateProperty.resolveWith<Color>((states) => Theme.of(context).colorScheme.onSurface),
                  onChanged: (value) => setState(() => themeMode = ThemeMode.light)
                ),
                RadioListTile<ThemeMode>
                (
                  title: const Text('深色'), value: ThemeMode.dark, groupValue: themeMode,
                  fillColor: WidgetStateProperty.resolveWith<Color>((states) => Theme.of(context).colorScheme.onSurface),
                  onChanged: (value) => setState(() => themeMode = ThemeMode.dark)
                )
              ]
            )
          ),
          actions: <Widget>
          [
            TextButton
            (
              onPressed: () 
              {
                themeManager.set(themeMode);
                Navigator.of(context).pop();
              },
              child: Text('确定', style: TextStyle(color: Theme.of(context).colorScheme.onSurface))
            )
          ]
        )
      );
    }
  );

  /// 前往其他页面
  Function() toAnotherPage(Widget page) => () => Navigator.push(context, createRoute(page));

  /// 设置功能按钮
  List<Widget> _setButton()
  {
    return <Widget>
    [
      Consumer<AccountManager>
      (
        builder: (context, accountManager, child)
        {
          return accountManager.account != null
          ? _setAccountButton(accountManager.account!)
          : _setRowButton('前往登录', toAnotherPage(const LoginWeb()), Icons.login);
        }
      ),
      _setRowButton('选择主题', _selectTheme(), Icons.color_lens_outlined),
      _setRowButton('设置', toAnotherPage(const Settings()), Icons.settings_outlined),
      _setRowButton('关于', toAnotherPage(const About()), Icons.info_outlined)
    ];
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
        displacement: 0.0,
        color: Colors.blue,
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: SingleChildScrollView
        (
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _setButton()
          )
        )
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}