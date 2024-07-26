import 'package:encrypt/encrypt.dart';    // 引入加密解密库

class DataManager 
{
  /// 创建一个静态的私有实例
  static final DataManager _instance = DataManager._internal();

  /// 私有构造函数
  DataManager._internal()
  {
    // 初始化加密器
    _key = Key.fromUtf8('SleepyAxin.SleepyAxin.SleepyAxin');
    _iv = IV.fromUtf8('...SleepyAxin...');
    _encrypter = Encrypter(AES(_key));
  }

  /// 提供一个工厂构造函数，返回唯一实例
  factory DataManager() => _instance;

  /// 加密密钥
  static late Key _key;
  /// 加密初始化向量
  static late IV _iv;
  /// 加密器
  static late Encrypter _encrypter;

  /// 加密字符串
  /// 
  /// [data] - 要加密的字符串
  static String encrypt(String data) => _encrypter.encrypt(data, iv: _iv).base64;

  /// 解密字符串
  /// 
  /// [data] - 要解密的字符串
  static String decrypt(String data) => _encrypter.decrypt64(data, iv: _iv);
}