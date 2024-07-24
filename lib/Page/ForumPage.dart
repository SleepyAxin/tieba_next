import 'package:flutter/material.dart';    // 引入Material组件库

class ForumPage extends StatefulWidget
{
  final String forumName;

  const ForumPage(this.forumName,{ super.key });
  
  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage>
{
  @override
  Widget build(BuildContext context) => Scaffold
  (
    appBar: AppBar
    (
      title: Text(widget.forumName),
      backgroundColor: Theme.of(context).colorScheme.surface
    ),
    backgroundColor: Theme.of(context).colorScheme.surface
  );
}