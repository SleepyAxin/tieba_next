import 'package:flutter/material.dart';    // 引入Material组件库

class About extends StatefulWidget
{
  const About({ super.key });
  
  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About>
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('关于'),
        backgroundColor: Theme.of(context).colorScheme.surface
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}