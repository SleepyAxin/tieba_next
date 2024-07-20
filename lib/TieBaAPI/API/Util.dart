import 'dart:convert';
import 'package:crypto/crypto.dart';    // 引入加密函数库

/// 客户端签名加密算法
/// 
/// [map] 需要签名加密的键值对
String clientSign(Map<String, dynamic> map) 
{
  // 获取按字典顺序排序的键值对
  final List<MapEntry<String, dynamic>> sortedEntries = map.entries.toList()
    ..sort((a, b) => a.key.compareTo(b.key));
  // 获取构建排序后的键值对
  final Map<String, dynamic> sortedmap = Map.fromEntries(sortedEntries);

  String str = "";
  for (final String key in sortedmap.keys) { str += "$key=${sortedmap[key]}"; }
  str += "tiebaclient!!!";

  return md5.convert(utf8.encode(str)).toString();
}