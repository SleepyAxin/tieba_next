import 'package:flutter/material.dart';    // 引入Material组件库

class Home extends StatefulWidget
{
  const Home({ super.key });
  
  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('首页'),
        backgroundColor: Theme.of(context).colorScheme.surface
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}