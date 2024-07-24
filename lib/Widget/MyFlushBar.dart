import 'package:flutter/material.dart';    // 引入Material组件库
import 'package:another_flushbar/flushbar.dart';    // 引入flushbar库

/// 显示提示信息
/// 
/// [context] 上下文
/// 
/// [message] 提示信息
/// 
/// [duration] 显示时间（毫秒）
void myFlushBar({required context, required String message, required int duration}) 
{
  Flushbar
  (
    messageText: Center
    (
      child: Text
      (
        message,
        style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        textAlign: TextAlign.center    // 文本居中
      ),
    ),
    duration: Duration(milliseconds: duration),    // 显示时间
    animationDuration: const Duration(milliseconds: 500),    // 动画时间
    flushbarPosition: FlushbarPosition.TOP,    // 位置
    flushbarStyle: FlushbarStyle.FLOATING,    // 样式
    backgroundColor: Theme.of(context).colorScheme.secondary,
    borderRadius: BorderRadius.circular(12),    // 圆角
    margin: const EdgeInsets.all(75),    // 外边距
  ).show(context);
}
