import 'dart:convert';
import 'dart:typed_data';

import 'package:hashlib/hashlib.dart';
import 'package:tieba_next/Core/Const.dart';

class TbCrypto 
{
  static const int hasherNum = 4;
  static const int stepSize = 5;
  static const int hashSizeInBit = 32;

  static final List<int> cuid2Prefix = utf8.encode("com.baidu");
  static final List<int> cuid3Prefix = utf8.encode("com.helios");
  static final List<String> hexUppercaseTable = "0123456789ABCDEF".split('');

  /// 更新哈希的内部状态
  /// 
  /// [sec] 
  /// 
  /// [hashVal]
  /// 
  /// [start]
  /// 
  /// [flag]
  static Uint8List tbcUpdate(int sec, int hashVal, int start, bool flag) 
  {
    final int end = start + hashSizeInBit;
    int secTemp = sec;
    final int var9 = (1 << end) - 1;
    int var5 = (var9 & sec) >> start;

    flag ? var5 ^= hashVal : var5 &= hashVal;

    for (int i = 0; i < hashSizeInBit; i++) 
    {
      int opIdx = start + i;

      (var5 & (1 << i)) != 0 ? secTemp |= (1 << opIdx) : secTemp &= ~(1 << opIdx);
    }

    return Uint8List(8)..buffer.asByteData().setInt64(0, secTemp);
  }

  /// 将内部状态写入缓冲区
  /// 
  /// [sec]
  static List<int> tbcWriteBuffer(int sec) 
  {
    final List<int> buffer = List<int>.generate(stepSize, (i) => (sec >> (8 * i)) & 0xFF);
    return buffer;
  }

  /// 实现Helios哈希，返回结果
  /// 
  /// [src]
  /// 
  /// [size]
  static List<int> tbcHeliosHash(List<int> src, int size) 
  {
    // 初始化 sec 和缓冲区
    int sec = (1 << 40) - 1;
    List<int> buffer = List.filled(hasherNum * stepSize, 0xFF);

    // 使用 CRC32 进行第一次哈希
    String crcData = [...src.sublist(0, size), ...buffer.sublist(0, stepSize)].toString();
    int crc32Val = crc32code(crcData);
    sec = tbcUpdate(sec, crc32Val, 8, false)[0];

    // 将结果写入缓冲区
    tbcWriteBuffer(sec).forEach((byte) => buffer[stepSize] = byte);

    // 使用 XXHash32 进行第二次哈希
    String hashData = [...src.sublist(0, size), ...buffer.sublist(0, stepSize * 2)].toString();
    int currentHashAsUInt32 = xxh32code(hashData);
    sec = tbcUpdate(sec, currentHashAsUInt32, 0, true)[0];

    tbcWriteBuffer(sec).forEach((byte) => buffer[stepSize * 2] = byte);

    // 再次使用 XXHash32 进行第三次哈希
    hashData += [...Uint8List.fromList(buffer.sublist(stepSize * 2, stepSize))].toString();
    currentHashAsUInt32 = xxh32code(hashData);
    sec = tbcUpdate(sec, currentHashAsUInt32, 1, true)[0];

    tbcWriteBuffer(sec).forEach((byte) => buffer[stepSize * 3] = byte);

    // 使用 CRC32 进行第四次哈希
    crcData += [...Uint8List.fromList(buffer.sublist(stepSize, stepSize * 3))].toString();
    crc32Val = crc32code(crcData);
    sec = tbcUpdate(sec, crc32Val, 7, true)[0];

    // 返回最终结果
    return tbcWriteBuffer(sec);
  }

  /// 生成 CUID Galaxy 2 并返回结果
  /// 
  /// [androidId] Android ID
  static String tbcCuidGalaxy2(List<int> androidId) 
  {
    if (androidId.length != 16) 
    {
      throw ArgumentError("无效的android_id大小，期望为16，实际为${androidId.length}");
    }

    // 构建MD5输入缓冲区
    List<int> md5Buffer = List.from(cuid2Prefix)..addAll(androidId);

    // 计算MD5哈希值
    final HashDigest md5Hash = md5.convert(md5Buffer);
    StringBuffer sb = StringBuffer();
    for (int b in md5Hash.bytes)
    {
      sb.write(hexUppercaseTable[b >> 4]);
      sb.write(hexUppercaseTable[b & 0x0F]);
    }

    // 添加连接符
    sb.write("|V");

    // 计算Helios哈希值
    final List<int> heliosHash = tbcHeliosHash(utf8.encode(sb.toString()), 16);

    // 使用Base32编码
    sb.write(base32Encode(Uint8List.fromList(heliosHash)));

    return sb.toString();
  }

  /// 生成 CUID 3 AID 并返回结果
  /// 
  /// [androidId] Android ID
  /// 
  /// [uuid] UUID
  static String? tbcC3Aid(List<int> androidId, List<int> uuid) 
  {
    final int sha1InputLength = cuid3Prefix.length + Const.tbcAndroidIdSize + uuid.length;
    final int dstOffset = 5 + Const.tbcSha1Base32Size;

    // 构建SHA1输入缓冲区
    final List<int> sha1Buffer = List.filled(sha1InputLength, 0);
    sha1Buffer.setRange(0, cuid3Prefix.length, cuid3Prefix);
    sha1Buffer.setRange(cuid3Prefix.length, cuid3Prefix.length + 16, androidId);
    sha1Buffer.setRange(cuid3Prefix.length + 16, sha1InputLength, uuid);

    // 计算SHA1哈希
    final HashDigest sha1Hash = sha1.convert(Uint8List.fromList(sha1Buffer));

    final StringBuffer sb = StringBuffer("A00-");
    sb.write(base32Encode(sha1Hash.bytes));

    // 计算Helios哈希
    final List<int> sbBytes = utf8.encode(sb.toString());
    final List<int> heliosHash = tbcHeliosHash(sbBytes, dstOffset);

    // 使用Base32编码
    sb.write(base32Encode(Uint8List.fromList(heliosHash)));

    return sb.toString();
  }

  /// Base32编码实现，返回编码后的字符串
  /// 
  /// [input] 输入字节数组
  static String base32Encode(Uint8List input) 
  {
    const String base32Chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567";
    final StringBuffer sb = StringBuffer();
    int bitBuffer = 0;
    int bitCount = 0;

    for (int t in input) 
    {
      bitBuffer = (bitBuffer << 8) | t;
      bitCount += 8;

      while (bitCount >= 5) 
      {
        int index = (bitBuffer >> (bitCount - 5)) & 31;
        sb.write(base32Chars[index]);
        bitCount -= 5;
      }
    }

    if (bitCount > 0) 
    {
      int index = (bitBuffer << (5 - bitCount)) & 31;
      sb.write(base32Chars[index]);
    }

    return sb.toString();
  }

  static String cuidGalaxy2(String androidId) 
  {
    List<int> androidIdBytes = utf8.encode(androidId);

    if (androidIdBytes.length != 16) 
    {
      throw ArgumentError("无效的android_id大小，期望为16，实际为${androidIdBytes.length}");
    }

    return tbcCuidGalaxy2(androidIdBytes);
  }

  static String? c3Aid(String androidId, String uuid) 
  {
    List<int> androidIdBytes = utf8.encode(androidId);
    List<int> uuidBytes = utf8.encode(uuid);

    if (androidIdBytes.length != 16) 
    {
      throw ArgumentError("无效的android_id大小，期望为16，实际为${androidIdBytes.length}");
    }

    if (uuidBytes.length != 36) 
    {
      throw ArgumentError("无效的uuid大小，期望为36，实际为${uuidBytes.length}");
    }

    return tbcC3Aid(androidIdBytes, uuidBytes);
  }
}