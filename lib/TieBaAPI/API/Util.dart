import 'dart:convert';
import 'package:crypto/crypto.dart';    // 引入加密函数库

/// 客户端签名加密算法
/// 
/// [map] 需要签名加密的键值对
String clientSign(Map<String, dynamic> map) 
{
  String mapString = '';
  for (String key in map.keys) { mapString += '$key=${map[key]} '; }
  mapString += 'tiebaclient!!!';
  final bytes = utf8.encode(mapString);
  final digest = md5.convert(bytes);
  return digest.toString();
}