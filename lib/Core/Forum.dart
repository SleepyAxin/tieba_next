/// 吧数据
class Forum
{
  /// 吧头像
  String avatarURL;
  /// 吧id
  int id;
  /// 吧名
  String name;
  /// 吧热度
  int hotNum;
  /// 用户吧等级
  int userLevel;
  /// 用户吧等级经验
  int userLevelExp;
  /// 是否关注
  bool isliked;
  /// 是否签到
  bool isSign;
  /// 成员数量
  int memberNum;
  /// 帖子数量
  int threadNum;
  /// 评论数量
  int postNum;

  Forum
  (
    {
      required this.avatarURL, required this.id, required this.name, 
      this.hotNum = 0, this.userLevel = 0, this.userLevelExp = 0, 
      this.isliked = false, this.isSign = false,
      this.memberNum = 0, this.threadNum = 0, this.postNum = 0
    }
  );
}