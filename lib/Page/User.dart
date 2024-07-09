import 'package:flutter/material.dart';    // 引入Material组件库

class User extends StatefulWidget
{
  final bool isMine;

  /// 个人资料页面
  /// 
  /// [isMine] 是否是当前用户
  const User({ super.key, required this.isMine });
  
  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User>
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        backgroundColor: Theme.of(context).colorScheme.surface
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}