import 'package:tieba_next/TieBaAPI/API/AbstractAPI.dart';

class GetAvatar extends AbstractAPI 
{
  /// 小头像图片地址
  static const String _smallAvatarUrl = 'http://himg.bdimg.com/sys/portrait/item/';
  /// 大头像图片地址
  static const String _bigAvatarUrl = 'https://gss0.baidu.com/7Ls0a8Sm2Q5IlBGlnYG/sys/portraith/item/';

  /// 获取头像图片地址字符串
  /// 
  /// [portrait] 头像ID
  /// 
  /// [isBig] 是否是清晰大头像
  static String avatarUrl(String portrait, bool isBig)
  {
    return isBig ? _bigAvatarUrl + portrait : _smallAvatarUrl + portrait;
  }
}