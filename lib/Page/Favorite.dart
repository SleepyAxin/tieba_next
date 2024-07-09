import 'package:flutter/material.dart';    // 引入Material组件库

class Favorite extends StatefulWidget
{
  const Favorite({ super.key });
  
  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite>
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('我的收藏'),
        backgroundColor: Theme.of(context).colorScheme.surface
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  }
}