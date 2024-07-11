import 'package:flutter/material.dart';    // 引入Material组件库

class LaterOn extends StatefulWidget
{
  const LaterOn({ super.key });
  
  @override
  State<LaterOn> createState() => _LaterOnState();
}

class _LaterOnState extends State<LaterOn>
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('稍后再看'),
        backgroundColor: Theme.of(context).colorScheme.surface
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}