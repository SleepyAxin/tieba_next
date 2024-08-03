import 'package:flutter/material.dart';
import 'package:chinese_font_library/chinese_font_library.dart';

class LaterOnPage extends StatefulWidget
{
  const LaterOnPage({ super.key });
  
  @override
  State<LaterOnPage> createState() => _LaterOnPageState();
}

class _LaterOnPageState extends State<LaterOnPage>
{
  @override
  Widget build(BuildContext context) => Scaffold
  (
    appBar: AppBar
    (
      title: Text('稍后再看', style: const TextStyle().useSystemChineseFont()),
      backgroundColor: Theme.of(context).colorScheme.surface
    ),
    backgroundColor: Theme.of(context).colorScheme.surface
  );
}