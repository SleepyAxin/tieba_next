import 'package:flutter/material.dart';

import 'package:tieba_next/TieBaAPI/TieBaAPI.dart';

class UserPage extends StatefulWidget
{
  /// 个人资料页面
  const UserPage({ super.key});
  
  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage>
{
  late Future _dataFuture;

  @override
  void initState()
  {
    super.initState();
    _dataFuture = TieBaAPI.userProfile();
  }

  @override
  Widget build(BuildContext context) => Scaffold
  (
    appBar: AppBar
    (
      backgroundColor: Theme.of(context).colorScheme.surface
    ),
    backgroundColor: Theme.of(context).colorScheme.surface,
    body: FutureBuilder
    (
      future: _dataFuture,
      builder: (context, snapshot) => snapshot.connectionState == ConnectionState.done
      ? Container()
      : const SizedBox.shrink()
    )
  );
}