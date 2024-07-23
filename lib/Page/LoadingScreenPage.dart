import 'package:flutter/material.dart';    // 引入Material组件库

class LoadingScreenPage extends StatefulWidget
{
  const LoadingScreenPage({ super.key });
  
  @override
  State<LoadingScreenPage> createState() => _LoadingScreenPageState();
}


class _LoadingScreenPageState extends State<LoadingScreenPage> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body: const Center(child: Text('加载中...')),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}