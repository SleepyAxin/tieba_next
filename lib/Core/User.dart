/// 用户信息
class User
{
  /// 百度账号名
  String name;
  /// 用户名
  String username;
  /// 昵称
  String nickname;
  /// 头像ID
  String portrait;
  /// 关注数
  int followNum;
  /// 粉丝数
  int fansNum;
  /// 关注的吧的数量
  int likeForumNum;
  /// 发帖数
  int threadNum;
  /// 回帖数
  int postNum;

  User
  (
    {
      required this.name, required this.username, required this.nickname, required this.portrait, 
      this.followNum = -1, this.fansNum = -1, 
      this.likeForumNum = -1, this.threadNum = -1, this.postNum = -1
    }
  );
}