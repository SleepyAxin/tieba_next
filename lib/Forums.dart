import 'package:flutter/material.dart';    // 引入Material组件库

class Forums extends StatefulWidget
{
  const Forums({ super.key });
  
  @override
  State<Forums> createState() => _ForumsState();
}

class _ForumsState extends State<Forums>
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('我的吧'),
        backgroundColor: Theme.of(context).colorScheme.surface
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}