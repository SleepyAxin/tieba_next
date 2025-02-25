import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tieba_next/Core/HttpCore.dart';
import 'package:tieba_next/Core/Const.dart';
import 'package:tieba_next/Exception/TieBaServerException.dart';

class Block 
{
  final HttpCore httpCore;

  Block(this.httpCore);

  /// 处理响应体
  /// 
  /// * [body] 为响应体
  static bool _parseBody(String body) 
  {
    try 
    {
      final Map<String, dynamic> json = jsonDecode(body) as Map<String, dynamic>;
      final int? errorCode = json['error_code'] as int?;
      
      if (errorCode != null && errorCode != 0) 
      {
        final String errorMsg = json['error_msg'] as String? ?? '';
        throw TieBaServerException(errorCode, errorMsg);
      }

      return true;
    } 
    on FormatException 
    {
      throw const TieBaServerException(-1, '无效的JSON响应');
    }
  }

  /// 封禁用户
  /// 
  /// * [fid] 贴吧ID
  /// 
  /// * [portrait] 用户头像
  /// 
  /// * [day] 封禁天数
  /// 
  /// * [reason] 封禁原因
  Future<bool> request(int fid, String portrait, int day, String reason) async 
  {
    // 特殊天数
    const Set<int> specialDays = { 1, 3, 10 };
    final String isSvipBlock = specialDays.contains(day) ? '0' : '1';

    final Map<String, String> data = 
    {
      'BDUSS': httpCore.account!.bduss,
      'day': day.toString(),
      'fid': fid.toString(),
      'is_loop_ban': isSvipBlock,
      'ntn': 'banid',
      'portrait': portrait,
      'reason': reason,
      'tbs': httpCore.account!.tbs!,
      'word': '-',
      'z': '6',
    };
    final Uri uri = Uri.https(Const.appBaseHost, '/c/c/bawu/commitprison');

    final Response<dynamic> response = await httpCore.packAppFormRequest(uri, data);

    return _parseBody(response.data.toString());
  }
}
