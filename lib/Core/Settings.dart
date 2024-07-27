/// 设置信息
class Settings 
{
  /// 是否显示进吧页面的签到图标提示
  bool showSignTip = true;
  /// 置顶贴吧
  List<int> topForums = [];

  /// 获取设置信息中的变量列表
  static const List<String> variableList = ['showSignTip', 'topForums'];

  /// 整型数组转换为字符串
  static String listToString(List<int> list) => list.map((e) => e.toString()).join('|');

  /// 字符串转换为整型数组
  static List<int> stringToList(String str) => str.split('|').map((e) => int.parse(e)).toList();

  /// 将设置信息转化为键值对
  Map<String, String> toMap() => 
  {
    'showSignTip': showSignTip.toString(),
    'topForums': listToString(topForums),
  };

  /// 将键值对转化为设置信息
  static Settings fromMap(Map<String, String> map)
  {
    Settings settings = Settings();
    if (map['showSignTip'] != null) settings.showSignTip = bool.parse(map['showSignTip']!);
    if (map['topForums'] != null && map['topForums']!.isNotEmpty) settings.topForums = stringToList(map['topForums']!);
    return settings;
  }

  /// 将设置信息复制到当前对象
  /// 
  /// [settings] 要复制的设置信息
  void copy(Settings settings)
  {
    showSignTip = settings.showSignTip;
    topForums = List<int>.from(settings.topForums);
  }
}