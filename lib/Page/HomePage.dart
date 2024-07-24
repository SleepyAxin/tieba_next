import 'package:flutter/material.dart';    // 引入Material组件库

class HomePage extends StatefulWidget
{
  const HomePage({ super.key });
  
  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> 
{
  @override
  Widget build(BuildContext context) => Scaffold
  (
    appBar: AppBar
    (
      title: const Text('首页'),
      backgroundColor: Theme.of(context).colorScheme.surface,
      surfaceTintColor: Theme.of(context).colorScheme.surface,
    ),
    backgroundColor: Theme.of(context).colorScheme.surface
  );
}