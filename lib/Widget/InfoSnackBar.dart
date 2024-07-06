import 'package:flutter/material.dart';    // 引入Material组件库

class InfoSnackBar
{
  /// 弹窗显示信息
  /// 
  /// [context] - 上下文
  /// 
  /// [message] - 信息
  static void show(BuildContext context, String message) 
  {
    final snackBar = SnackBar
    (
      backgroundColor: Theme.of(context).colorScheme.primary,
      behavior: SnackBarBehavior.floating,    // 设置为浮动模式
      content: Text
      (
        message,
        style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      ),
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(16),    // 设置边距
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))    // 设置圆角
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}