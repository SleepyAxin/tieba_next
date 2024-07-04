import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginWeb extends StatefulWidget 
{
  const LoginWeb({super.key});

  @override
  State<LoginWeb> createState() => _LoginWebState();
}

class _LoginWebState extends State<LoginWeb>
{
  late WebViewController _controller;

  @override
  void initState()
  {
    // 初始化WebViewController
    super.initState();

    // 设置WebViewController属性
    _controller = WebViewController();
    _controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    _controller.setBackgroundColor(Colors.transparent);
    _controller.setNavigationDelegate
    (
      NavigationDelegate
      (
        onPageFinished: (String url) => _getCookies()
      )
    );
    _controller.loadRequest(Uri.parse('https://wappass.baidu.com'));
  }

  Future<void> _getCookies() async 
  {
    final Object cookies = await _controller.runJavaScriptReturningResult('document.cookie');
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
      body: WebViewWidget(controller: _controller),
      backgroundColor: Theme.of(context).colorScheme.surface
    );
  } 
}