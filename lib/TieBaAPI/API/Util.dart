import 'dart:convert';
import 'package:crypto/crypto.dart';    // 引入加密函数库

/// 网络请求中的工具函数类
class Util 
{
  /// 客户端签名加密算法
  /// 
  /// [data] 需要签名加密的键值对
  static String clientSign(Map<String, dynamic> data) 
  {
    final sortedKeys = data.keys.toList()..sort();
    final s = sortedKeys.map((k) => '$k=${data[k]}').join('');
    final sign = md5.convert(utf8.encode('$s tiebaclient!!!')).toString().toUpperCase();
    return sign;
  }

  /// 将Map转换为URL编码格式的字符串
  /// 
  /// [data] Map数据
  static String convertToUrlEncoded(Map<String, String> data) 
  {
    final List<String> parts = [];
    for (final String key in data.keys)
    {
      parts.add('${Uri.encodeComponent(key)}=${Uri.encodeComponent(data[key].toString())}');
    }
    return parts.join('&');
  }
}