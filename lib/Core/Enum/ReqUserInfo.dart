/// 请求用户信息
/// 
/// * [userId] 用户ID
/// 
/// * [portrait] 用户头像
/// 
/// * [userName] 用户名
///
/// * [nickName] 用户昵称
/// 
/// * [tiebaUid] 贴吧UID
/// 
/// * [other] 其他
/// 
/// * [basic] 基本信息
/// 
/// * [all] 所有信息
class ReqUserInfo 
{
  /// 用户ID
  static const int userId = 1;
  /// 用户头像
  static const int portrait = 2;
  /// 用户名
  static const int userName = 3;
  /// 用户昵称
  static const int nickName = 4;
  /// 贴吧UID
  static const int tiebaUid = 5;
  /// 其他
  static const int other = 6;
  /// 基本信息
  static const int basic = userId | portrait | userName;
  /// 所有信息
  static const int all = basic | nickName | tiebaUid | other;
}