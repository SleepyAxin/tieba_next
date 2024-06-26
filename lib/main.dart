import 'package:flutter/material.dart';    // 引入Material组件库
import 'MainPage.dart';    // 引入自定义的首页类

void main() 
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      title: '',
      theme: ThemeData
      (
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
