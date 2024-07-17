// 主界面
// 包括：首页 进吧 消息 我的
import 'package:flutter/material.dart';    // 引入Material组件库

import 'package:tieba_next/Page/Home.dart';    // 引入首页
import 'package:tieba_next/Page/Forums.dart';    // 引入贴吧界面
import 'package:tieba_next/Page/Message.dart';    // 引入消息
import 'package:tieba_next/Page/Person.dart';    // 引入我的

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
  /// 用于获取Person页面的状态
  final GlobalKey<PersonState> _personKey = GlobalKey<PersonState>();

  /// 底部导航栏的点击事件
  void _onItemTapped(int index)
  {
    if (index != _selectedIndex)
    {
      setState(() { _selectedIndex = index; });
      return;
    }
    // 如果点击的是当前页面，则刷新当前页面
    switch (_selectedIndex)
    {
      case 0: break;
      case 1: break;
      case 2: break;
      case 3: _personKey.currentState?.refresh(); break;
      default: break;
    }
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body: IndexedStack
      (
        index: _selectedIndex, 
        children: 
        [ 
          const Home(), 
          const Forums(), 
          const Message(), 
          Person(key: _personKey) 
        ]
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