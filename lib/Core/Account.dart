import 'package:tieba_next/Core/User.dart';

/// 账号信息
class Account extends User
{
  /// BDUSS
  final String _bduss; 
  /// STOKEN
  final String _stoken;

  /// 构造函数
  /// 
  /// [_bduss] BDUSS
  /// 
  /// [_stoken] STOKEN
  Account(this._bduss, this._stoken);

  /// 获取BDUSS
  String get bduss => _bduss;

  /// 获取STOKEN
  String get stoken => _stoken;

  /// 账号信息空槽键值对
  static Map<String, String?> emptyMap() => { 'BDUSS': null, 'STOKEN': null };

  /// 将账号信息转化为键值对
  Map<String, String> toMap() => { 'BDUSS': bduss, 'STOKEN': stoken };

  /// 将键值对转化为账号信息
  /// 
  /// [map] - 键值对
  static Account? fromMap(Map<String, String?> map)
  {
    String? bduss = map['BDUSS'], stoken = map['STOKEN'];
    if (bduss == null || stoken == null) return null;
    Account account = Account(bduss, stoken);
    return account;
  }

  void copy(User user)
  {
    name = user.name;
    username = user.username;
    nickname = user.nickname;
    portrait = user.portrait;
    followNum = user.followNum;
    fansNum = user.fansNum;
    likeForumNum = user.likeForumNum;
    threadNum = user.threadNum;
    postNum = user.postNum;
  }
}