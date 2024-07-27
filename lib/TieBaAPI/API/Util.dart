import 'dart:convert';
import 'package:crypto/crypto.dart';    // 引入加密函数库

/// 客户端签名加密算法
/// 
/// [data] 需要签名加密的键值对
String clientSign(Map<String, dynamic> data) 
{
  final sortedKeys = data.keys.toList()..sort();
  final s = sortedKeys.map((k) => '$k=${data[k]}').join('');
  final sign = md5.convert(utf8.encode('$s tiebaclient!!!')).toString().toUpperCase();
  return sign;
}