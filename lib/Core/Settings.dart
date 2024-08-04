/// 设置信息
class Settings 
{
  /// 是否显示进吧页面的置顶贴吧提示
  bool showTopTip = true;
  /// 置顶贴吧
  List<String> topForums = [];

  /// 获取设置信息中的变量列表
  static const List<String> variableList = ['showTopTip', 'topForums'];

  /// 将设置信息复制到当前对象
  /// 
  /// [settings] 要复制的设置信息
  void copy(Settings settings)
  {
    showTopTip = settings.showTopTip;
    topForums = List<String>.from(settings.topForums);
  }
}