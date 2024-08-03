import 'package:flutter/material.dart';
import 'package:chinese_font_library/chinese_font_library.dart';

class FavoritePage extends StatefulWidget
{
  const FavoritePage({ super.key });
  
  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage>
{
  @override
  Widget build(BuildContext context) => Scaffold
  (
    appBar: AppBar
    (
      title: Text('我的收藏', style: const TextStyle().useSystemChineseFont()),
      backgroundColor: Theme.of(context).colorScheme.surface
    ),
    backgroundColor: Theme.of(context).colorScheme.surface
  );
}