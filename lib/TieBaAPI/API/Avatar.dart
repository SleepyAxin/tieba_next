/// 获取头像URL
class Avatar
{
  /// 小头像图片地址
  static const String _smallAvatarUrl = 'http://himg.bdimg.com/sys/portrait/item/';
  /// 大头像图片地址
  static const String _bigAvatarUrl = 'https://gss0.baidu.com/7Ls0a8Sm2Q5IlBGlnYG/sys/portraith/item/';

  /// 获取缩略头像图片地址字符串
  static String smallImage(String portrait) => _smallAvatarUrl + portrait;

  /// 获取清晰头像图片地址字符串
  static String bigImage(String portrait) => _bigAvatarUrl + portrait;
}