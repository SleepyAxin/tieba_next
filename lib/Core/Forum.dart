/// 吧数据
class Forum
{
  /// 获取吧对应等级所需经验
  static const List<int> expOfLevel = [1, 1, 5, 15, 30, 50, 100, 200, 500, 1000, 2000, 3000, 6000, 10000, 18000, 30000, 60000, 100000, 300000];

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
  bool isLiked;
  /// 是否签到
  bool isSigned;
  /// 成员数量
  int memberNum;
  /// 帖子数量
  int threadNum;
  /// 评论数量
  int postNum;

  /// 构造函数
  Forum
  (
    {
      required this.avatarURL, required this.id, required this.name, 
      this.hotNum = 0, this.userLevel = 0, this.userLevelExp = 0, 
      this.isLiked = false, this.isSigned = false,
      this.memberNum = 0, this.threadNum = 0, this.postNum = 0
    }
  );

  /// 获取空白吧数据
  static Forum get empty => Forum
  (
    avatarURL: 'https://via.placeholder.com/150/000000/FFFFFF/?text=', 
    id: 0, 
    name: ''
  );
}