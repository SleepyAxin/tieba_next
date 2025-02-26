/// 贴吧信息实体类
/// 
/// 代表从贴吧API获取的贴吧详细信息，包含贴吧基本信息、分类信息和统计信息
class Forum 
{
  /// 贴吧唯一标识ID
  final int forumID;
  /// 贴吧名称
  final String forumName;
  /// 主分类名称
  final String category;
  /// 子分类名称
  final String subcategory;
  /// 贴吧小图标URL
  final String smallAvatar;
  /// 贴吧宣传标语
  final String slogan;
  /// 贴吧成员总数
  final int memberNum;
  /// 贴吧总回复数
  final int postNum;
  /// 贴吧主题帖数量
  final int threadNum;
  /// 是否包含吧务团队
  final bool hasBaWu;

  /// 构造函数
  Forum
  (
    {
      required this.forumID, required this.forumName, required this.category, required this.subcategory,
      required this.smallAvatar, required this.slogan,
      required this.memberNum, required this.postNum, required this.threadNum,
      required this.hasBaWu,
    }
  );

  /// 从贴吧API原始数据构造Forum对象
  /// 
  /// [dataMap] 接口返回的原始数据映射表
  static Forum fromTbData(Map<String, dynamic> dataMap) => Forum
  (
    forumID: dataMap["id"] as int,
    forumName: dataMap['name']?.toString() ?? '',
    category: dataMap['first_class']?.toString() ?? '',
    subcategory: dataMap['second_class']?.toString() ?? '',
    smallAvatar: dataMap['avatar']?.toString() ?? '',
    slogan: dataMap['slogan']?.toString() ?? '',
    memberNum: dataMap["member_num"] as int,
    postNum: dataMap["post_num"] as int,
    threadNum: (dataMap['thread_num'] as num?)?.toInt() ?? 0,
    hasBaWu: dataMap.containsKey('managers')
  );
}
