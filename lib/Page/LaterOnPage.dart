import 'package:flutter/material.dart';    // 引入Material组件库

class LaterOnPage extends StatefulWidget
{
  const LaterOnPage({ super.key });
  
  @override
  State<LaterOnPage> createState() => _LaterOnPageState();
}

class _LaterOnPageState extends State<LaterOnPage>
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