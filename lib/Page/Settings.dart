import 'package:flutter/material.dart';    // 引入Material组件库

class Settings extends StatefulWidget
{
  const Settings({ super.key });
  
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings>
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('设置'),
        backgroundColor: Theme.of(context).colorScheme.surface
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}