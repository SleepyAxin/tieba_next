import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:tieba_next/LoginWeb.dart';    // 引入登录页面

class Person extends StatefulWidget
{
  const Person({ super.key });
  
  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person>
{
  /// 设置按钮样式和内容
  Material _setElevatedButton(String text, dynamic page, IconData icon)
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
            _setElevatedButton('前往登录', const LoginWeb(), Icons.login),
            _setElevatedButton('选择主题', const LoginWeb(), Icons.draw),
            _setElevatedButton('设置', const LoginWeb(), Icons.settings),
            _setElevatedButton('关于', const LoginWeb(), Icons.info),
          ]
        )
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}