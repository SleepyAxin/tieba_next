import 'dart:math';
import 'package:dio/dio.dart';
export 'package:dio/dio.dart';

/// 网络请求管理器
class DioManager
{
  /// 创建一个静态的私有实例
  static final DioManager _instance = DioManager._internal();

  /// 私有构造函数
  DioManager._internal();

  /// 提供一个工厂构造函数，返回唯一实例
  factory DioManager() => _instance;

  /// 用于生成随机数
  static final Random _random = Random.secure();

  /// 用于请求网络接口的Dio实例
  static final Dio _webDio = Dio
  (
    BaseOptions
    (
      baseUrl: 'https://tieba.baidu.com',
      headers: 
      {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
      },
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 3000)
    )
  );

  /// 获取用于请求网络接口的Dio实例
  static Dio get webDio => _webDio;

  /// 客户端账号的BDUSS和STOKEN
  static final Map<String, String> _clientBaseData = {};

  /// 获取客户端账号的BDUSS和STOKEN基本数据
  static Map<String, String> get clientBaseData => _clientBaseData;

  /// 用于请求客户端接口的Dio实例
  static final Dio _clientDio = Dio
  (
    BaseOptions
    (
      baseUrl: 'http://tiebac.baidu.com',
      headers: 
      {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36',
        // 'phone_imei': '000000000000000',
        'CharSet': 'UTF-8',
        'cuid_gid': '',
        'client_type': 2,
        'x_bd_data_type': 'protobuf'
      },
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 3000)
    )
  );

  /// 获取用于请求客户端接口的Dio实例
  static Dio get clientDio
  {
    const String hexStr = '123456789abcdef';
    final str = List<String>.generate(33, (_) => hexStr[_random.nextInt(hexStr.length)]);
    _clientDio.options.headers['X-Bd-Traceid'] = str.join();
    return _clientDio;
  }

  /// 设置账号的BDUSS和STOKEN
  /// 
  /// [bduss] BDUSS
  /// 
  /// [stoken] STOKEN
  static void setAccount(String bduss, String stoken)
  {
    _webDio.options.headers['Cookie'] = 'BDUSS=$bduss; STOKEN=$stoken';
    _clientBaseData.addAll({ 'BDUSS': bduss, 'STOKEN': stoken });
  }

  /// 设置设备信息
  /// 
  /// [device] 设备信息
  static void setDevice(Map<String, String> device) => _clientDio.options.headers.addAll(device);
}