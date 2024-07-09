import 'package:flutter/material.dart';    // 引入Material组件库

class History extends StatefulWidget
{
  const History({ super.key });
  
  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History>
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('我的收藏'),
        backgroundColor: Theme.of(context).colorScheme.surface
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}