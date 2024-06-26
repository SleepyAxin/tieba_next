import 'package:flutter/material.dart';    // 引入Material组件库

class Trends extends StatefulWidget
{
  const Trends({ super.key });
  
  @override
  State<Trends> createState() => _TrendsState();
}

class _TrendsState extends State<Trends>
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('动态'),
      )
    );
  }
}