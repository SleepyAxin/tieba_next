import 'package:flutter/material.dart';    // 引入Material组件库

class Message extends StatefulWidget
{
  const Message({ super.key });
  
  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message>
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('消息'),
        backgroundColor: Theme.of(context).colorScheme.surface
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}