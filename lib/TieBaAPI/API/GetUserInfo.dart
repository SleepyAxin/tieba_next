import 'package:tieba_next/TieBaAPI/API/AbstractAPI.dart';

class GetUserInfo extends AbstractAPI 
{
  static const String _myInfoURL = '${AbstractAPI.webURL}/f/user/json_userinfo';

  /// 获取本人用户信息
  /// 
  /// [bduss] 登录百度账号的bduss
  /// 
  /// [stoken] 登录百度账号的stoken
  static getMyInfo(String bduss, String stoken) async
  {

  }
}