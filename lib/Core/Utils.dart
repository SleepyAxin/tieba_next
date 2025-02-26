import 'dart:math';
import 'dart:typed_data';

import 'package:hashlib/codecs.dart';

class Utils 
{
  /// 创建一个静态的私有实例
  static final Utils _instance = Utils._internal();

  /// 私有构造函数
  Utils._internal();

  /// 提供一个工厂构造函数，返回唯一实例
  factory Utils() => _instance;

  /// 生成Android ID（8字节随机数的十六进制字符串）
  static String generateAndroidId() 
  {
    // 创建8字节安全随机数
    final Random random = Random.secure();
    final List<int> randomBytes = List<int>.generate(8, (_) => random.nextInt(256));

    // 转换为小写十六进制字符串
    return toHex(randomBytes).toLowerCase();
  }

  /// 应用PKCS7填充
  static Uint8List applyPkcs7Padding(Uint8List data, int blockSize) 
  {
    final int paddingSize = blockSize - (data.length % blockSize);
    final Uint8List paddedData = Uint8List(data.length + paddingSize);

    // 复制原始数据
    paddedData.setRange(0, data.length, data);

    // 填充字节
    for (int i = data.length; i < paddedData.length; i++) 
    {
      paddedData[i] = paddingSize;
    }

    return paddedData;
  }

  /// 移除PKCS7填充
  static Uint8List removePkcs7Padding(Uint8List paddedData, int blockSize) 
  {
    if (paddedData.isEmpty) 
    {
      throw ArgumentError('填充数据不可为空', 'paddedData');
    }

    // 获取最后一个字节作为填充大小
    final int paddingSize = paddedData[paddedData.length - 1];

    // 验证填充大小有效性
    if (paddingSize < 1 || paddingSize > blockSize) 
    {
      throw ArgumentError('无效的填充大小', 'paddedData');
    }

    // 验证数据长度有效性
    if (paddedData.length < paddingSize) 
    {
      throw ArgumentError('填充大小长于数据长度', 'paddedData');
    }

    // 返回去除填充后的数据
    return Uint8List.sublistView(paddedData, 0, paddedData.length - paddingSize);
  }

  /// 判断是否是portrait
  static bool isPortrait(String portrait) => portrait.contains('tb.');

  /// 转换贴吧数字（处理"万"单位）
  static int tbNumToInt(String tbNum) 
  {
    if (tbNum.isEmpty) return 0;
    
    if (tbNum.endsWith('万')) 
    {
      // 转换万单位数值
      final String numStr = tbNum.substring(0, tbNum.length - 1);
      return (double.parse(numStr) * 10000).toInt();
    }
    
    return int.parse(tbNum);
  }
}