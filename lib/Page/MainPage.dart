// 主界面
// 包括：首页 进吧 消息 我的
import 'package:flutter/material.dart';    // 引入Material组件库

import 'package:tieba_next/Page/Home.dart';    // 引入首页
import 'package:tieba_next/Page/Forums.dart';    // 引入贴吧界面
import 'package:tieba_next/Page/Message.dart';    // 引入消息
import 'package:tieba_next/Page/Person.dart';    // 引入我的

import 'package:tieba_next/Core/AccountManager.dart';

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
  /// 是否第一次点击某页面
  final List<bool> _isFirstClick = [ false, false, false, true ];
  /// 用于获取页面的状态
  final List _key = 
  [
    GlobalKey<PersonState>(), GlobalKey<ForumsState>(), 
    GlobalKey<PersonState>(), GlobalKey<PersonState>()
  ];

  /// 底部导航栏的点击事件
  void _onItemTapped(int index)
  {
    if (!_isFirstClick[index])
    {
      _isFirstClick[index] = true;
      _key[index].currentState?.refresh();
    }

    if (index != _selectedIndex)
    {
      setState(() => _selectedIndex = index);
      return;
    }
    // 如果点击的是当前页面，则刷新当前页面
    _key[index].currentState?.refresh();
  }

  @override
  void initState() 
  { 
    super.initState();
    AccountManager().updateAccount();
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
          Forums(key: _key[1]), 
          const Message(), 
          Person(key: _key[3]) 
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