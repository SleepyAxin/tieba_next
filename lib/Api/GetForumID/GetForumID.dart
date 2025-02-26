import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tieba_next/Core/Const.dart';
import 'package:tieba_next/Core/HttpCore.dart';
import 'package:tieba_next/Exception/TieBaServerException.dart';

class GetForumID 
{
  final HttpCore _httpCore;

  GetForumID(this._httpCore);

  /// 处理响应体
  /// 
  /// * [body] 为响应体
  static int _parseBody(String body) 
  {
    final Map<String, dynamic> json = jsonDecode(body) as Map<String, dynamic>;
    final int? code = json['no'] as int?;
    
    if (code != null && code != 0) 
    {
      throw TieBaServerException(code, json['error']?.toString() ?? '');
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
  /// * [forumName] 吧名
  Future<int> request(String forumName) async 
  {
    final Map<String, String> data = { 'fname': forumName, 'ie': 'utf-8'};
    final Uri uri = Uri.http(Const.webBaseHost, '/f/commit/share/fnameShareApi');

    final Response response = await _httpCore.packWebGetRequest(uri, data);

    return _parseBody(response.data.toString());
  }
}
