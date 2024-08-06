import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:chinese_font_library/chinese_font_library.dart';

import 'package:tieba_next/CreateRoute.dart';
import 'package:tieba_next/Core/Account.dart';
import 'package:tieba_next/Core/AccountManager.dart';
import 'package:tieba_next/Core/ThemeManager.dart';
import 'package:tieba_next/TieBaAPI/TieBaAPI.dart';
import 'package:tieba_next/Widget/NetworkImageGrid.dart';

class PersonPage extends StatefulWidget
{
  const PersonPage({ super.key });
  
  @override
  State<PersonPage> createState() => PersonPageState();
}

class PersonPageState extends State<PersonPage> with SingleTickerProviderStateMixin
{
  /// 刷新页面
  final _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
  /// 是否显示选择主题的选项
  bool _showThemeOptions = false;
  /// 主题按钮右侧图标
  IconData _themeExpandIcon = Icons.keyboard_arrow_left;
  /// 动画控制器
  late AnimationController _animationController;

  /// 设置横向排列功能按钮
  /// 
  /// [text] 按钮文本
  /// 
  /// [action] 按钮执行动作
  /// 
  /// [lIcon] 最左边按钮图标
  /// 
  /// [rIcon] 最右边按钮图标（可选）
  Widget _setRowButton(String text, Function() action, IconData lIcon, [IconData? rIcon]) => 
  InkWell
  (
    onTap: action,
    child: Container
    (
      padding: const EdgeInsets.all(16.0),    // 上下间距
      child: Row
      (
        mainAxisAlignment: MainAxisAlignment.start,       // 左端对齐
        crossAxisAlignment: CrossAxisAlignment.center,    // 上下中心对齐
        children: 
        [ 
          Icon(lIcon), 
          const SizedBox(width: 8), 
          Expanded(child: Text(text, style: const TextStyle(fontSize: 14.0).useSystemChineseFont())),
          if (rIcon != null) Icon(rIcon)
        ]
      )
    )
  );

  /// 设置竖向排列功能按钮
  /// 
  /// [text] 按钮文本
  /// 
  /// [page] 按钮跳转页面
  /// 
  /// [icon] 按钮图标
  Widget _setColumnButton(String text, Widget page, IconData icon) => ElevatedButton
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
          ).useSystemChineseFont()
        )
      ]
    )
  );

  /// 设置用户头像、信息、前往主页
  /// 
  /// [account] 账号信息
  Container _setUserInfoButton(Account account) => Container
  (
    height: 60,
    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
    child: GestureDetector
    (
      onTap: () => Navigator.push(context, createRoute(const UserPage())),
      child: Row
      (
        mainAxisAlignment: MainAxisAlignment.start,       
        crossAxisAlignment: CrossAxisAlignment.center,    
        children: 
        [
          // 用户头像
          NetworkImageGrid
          (
            width: 60.0, height: 60.0, radius: 8.0, 
            url: TieBaAPI.avatar(account.portrait, false)
          ),
          // 用户昵称 关注 粉丝
          Container
          (
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
            width: MediaQuery.of(context).size.width - 175.0,
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
                Text
                (
                  account.nickname, maxLines: 1, overflow: TextOverflow.ellipsis,
                  style: TextStyle
                  (
                    fontSize: 20.0, fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface
                  ).useSystemChineseFont()
                ),
                const SizedBox(height: 2),
                Text
                (
                  '关注 ${account.followNum}  粉丝 ${account.fansNum}',
                  maxLines: 1, overflow: TextOverflow.ellipsis,
                  style: TextStyle
                  (
                    fontSize: 12.0,
                    color: Theme.of(context).colorScheme.onSurface
                  ).useSystemChineseFont()
                )
              ]
            )
          ),
          // 前往个人主页
          Row
          (
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: 
            [
              Text('个人主页', style: const TextStyle().useSystemChineseFont()), 
              const SizedBox(height: 2), 
              const Icon(Icons.keyboard_arrow_right) 
            ]
          )
        ]
      )
    )
  ); 

  /// 设置我的贴子、关注的吧、收藏、浏览历史
  /// 
  /// [account] 账号信息
  Container _setFunctionButton(Account account) => Container
  (
    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
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
        _setColumnButton('我的贴子', const UserPage(), Icons.article_outlined),
        const SizedBox(width: 12.0),
        _setColumnButton('我的收藏', const FavoritePage(), Icons.favorite_outline),
        const SizedBox(width: 12.0),
        _setColumnButton('稍后再看', const LaterOnPage(), Icons.timer_outlined),
        const SizedBox(width: 12.0),
        _setColumnButton('浏览历史', const HistoryPage(), Icons.history_outlined)
      ],
    )
  );

  /// 设置主题的选项
  /// 
  /// [text] 选项的文本
  /// 
  /// [value] 选项的值
  Widget _setThemeRadioListTile(String text, ThemeMode value) => Consumer<ThemeManager>
  (
    builder: (context, themeManager, child) => RadioListTile<ThemeMode>
    (
      title: Text(text, style: const TextStyle(fontSize: 14).useSystemChineseFont()),
      contentPadding: const EdgeInsets.only(left: 36.0),
      value: value, groupValue: themeManager.themeMode,
      fillColor: WidgetStateProperty.resolveWith<Color>((states) => Theme.of(context).colorScheme.onSurface),
      onChanged: (value) => themeManager.themeMode = value!
    )
  );

  /// 展示选择主题的选项
  SizeTransition _setThemeOptions() => SizeTransition
  (
    sizeFactor: CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    child: Column
    (
      children: 
      [
        _setThemeRadioListTile('跟随系统', ThemeMode.system),
        _setThemeRadioListTile('浅色', ThemeMode.light),
        _setThemeRadioListTile('深色', ThemeMode.dark)
      ]
    )
  );

  /// 是否展示选择主题的选项
  void _selectTheme()
  {
    setState
    (() {
      _showThemeOptions = !_showThemeOptions;
      _showThemeOptions 
      ? { _animationController.forward(), _themeExpandIcon = Icons.keyboard_arrow_down } 
      : { _animationController.reverse(), _themeExpandIcon = Icons.keyboard_arrow_left };
    });
  }

  /// 前往其他页面
  void toAnotherPage(Widget page) => Navigator.push(context, createRoute(page));

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
          ? Column
          (
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: 
            [ 
              _setUserInfoButton(accountManager.account!),
              _setFunctionButton(accountManager.account!)
            ]
          )
          : _setRowButton('前往登录', () => toAnotherPage(const LoginWebPage()), Icons.login);
        }
      ),
      _setRowButton('选择主题', _selectTheme, Icons.color_lens_outlined, _themeExpandIcon),
      _setThemeOptions(),
      _setRowButton('设置', () => toAnotherPage(const SettingsPage()), Icons.settings_outlined),
      _setRowButton('关于', () => toAnotherPage(const AboutPage()), Icons.info_outlined)
    ];
  }

  /// 刷新界面 更新账号信息
  Future<void> refresh() async => await _refreshIndicatorKey.currentState?.show();

  @override
  void initState()
  {
    super.initState();
    _animationController = AnimationController
    (
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() 
  {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold
  (
    appBar: AppBar
    (
      title: Text('我的', style: const TextStyle().useSystemChineseFont()),
      backgroundColor: Theme.of(context).colorScheme.surface
    ),
    body: RefreshIndicator
    (
      key: _refreshIndicatorKey,
      onRefresh: () async => await AccountManager().updateAccount(),
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