/// 主题帖排序
/// 
/// 对于有热门分区的贴吧 0热门排序[hot] 1按发布时间[create] 2关注的人[follow] 34热门排序[hot] >=5是按回复时间[reply]
/// 
/// 对于无热门分区的贴吧 0按回复时间[reply] 1按发布时间[create] 2关注的人[follow] >=3按回复时间[reply]
class ThreadSortType 
{
  /// 发布时间
  static const int create = 1;
  /// 关注的人
  static const int follow = 2;
  /// 热门排序
  static const int hot = 3;
  /// 回复时间
  static const int reply = 5;
}