import 'package:dio/dio.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:tieba_next/Core/Account.dart';
import 'package:tieba_next/Core/Signer.dart';
import 'package:tieba_next/Core/Const.dart';

class HttpCore 
{
  /// 当前账号
  static Account? account;
  /// Dio实例
  static late Dio _dio;
  /// 创建一个静态的私有实例
  static final HttpCore _instance = HttpCore._internal();

  /// 私有构造函数
  HttpCore._internal() 
  {
    const Duration d = Duration(seconds: 30);
    
    // 初始化Dio实例，配置基础选项和拦截器
    _dio = Dio(BaseOptions(connectTimeout: d, receiveTimeout: d, sendTimeout: d));

    // 添加Cookie管理拦截器（内存存储）
    _dio.interceptors.add(CookieManager(CookieJar()));
  }

  /// 提供一个工厂构造函数，返回唯一实例
  factory HttpCore() => _instance;

  /// 对参数列表进行签名并添加sign项
  /// 
  /// [items] 为有序的键值对列表
  static Map<String, String> sign(Map<String, String> items) 
  {
    final Map<String, String> signedItems = Map<String, String>.from(items);
    signedItems.addAll({'sign': Signer.sign(items)});
    return signedItems;
  }

  /// 构建URL编码的查询字符串（保持参数顺序）
  /// 
  /// [params] 为有序的键值对列表
  String _buildQueryString(Map<String, String> params) 
  {
    return params.entries.map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}').join('&');
  }

  /// 发送APP表单请求（自动签名）
  /// 
  /// [uri] 为请求地址
  /// 
  /// [data] 为表单数据
  Future<Response> packAppFormRequest(Uri uri, Map<String, String> data) async 
  {
    // 签名参数
    final Map<String, String> signedData = sign(data);
    // 构建查询字符串
    final String queryString = _buildQueryString(signedData);

    // 设置请求头
    final Map<String, String> headers = 
    {
      'Content-Type': 'application/x-www-form-urlencoded',
      'User-Agent': 'aiotieba/${Const.version}',
      'Host': Const.appBaseHost,
    };

    // 发送POST请求
    return _dio.post
    (
      uri.toString(),
      data: queryString,
      options: Options(headers: headers),
    );
  }

  /// 发送Protobuf请求（multipart/form-data）
  /// 
  /// [uri] 为请求地址
  /// 
  /// [protoData] 为Protobuf数据
  Future<Response> packProtoRequest(Uri uri, List<int> protoData) async 
  {
    // 创建multipart文件
    final MultipartFile file = MultipartFile.fromBytes
    (
      protoData,
      filename: 'file',
      headers: { 'Content-Disposition': ['form-data; name="data"; filename="file"'] },
    );

    // 构建FormData
    final FormData formData = FormData.fromMap({'data': file});

    // 设置请求头
    final Map<String, String> headers = 
    {
      'User-Agent': 'aiotieba/${Const.version}',
      'x_bd_data_type': 'protobuf',
      'Accept': '*/*',
      'Connection': 'keep-alive',
      'Host': Const.appBaseHost,
    };

    // 发送POST请求
    return _dio.post
    (
      uri.toString(),
      data: formData,
      options: Options(headers: headers),
    );
  }

  /// 发送WEB GET请求（参数在URL查询字符串）
  /// 
  /// [uri] 为请求地址
  /// 
  /// [parameters] 为查询参数
  Future<Response> packWebGetRequest(Uri uri, Map<String, String> parameters) async 
  {
    // 构建查询字符串并直接拼接到URL
    final String queryString = _buildQueryString(parameters);
    final String urlWithQuery = '${uri.toString()}?$queryString';

    // 设置请求头
    final Map<String, String> headers = 
    {
      'User-Agent': 'aiotieba/${Const.version}',
      'Accept-Encoding': 'gzip, deflate',
      'Cache-Control': 'no-cache',
      'Connection': 'keep-alive',
      'Accept': '*/*',
    };

    // 发送GET请求
    return _dio.get
    (
      urlWithQuery,
      options: Options(headers: headers),
    );
  }

  /// 发送WEB表单请求
  Future<Response> packWebFormRequest(Uri uri, Map<String, String> data) async 
  {
    // 构建查询字符串
    final String queryString = _buildQueryString(data);

    // 发送POST请求
    return _dio.post
    (
      uri.toString(),
      data: queryString,
      options: Options(contentType: Headers.formUrlEncodedContentType)
    );
  }
}