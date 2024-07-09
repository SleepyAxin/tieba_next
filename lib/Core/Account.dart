/// 用户信息
class Account
{
  /// BDUSS
  String? bduss; 
  /// STOKEN
  String? stoken;
  /// 头像ID
  String? portrait;

  /// 构造函数
  /// 
  /// [bduss] - BDUSS
  /// 
  /// [stoken] - STOKEN
  Account({required this.bduss, required this.stoken});

  /// 将用户信息转化为键值对
  Map<String, dynamic> toMap() => 
  {
    "BDUSS": bduss, 
    "STOKEN": stoken,
    "portrait": portrait
  };

  /// 将键值对转化为用户信息
  /// 
  /// [map] - 键值对
  static Account fromMap(Map<String, dynamic> map)
  {
    Account account = Account(bduss: map["BDUSS"], stoken: map["STOKEN"]);
    account.portrait = map["portrait"];
    return account;
  }
}