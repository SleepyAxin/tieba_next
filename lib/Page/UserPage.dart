import 'package:flutter/material.dart';    // 引入Material组件库

class UserPage extends StatefulWidget
{
  /// 个人资料页面
  const UserPage({ super.key});
  
  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage>
{
  @override
  Widget build(BuildContext context) => Scaffold
  (
    appBar: AppBar
    (
      backgroundColor: Theme.of(context).colorScheme.surface
    ),
    backgroundColor: Theme.of(context).colorScheme.surface
  );
}