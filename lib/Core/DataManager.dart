import 'package:encrypt/encrypt.dart';    // 引入加密解密库

/// 数据处理类
class DataManager 
{
  /// 加密初始化向量
  static final IV _iv = IV.fromUtf8('...SleepyAxin...');

  /// 加密器
  static final Encrypter _encrypter = Encrypter(AES(Key.fromUtf8('SleepyAxin.SleepyAxin.SleepyAxin')));

  /// 加密字符串
  /// 
  /// [data] - 要加密的字符串
  static String encrypt(String data) => _encrypter.encrypt(data, iv: _iv).base64;

  /// 解密字符串
  /// 
  /// [data] - 要解密的字符串
  static String decrypt(String data) => _encrypter.decrypt64(data, iv: _iv);
}