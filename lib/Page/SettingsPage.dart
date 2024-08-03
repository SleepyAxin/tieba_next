import 'package:flutter/material.dart';
import 'package:chinese_font_library/chinese_font_library.dart';

class SettingsPage extends StatefulWidget
{
  const SettingsPage({ super.key });
  
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>
{
  @override
  Widget build(BuildContext context) => Scaffold
  (
    appBar: AppBar
    (
      title: Text('设置', style: const TextStyle().useSystemChineseFont()),
      backgroundColor: Theme.of(context).colorScheme.surface
    ),
    backgroundColor: Theme.of(context).colorScheme.surface
  );
}