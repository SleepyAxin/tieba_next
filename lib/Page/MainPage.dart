// 主界面
// 包括：首页 进吧 消息 我的
import 'package:flutter/material.dart';    // 引入Material组件库

import 'package:tieba_next/Page/HomePage.dart';    // 引入首页
import 'package:tieba_next/Page/ForumsPage.dart';    // 引入贴吧界面
import 'package:tieba_next/Page/MessagePage.dart';    // 引入消息
import 'package:tieba_next/Page/PersonPage.dart';    // 引入我的

class MainPage extends StatefulWidget 
{
  const MainPage({ super.key });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
{
  /// 当前选中的页面索引
  int _selectedIndex = 0;
  /// 页面
  static final List<Widget> _pages = <Widget>[];
  /// 用于获取Forums页面的状态
  final GlobalKey<ForumsPageState> _forumsKey = GlobalKey<ForumsPageState>();
  /// 用于获取Person页面的状态
  final GlobalKey<PersonPageState> _personKey = GlobalKey<PersonPageState>();

  /// 刷新某个页面
  ///
  /// [index] 页面索引
  void _refreshPage(int index)
  {
    switch (index)
    {
      case 1: _forumsKey.currentState?.refresh(); return;
      case 3: _personKey.currentState?.refresh(); return;
      default: return;
    }
  }

  /// 底部导航栏的点击事件
  void _onItemTapped(int index) => index != _selectedIndex
  ? setState(() => _selectedIndex = index)
  : _refreshPage(index);

  @override
  void initState() 
  { 
    _pages.addAll
    (
      [ 
        const HomePage(), 
        ForumsPage(key: _forumsKey), 
        const MessagePage(), 
        PersonPage(key: _personKey) 
      ]
    ); 
    super.initState(); 
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body: IndexedStack
      (
        index: _selectedIndex, 
        children: _pages
      ),
      bottomNavigationBar: BottomNavigationBar
      (
        items: const <BottomNavigationBarItem>
        [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.forum), label: '进吧'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: '消息'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[500],
        backgroundColor: Theme.of(context).colorScheme.primary,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed    // 固定模式，取消动画效果
      )
    );
  }
}