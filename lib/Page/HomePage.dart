import 'package:flutter/material.dart';
import 'package:chinese_font_library/chinese_font_library.dart';

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
      title: Text('首页', style: const TextStyle().useSystemChineseFont()),
      backgroundColor: Theme.of(context).colorScheme.surface,
      surfaceTintColor: Theme.of(context).colorScheme.surface,
    ),
    backgroundColor: Theme.of(context).colorScheme.surface
  );
}