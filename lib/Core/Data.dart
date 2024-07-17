import 'package:encrypt/encrypt.dart';    // 引入加密解密库

/// 加密密钥
final Key _key = Key.fromUtf8('SleepyAxin.SleepyAxin.SleepyAxin');
/// 加密初始化向量
final IV _iv = IV.fromUtf8('...SleepyAxin...');
/// 加密器
final Encrypter _encrypter = Encrypter(AES(_key));

/// 加密字符串
/// 
/// [data] - 要加密的字符串
String encrypt(String data) => _encrypter.encrypt(data, iv: _iv).base64;

/// 解密字符串
/// 
/// [data] - 要解密的字符串
String decrypt(String data) => _encrypter.decrypt64(data, iv: _iv);