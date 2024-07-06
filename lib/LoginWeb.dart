import 'dart:ffi';

import 'package:flutter/material.dart';    // 引入Material组件库
import "package:flutter_inappwebview/flutter_inappwebview.dart";    // 引入InAppWebView组件库

import 'package:tieba_next/Widget/Widget.dart';    // 引入自定义的组件

class LoginWeb extends StatefulWidget 
{
  const LoginWeb({super.key});

  @override
  State<LoginWeb> createState() => _LoginWebState();
}

class _LoginWebState extends State<LoginWeb>
{
  final _loginURL = 'https://wappass.baidu.com/passport?login&tpl=tb&u=https%3A%2F%2Ftieba.baidu.com%2Findex%2Ftbwise%2Fmine%3Fsource%3Da0-bindex-c-d-e0%26shownew%3D1&source=a0-bindex-c-d-e0#/password_login';
  late InAppWebViewController _controller;

  /// 从Cookie中读取相应属性
  /// 
  /// [cookies] - Cookie列表
  /// 
  /// [name] - Cookie属性名称
  String _getCookieValue(List<Cookie> cookies, String name)
  {
    for (Cookie cookie in cookies)
    {
      if (cookie.name == name) return cookie.value.toString();
    }
    return '';
  }

  /// 处理登录网站载入完成后的信息
  /// 
  /// [url] - 载入完成的URL字符串
  void _handleLogin(String url) async
  {
    // 初始化Cookie管理器并获取Cookie
    CookieManager cookieManager = CookieManager.instance();
    List<Cookie> cookies = await cookieManager.getCookies(url: WebUri.uri(Uri.parse(url)));

    // 读取Cookie中的BDUSS和STOKEN
    String bduss = _getCookieValue(cookies, 'BDUSS');
    String stoken = _getCookieValue(cookies, 'STOKEN');

    debugPrint('BDUSS: $bduss, STOKEN: $stoken');
    
    // 如果BDUSS和STOKEN都不为空，则返回上一界面
    if (bduss != '' && stoken != '')
    {
      if (mounted) MyFlushBar.show(context, '登录成功，即将跳转');
      // 延迟2秒
      await Future.delayed(const Duration(seconds: 2));
      if (mounted) Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('登录'),
        backgroundColor: Theme.of(context).colorScheme.surface
      ),
      body: Stack
      (
        children: 
        [
          InAppWebView
          (
            // 载入登录网站
            initialUrlRequest: URLRequest(url: WebUri.uri(Uri.parse(_loginURL))),
            onWebViewCreated: (controller) => _controller = controller,
            onLoadStop: (controller, url) => _handleLogin(url.toString()),
          )
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  } 
}