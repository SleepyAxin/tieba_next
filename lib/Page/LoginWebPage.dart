import 'package:flutter/material.dart';
import "package:flutter_inappwebview/flutter_inappwebview.dart";
import 'package:chinese_font_library/chinese_font_library.dart';

import 'package:tieba_next/Core/Account.dart';
import 'package:tieba_next/Widget/MyFlushBar.dart';
import 'package:tieba_next/Core/AccountManager.dart';
import 'package:tieba_next/TieBaAPI/API/DioManager.dart';

class LoginWebPage extends StatefulWidget 
{
  const LoginWebPage({super.key});

  @override
  State<LoginWebPage> createState() => _LoginWebPageState();
}

class _LoginWebPageState extends State<LoginWebPage>
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
    for (Cookie cookie in cookies) { if (cookie.name == name) return cookie.value.toString(); }
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
      DioManager.setAccount(bduss, stoken);
      await AccountManager().setAccount(Account(bduss: bduss, stoken: stoken));
      await AccountManager().updateAccount();
      if (mounted) 
      {
        Navigator.pop(context);
        myFlushBar(context: context, message: '登录成功', duration: 1000);
      }
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold
  (
    appBar: AppBar
    (
      title: Text('登录', style: const TextStyle().useSystemChineseFont()),
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