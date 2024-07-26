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

  /// 用于请求网络接口的Dio实例
  static final Dio webDio = Dio
  (
    BaseOptions
    (
      baseUrl: 'https://tieba.baidu.com',
      headers: 
      {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
      },
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 3000),
    )
  );

  /// 用于请求客户端接口的Dio实例
  static final Dio clientDio = Dio();

  /// 设置BDUSS和STOKEN
  /// 
  /// [bduss] BDUSS
  /// 
  /// [stoken] STOKEN
  static void set(String bduss, String stoken)
  {
    webDio.options.headers['Cookie'] = 'BDUSS=$bduss; STOKEN=$stoken';
  }
}