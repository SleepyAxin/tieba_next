import 'package:flutter/material.dart';

import 'package:tieba_next/TieBaAPI/API/DioManager.dart';

/// 获取吧数据列表
class Forum
{
  /// 获取本人关注的贴吧列表
  static Future<Map<String, dynamic>?> mylikes(int st, int pn, int rn) async
  {
    const String url = '/mg/o/getForumHome';
    final String params = '?st=$st&pn=$pn&rn=$rn';

    try 
    {
      final Response response = await DioManager.webDio.get(url + params);
      if (response.statusCode == 200) return response.data;
      return null;
    }
    catch (error)
    {
      debugPrint('获取本人关注贴吧列表失败: $error');
      return null;
    }
  }

  /// 获取本人关注的贴吧列表详细信息，如是否签到，经验等
  static Future<Map<String, dynamic>?> mylikesDetial() async
  {
    const String url = '/mo/q/newmoindex';

    try 
    {
      final Response response = await DioManager.webDio.get(url);
      if (response.statusCode == 200) return response.data;
      return null;
    }
    catch (error)
    {
      debugPrint('获取本人关注贴吧列表详细信息失败: $error');
      return null;
    }
  }

  /// 获取吧内首页的信息 置顶帖子 首页帖子 等
  static Future<Map<String, dynamic>?> homeInfo
  (String kw, int st, int pn, int rn, int isGood, int cid) async
  {
    const String url = '/mg/f/getFrsData';
    final String params = '?kw=$kw&rn=$rn&pn=$pn&is_good=$isGood&cid=$cid&sort_type=$st';

    try 
    {
      final Response response = await DioManager.webDio.get(url + params);
      if (response.statusCode == 200) return response.data;
      return null;
    }
    catch (error)
    {
      debugPrint('获取$kw吧首页信息失败: $error');
      return null;
    }
  }
}