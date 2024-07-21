/// 设置信息
class Settings 
{
  /// 是否显示进吧页面的签到图标提示
  bool showSignTip = true;

  static const variableList = ['showSignTip'];

  /// 将设置信息转化为键值对
  Map<String, String> toMap() => 
  {
    'showSignTip': showSignTip ? '1' : '0'
  };

  /// 将键值对转化为设置信息
  static Settings fromMap(Map<String, String> map)
  {
    Settings settings = Settings();
    if (map['showSignTip'] != null) settings.showSignTip = map['showSignTip'] != '0';
    return settings;
  }

  /// 将设置信息复制到当前对象
  /// 
  /// [settings] 要复制的设置信息
  void copy(Settings settings)
  {
    showSignTip = settings.showSignTip;
  }
}