import 'package:flutter/material.dart';    // 引入Material组件库

class LoadingScreen extends StatefulWidget
{
  const LoadingScreen({ super.key });
  
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}


class _LoadingScreenState extends State<LoadingScreen> 
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