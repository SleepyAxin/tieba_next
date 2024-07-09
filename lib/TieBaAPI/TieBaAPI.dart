import 'package:tieba_next/TieBaAPI/API.dart';    // API

class TieBaAPI 
{
  /// 获取头像地址字符串
  /// 
  /// [portrait] - 头像ID
  /// 
  /// [isBig] - 是否是清晰的大头像
  static String? getAvatar(String? portrait, bool isBig)
  {
    if(portrait == null) return null;
    return GetAvatar.avatarUrl(portrait, isBig);
  }
}