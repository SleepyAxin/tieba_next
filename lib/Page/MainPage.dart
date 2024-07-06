// 主界面
// 包括：首页 进吧 消息 个人信息
import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:tieba_next/Page/Home.dart';    // 引入首页
import 'package:tieba_next/Page/Forums.dart';    // 引入贴吧界面
import 'package:tieba_next/Page/Message.dart';    // 引入消息
import 'package:tieba_next/Page/Person.dart';    // 引入个人信息

class MainPage extends StatefulWidget 
{
  const MainPage({ super.key });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> 
{
  int _selectedIndex = 0;    // 当前选中的页面索引

  // 定义四个页面
  static const List<Widget> _pages = <Widget>[ Home(), Forums(), Message(), Person() ];

  // 底部导航栏的点击事件
  void _onItemTapped(int index) 
  {
    setState(() { _selectedIndex = index; });
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
          BottomNavigationBarItem( icon: Icon(Icons.home), label: '首页' ),
          BottomNavigationBarItem( icon: Icon(Icons.forum), label: '进吧' ),
          BottomNavigationBarItem( icon: Icon(Icons.notifications), label: '消息'),
          BottomNavigationBarItem( icon: Icon(Icons.person), label: '我的')
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