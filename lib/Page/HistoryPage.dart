import 'package:flutter/material.dart';
import 'package:chinese_font_library/chinese_font_library.dart';

class HistoryPage extends StatefulWidget
{
  const HistoryPage({ super.key });
  
  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
{
  @override
  Widget build(BuildContext context) => Scaffold
  (
    appBar: AppBar
    (
      title: Text('浏览历史', style: const TextStyle().useSystemChineseFont()),
      backgroundColor: Theme.of(context).colorScheme.surface
    ),
    backgroundColor: Theme.of(context).colorScheme.surface
  );
}