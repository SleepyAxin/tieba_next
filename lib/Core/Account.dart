import 'package:tieba_next/Core/User.dart';

/// 账号信息
class Account extends User
{
  /// BDUSS
  String? bduss; 
  /// STOKEN
  String? stoken;

  /// 构造函数
  /// 
  /// [bduss] - BDUSS
  /// 
  /// [stoken] - STOKEN
  Account(this.bduss, this.stoken);

  /// 将账号信息转化为键值对
  Map<String, dynamic> toMap() => { "BDUSS": bduss, "STOKEN": stoken };

  /// 将键值对转化为账号信息
  /// 
  /// [map] - 键值对
  static Account fromMap(Map<String, dynamic> map) => Account(map["BDUSS"], map["STOKEN"]);

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