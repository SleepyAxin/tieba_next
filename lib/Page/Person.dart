import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:tieba_next/Page/LoginWeb.dart';    // 引入登录页面
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
  /// 设置按钮样式和内容
  Material _setButton(String text, dynamic page, IconData icon)
  {
    return Material(
      color: Theme.of(context).colorScheme.surface,
      child: InkWell
      (
        onTap: () 
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) => page));
        },
        child: Container
        (
          padding: const EdgeInsets.all(15.0),    // 上下间距
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
      body: Padding
      (
        padding: const EdgeInsets.all(0.0),
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          [
            _setButton('前往登录', const LoginWeb(), Icons.login),
            // 添加分隔条
            Divider
            (
              color: Colors.grey[100],
              indent: 16,    // 左边距
              endIndent: 16    // 右边距
            ),    
            _setButton('设置', const Settings(), Icons.settings),
            _setButton('关于', const About(), Icons.info),
          ]
        )
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}