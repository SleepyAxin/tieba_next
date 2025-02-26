import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tieba_next/Api/GetForum/Entity/Forum.dart';
import 'package:tieba_next/Core/Const.dart';
import 'package:tieba_next/Core/HttpCore.dart';
import 'package:tieba_next/Exception/TieBaServerException.dart';

class GetForum 
{
  final HttpCore _httpCore;

  GetForum(this._httpCore);

  /// 处理响应体
  /// 
  /// * [body] 为响应体
  Forum _parseBody(String body) 
  {
    final Map<String, dynamic> json = jsonDecode(body) as Map<String, dynamic>;
    final int? code = json['error_code'] as int?;
    
    if (code != null && code != 0) 
    {
      throw TieBaServerException(code, json['error_msg']?.toString() ?? '');
    }

    final Map<String, dynamic>? forum = json['forum'] as Map<String, dynamic>?;

    if (forum == null) 
    {
      throw const TieBaServerException(-1, '无法获取到贴吧数据!');
    }

    return Forum.fromTbData(forum);
  }

  /// 获取吧信息
  /// 
  /// * [forumName] 吧名
  Future<Forum> request(String forumName) async 
  {
    final Map<String, String> data = {'kw': forumName};
    final Uri uri = Uri.https(Const.webBaseHost, '/c/f/frs/frsBottom');

    final Response response = await _httpCore.packAppFormRequest(uri, data);

    return _parseBody(response.data.toString());
  }
}
