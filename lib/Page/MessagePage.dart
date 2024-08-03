import 'package:flutter/material.dart';
import 'package:chinese_font_library/chinese_font_library.dart';

class MessagePage extends StatefulWidget
{
  const MessagePage({ super.key });
  
  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage>
{
  @override
  Widget build(BuildContext context) => Scaffold
  (
    appBar: AppBar
    (
      title: Text('消息', style: const TextStyle().useSystemChineseFont()),
      backgroundColor: Theme.of(context).colorScheme.surface
    ),
    backgroundColor: Theme.of(context).colorScheme.surface
  );
}