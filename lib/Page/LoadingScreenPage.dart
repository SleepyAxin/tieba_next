import 'package:flutter/material.dart';
import 'package:chinese_font_library/chinese_font_library.dart';

class LoadingScreenPage extends StatefulWidget
{
  const LoadingScreenPage({ super.key });
  
  @override
  State<LoadingScreenPage> createState() => _LoadingScreenPageState();
}


class _LoadingScreenPageState extends State<LoadingScreenPage> 
{
  @override
  Widget build(BuildContext context) => Scaffold
  (
    body: Center(child: Text('加载中...', style: const TextStyle().useSystemChineseFont())),
    backgroundColor: Theme.of(context).colorScheme.surface
  );
}