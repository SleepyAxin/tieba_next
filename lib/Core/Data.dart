import 'package:encrypt/encrypt.dart';    // 引入加密解密库

/// 数据处理 - 加密 解密
class Data
{
  /// 加密密钥字符串 32位字符长
  static const String _keyString = 'SleepyAxin.SleepyAxin.SleepyAxin';
  /// 加密密钥
  static final Key _key = Key.fromUtf8(_keyString);
  /// 加密初始化向量
  static final IV _iv = IV.fromLength(16);
  /// 加密器
  static final Encrypter _encrypter = Encrypter(AES(_key));

  /// 加密字符串
  /// 
  /// [data] - 要加密的字符串
  static String encrypt(String data) => _encrypter.encrypt(data, iv: _iv).base64;

  /// 解密字符串
  /// 
  /// [data] - 要解密的字符串
  static String decrypt(String data) => _encrypter.decrypt64(data, iv: _iv);
}