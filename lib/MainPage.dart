// 主界面
// 包括：首页 动态 消息 个人信息
import 'package:flutter/material.dart';    // 引入Material组件库
import './Home.dart';    // 引入首页
import './Trends.dart';    // 引入消息

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
  static const List<Widget> _pages = <Widget>[ Home(), Trends(), Home(), Home() ];

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
          BottomNavigationBarItem( icon: Icon(Icons.message), label: '动态' ),
          BottomNavigationBarItem( icon: Icon(Icons.message), label: '消息' ),
          BottomNavigationBarItem( icon: Icon(Icons.person), label: '个人' )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed    // 固定模式，取消动画效果
      ),
    );
  }
}