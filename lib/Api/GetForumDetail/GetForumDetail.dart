import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:fixnum/fixnum.dart';
import 'package:tieba_next/Api/GetForumDetail/Entity/ForumDetail.dart';
import 'package:tieba_next/Api/GetForumDetail/Protobuf/GetForumDetailReqIdl.pb.dart';
import 'package:tieba_next/Api/GetForumDetail/Protobuf/GetForumDetailResIdl.pb.dart';
import 'package:tieba_next/Api/Protobuf/CommonReq.pb.dart';
import 'package:tieba_next/Core/Const.dart';
import 'package:tieba_next/Core/HttpCore.dart';
import 'package:tieba_next/Exception/TieBaServerException.dart';

class GetForumDetail 
{
  static const int _cmd = 303021;
  final HttpCore _httpCore;

  GetForumDetail(this._httpCore);

  /// 将请求参数序列化为二进制数据
  /// 
  /// * [forumID] 贴吧ID
  Uint8List _packProto(int forumID) 
  {
    // 请求序列化
    final GetForumDetailReqIdl reqIdl = GetForumDetailReqIdl()
      ..data = (GetForumDetailReqIdl_DataReq()..common = (CommonReq()..clientVersion = Const.mainVersion))
      ..data.forumId = forumID as Int64;
    
    return reqIdl.writeToBuffer();
  }

  /// 处理响应体
  /// 
  /// * [body] 为响应体
  ForumDetail _parseBody(Uint8List body) 
  {
    final GetForumDetailResIdl resProto = GetForumDetailResIdl.fromBuffer(body);

    if (resProto.error.errorno != 0) 
    {
      throw TieBaServerException(resProto.error.errorno, resProto.error.errmsg);
    }
    
    return ForumDetail.fromTbData(resProto.data);
  }

  /// 获取吧详细信息
  /// 
  /// * [forumID] 吧ID
  Future<ForumDetail> request(int forumID) async 
  {
    final Uint8List data = _packProto(forumID);
    final Uri uri = Uri.https(Const.appBaseHost, '/c/f/forum/getforumdetail', {'cmd': _cmd});

    final Response response = await _httpCore.packProtoRequest(uri, data);

    return _parseBody(response.data as Uint8List);
  }
}