import 'package:tieba_next/Core/User.dart';

/// 账号信息
class Account extends User
{
  /// BDUSS
  final String bduss; 
  /// STOKEN
  final String stoken;

  /// 构造函数
  /// 
  /// [bduss] BDUSS
  /// 
  /// [stoken] STOKEN
  Account({required this.bduss, required this.stoken}) 
  : super(name: '', username: '', nickname: '', portrait: '');

  /// 账号信息成员变量列表
  static const List<String> variableList = [ 'BDUSS', 'STOKEN' ];

  /// 将账号信息转化为键值对
  Map<String, String> toMap() => { 'BDUSS': bduss, 'STOKEN': stoken };

  /// 将键值对转化为账号信息
  /// 
  /// [map] - 键值对
  static Account? fromMap(Map<String, String> map)
  {
    String? bduss = map['BDUSS'], stoken = map['STOKEN'];
    if (bduss == null || stoken == null) return null;
    Account account = Account(bduss: bduss, stoken: stoken);
    return account;
  }

  /// 复制用户信息
  /// 
  /// [user] - 用户信息
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