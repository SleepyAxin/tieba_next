import 'package:flutter/material.dart';

class KeepAliveWrapper extends StatefulWidget
{
  /// 保持子部件的缓存，不会销毁
  const KeepAliveWrapper({ super.key, required this.child });

  @override
  State<KeepAliveWrapper> createState() => _KeepAliveWrapperState();

  final Widget child;
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper> with AutomaticKeepAliveClientMixin
{
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) 
  {
    super.build(context);
    return widget.child;
  }
}