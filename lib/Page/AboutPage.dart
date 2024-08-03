import 'package:flutter/material.dart';
import 'package:chinese_font_library/chinese_font_library.dart';

class AboutPage extends StatefulWidget
{
  const AboutPage({ super.key });
  
  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage>
{
  @override
  Widget build(BuildContext context) => Scaffold
  (
    appBar: AppBar
    (
      title: Text('关于', style: const TextStyle().useSystemChineseFont()),
      backgroundColor: Theme.of(context).colorScheme.surface
    ),
    backgroundColor: Theme.of(context).colorScheme.surface
  );
}