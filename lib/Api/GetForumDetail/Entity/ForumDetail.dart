import 'package:tieba_next/Api/GetForumDetail/Protobuf/GetForumDetailResIdl.pb.dart';

/// 贴吧详情
class ForumDetail 
{
  /// 贴吧唯一标识ID
  final int forumID;
  /// 贴吧名称
  final String forumName;
  /// 主分类名称
  final String category;
  /// 贴吧小图标URL
  final String smallAvatar;
  /// 贴吧原始图标URL
  final String originAvatar;
  /// 贴吧宣传标语
  final String slogan;
  /// 贴吧成员总数
  final int memberNum;
  /// 贴吧总回复数
  final int postNum;
  /// 是否包含吧务团队
  final bool hasBaWu;

  /// 构造函数
  const ForumDetail
  (
    {
      required this.forumID, required this.forumName, required this.category,
      required this.smallAvatar, required this.originAvatar, required this.slogan, 
      required this.memberNum, required this.postNum, required this.hasBaWu,
    }
  );

  /// 从贴吧API原始数据构造ForumDetail对象
  /// 
  /// * [data] 接口返回的原始数据
  static ForumDetail fromTbData(GetForumDetailResIdl_DataRes data) 
  {
    final GetForumDetailResIdl_DataRes_RecommendForumInfo forumInfo = data.forumInfo;
    return ForumDetail
    (
      forumID: forumInfo.forumId.toInt(),
      forumName: forumInfo.forumName,
      category: forumInfo.lv1Name,
      smallAvatar: forumInfo.avatar,
      originAvatar: forumInfo.avatarOrigin,
      slogan: forumInfo.slogan,
      memberNum: forumInfo.memberCount.toInt(),
      postNum: forumInfo.threadCount.toInt(),
      hasBaWu: data.electionTab.newStrategyText == "已有吧主",
    );
  }

  @override
  String toString() =>
  '''
    fid: $forumID, 
    fname: $forumName, 
    category: $category, 
    smallAvatar: $smallAvatar,
    originAvatar: $originAvatar,
    slogan: $slogan,
    memberNum: $memberNum,
    postNum: $postNum,
    hasBaWu: $hasBaWu
  ''';
  
}