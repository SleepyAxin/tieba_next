import 'package:tieba_next/Core/Data.dart' as data;
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

  /// 将账号信息转化为加密键值对
  Map<String, dynamic> toEncryptedMap() => 
  { 
    "BDUSS": data.encrypt(bduss), 
    "STOKEN": data.encrypt(stoken)
  };

  /// 将加密键值对转化为账号信息
  /// 
  /// [map] - 键值对
  static Account fromEncryptedMap(Map<String, dynamic> map)
  {
    Account account = Account
    (
      data.decrypt(map["BDUSS"]), 
      data.decrypt(map["STOKEN"])
    );
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