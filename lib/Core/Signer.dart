import 'dart:convert';
import 'package:crypto/crypto.dart';

class Signer 
{
  /// 定义签名后缀
  static const String _signSuffix = 'tiebaclient!!!';

  /// 核心签名方法
  /// 
  /// [items] 为有序的键值对列表，将按顺序拼接后生成签名
  static String sign(List<MapEntry<String, String>> items) 
  {
    // 创建字符串缓冲区用于高效拼接
    final buffer = StringBuffer();

    // 遍历所有键值对，按 "key=value" 格式拼接
    for (final item in items) { buffer.write('${item.key}=${item.value}'); }

    // 添加固定的签名后缀
    buffer.write(_signSuffix);

    // 将拼接后的字符串转换为 UTF-8 字节
    final inputBytes = utf8.encode(buffer.toString());

    // 计算 MD5 哈希值
    final digest = md5.convert(inputBytes);

    // 将哈希字节数组转换为小写十六进制字符串
    return digest.toString();
  }
}