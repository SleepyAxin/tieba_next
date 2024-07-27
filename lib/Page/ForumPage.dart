import 'package:flutter/material.dart';

import 'package:tieba_next/TieBaAPI/TieBaAPI.dart';

class ForumPage extends StatefulWidget
{
  final String forumName;

  const ForumPage(this.forumName,{ super.key });
  
  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage>
{
  /// 初始化加载的数据
  late Future<void> _dataFuture;

  Future<void> _initData() async
  {
    await TieBaAPI.forumHome(widget.forumName);
  }

  @override
  void initState() 
  { 
    super.initState(); 
    _dataFuture = _initData(); 
  }

  @override
  Widget build(BuildContext context) => Scaffold
  (
    appBar: AppBar
    (
      title: Text(widget.forumName),
      backgroundColor: Theme.of(context).colorScheme.surface
    ),
    body: FutureBuilder<void>
    (
      future: _dataFuture,
      builder: (context, snapshot) => const SizedBox.shrink()
    ),
    backgroundColor: Theme.of(context).colorScheme.surface
  );
}