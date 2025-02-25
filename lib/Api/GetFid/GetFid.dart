import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tieba_next/Core/Const.dart';
import 'package:tieba_next/Core/HttpCore.dart';
import 'package:tieba_next/Exception/TieBaServerException.dart';

class GetFid 
{
  final HttpCore httpCore;

  GetFid(this.httpCore);

  /// 处理响应体
  /// 
  /// * [body] 为响应体
  static int _parseBody(String body) 
  {
    final Map<String, dynamic> json = jsonDecode(body) as Map<String, dynamic>;
    final int? errorCode = json['no'] as int?;
    
    if (errorCode != null && errorCode != 0) 
    {
      throw TieBaServerException(errorCode, json['error']?.toString() ?? '');
    }

    final int fid = (json['data'] as Map<String, dynamic>)['fid'] as int;

    if (fid == 0) 
    {
      throw const TieBaServerException(-1, 'fid is 0!');
    }

    return fid;
  }

  /// 获取吧ID
  /// 
  /// * [fname] 吧名
  Future<int> request(String fname) async 
  {
    final Map<String, String> data = { 'fname': fname, 'ie': 'utf-8'};
    final Uri uri = Uri.http(Const.webBaseHost, '/f/commit/share/fnameShareApi');

    final Response<dynamic> response = await httpCore.packWebGetRequest(uri, data);

    return _parseBody(response.data.toString());
  }
}
