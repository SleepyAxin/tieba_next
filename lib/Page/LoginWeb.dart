import 'package:flutter/material.dart';    // 引入Material组件库
import "package:flutter_inappwebview/flutter_inappwebview.dart";    // 引入InAppWebView组件库

import 'package:tieba_next/Core/Account.dart';    // 引入账户信息类
import 'package:tieba_next/Widget/MyFlushBar.dart';
import 'package:tieba_next/Core/AccountManager.dart';    // 引入用户信息管理器

class LoginWeb extends StatefulWidget 
{
  const LoginWeb({super.key});

  @override
  State<LoginWeb> createState() => _LoginWebState();
}

class _LoginWebState extends State<LoginWeb>
{
  /// 登录网站
  static const String _loginURL = 'https://wappass.baidu.com/passport?login&tpl=tb&u=https%3A%2F%2Ftieba.baidu.com%2Findex%2Ftbwise%2Fmine%3Fsource%3Da0-bindex-c-d-e0%26shownew%3D1&source=a0-bindex-c-d-e0#/password_login';

  /// 从Cookie中读取相应属性
  /// 
  /// [cookies] - Cookie列表
  /// 
  /// [name] - Cookie属性名称
  String? _getCookieValue(List<Cookie> cookies, String name)
  {
    for (Cookie cookie in cookies)
    {
      if (cookie.name == name) return cookie.value.toString();
    }
    return null;
  }

  /// 处理登录网站载入完成后的信息
  /// 
  /// [url] - 载入完成的URL字符串
  Future<void> _handleLogin(WebUri? url) async
  {
    if (url.toString().contains(_loginURL) || url == null) return;
    
    // 初始化Cookie管理器并获取Cookie
    CookieManager cookieManager = CookieManager.instance();
    List<Cookie> cookies = await cookieManager.getCookies(url: url);

    // 读取Cookie中的BDUSS和STOKEN
    String? bduss = _getCookieValue(cookies, 'BDUSS');
    String? stoken = _getCookieValue(cookies, 'STOKEN');
    
    // 如果BDUSS和STOKEN都存在，则初始化用户并返回上一界面
    if (bduss != null && stoken != null)
    {
      await AccountManager().setAccount(Account(bduss, stoken));
      await AccountManager().updateAccount();
      await cookieManager.deleteAllCookies();
      if (mounted) 
      {
        Navigator.pop(context);
        myFlushBar(context, '登录成功', 1000);
      }
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
            initialUrlRequest: URLRequest(url: WebUri(_loginURL)),
            onLoadStop: (controller, url) => _handleLogin(url),
          )
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  } 
}