import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';    // 引入Material组件库

import 'package:tieba_next/TieBaAPI/API/DioManager.dart';
import 'package:tieba_next/TieBaAPI/API/Util.dart';

/// 获取吧数据
class Forum
{
  /*
  /// 获取本人关注的贴吧列表
  static Future<Map<String, dynamic>?> mylikes(String bduss, int pn) async
  {
    
  }
  */

  /// 获取某个吧详细信息
  static Future homeInfo(String forumName) async 
  {
    const String url = '/c/f/frs/page';
    const String params = '?cmd=301001&format=protobuf';

    final Map<String, String> headers = 
    { 
      'Content-Type': 'application/x-www-form-urlencoded',
      'forum_name': Uri.encodeFull(forumName)
    };

    final Map<String, dynamic> data = 
    { 
      'stErrorNums': 0,
      'kw': forumName,
      'pn': 1,
      'rn': 20,
      'is_good': 0,
      'cid': 0,
      '_client_version': '12.65.1.1',
      'sort_type': 1
    };
    data.addAll(DioManager.clientBaseData);
    data['sign'] = clientSign(data);
    data['data'] = MultipartFile.fromBytes(data.toString().codeUnits, filename: 'file');

    try 
    {
      final Response res = await DioManager.clientDio.post
      (
        url + params,
        data: FormData.fromMap(data),
        options: Options(headers: headers)
      );
      
      if (res.statusCode == 200) 
      {
        debugPrint('获取吧数据: $res');
        return res.data;
      }
      debugPrint('返回吧数据错误: $res');
      return null;
    }
    catch (error) { debugPrint('获取吧数据失败: $error'); return null; }
  }
}