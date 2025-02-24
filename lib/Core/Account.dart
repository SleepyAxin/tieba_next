import 'dart:math';
import 'dart:typed_data';

import 'package:flutter_guid/flutter_guid.dart';
import 'package:tieba_next/Core/TbCrypto.dart';
import 'package:tieba_next/Core/User.dart';
import 'package:tieba_next/Core/Utils.dart';

/// 账户
class Account extends User
{
  /// Bduss
  String bduss;
  /// Stoken
  String stoken;

  String? _androidId;
  String? _uuid;
  String? _cuid;
  String? _cuidGalaxy2;
  String? _c3Aid;
  Uint8List? _aesEcbSecKey;
  Uint8List? _aesCbcSecKey;
  String? tbs;
  String? clientId;
  String? sampleId;
  String? zId;

  /// 构造函数
  /// 
  /// [bduss] BDUSS
  /// 
  /// [stoken] STOKEN
  Account({this.bduss = "", this.stoken = ""})
  : super(name: '', username: '', nickname: '', portrait: '');

  /// 账号信息成员变量列表
  static const List<String> variableList = [ 'BDUSS', 'STOKEN' ];

  /// 将账号信息转化为键值对
  Map<String, String> toMap() => { 'BDUSS': bduss, 'STOKEN': stoken };

  /// 将键值对转化为账号信息
  /// 
  /// [map] - 键值对
  static Account? fromMap(Map<String, String> map)
  {
    String? bduss = map['BDUSS'], stoken = map['STOKEN'];
    if (bduss == null || stoken == null) return null;
    Account account = Account(bduss: bduss, stoken: stoken);
    return account;
  }

  /// 复制用户信息
  /// 
  /// [user] - 用户信息
  void copy(User user)
  {
    name = user.name;
    username = user.username;
    nickname = user.nickname;
    portrait = user.portrait;
    followNum = user.followNum;
    fansNum = user.fansNum;
    likeForumNum = user.likeForumNum;
    threadNum = user.threadNum;
    postNum = user.postNum;
  }

  /// AndroidId
  String get androidId => _androidId ??= Utils.generateAndroidId();
  set androidId(String value) => _androidId = value;

  /// Uuid
  String get uuid => _uuid ??= Guid.newGuid.toString();
  set uuid(String value) => _uuid = value;

  String get cuid => _cuid ??= "baidutiebaapp$uuid";

  /// CuidGalaxy2
  String get cuidGalaxy2 => _cuidGalaxy2 ??= TbCrypto.cuidGalaxy2(androidId);

  String? get c3Aid => _c3Aid ??= TbCrypto.c3Aid(androidId, uuid);

  Uint8List get aesEcbSecKey => _aesEcbSecKey ??= _generateRandomBytes(31);

  Uint8List get aesCbcSecKey => _aesCbcSecKey ??= _generateRandomBytes(16);
  set aesCbcSecKey(Uint8List value) => _aesCbcSecKey = value;

  /// 生成一个指定长度随机字节
  static Uint8List _generateRandomBytes(int length) 
  {
    final Random random = Random.secure();
    return Uint8List.fromList(List.generate(length, (_) => random.nextInt(256)));
  }
}

/* /// 账号信息
class Account extends User
{
  /// BDUSS
  final String bduss; 
  /// STOKEN
  final String stoken;

  /// 构造函数
  /// 
  /// [bduss] BDUSS
  /// 
  /// [stoken] STOKEN
  Account({required this.bduss, required this.stoken}) 
  : super(name: '', username: '', nickname: '', portrait: '');

  /// 账号信息成员变量列表
  static const List<String> variableList = [ 'BDUSS', 'STOKEN' ];

  /// 将账号信息转化为键值对
  Map<String, String> toMap() => { 'BDUSS': bduss, 'STOKEN': stoken };

  /// 将键值对转化为账号信息
  /// 
  /// [map] - 键值对
  static Account? fromMap(Map<String, String> map)
  {
    String? bduss = map['BDUSS'], stoken = map['STOKEN'];
    if (bduss == null || stoken == null) return null;
    Account account = Account(bduss: bduss, stoken: stoken);
    return account;
  }

  /// 复制用户信息
  /// 
  /// [user] - 用户信息
  void copy(User user)
  {
    name = user.name;
    username = user.username;
    nickname = user.nickname;
    portrait = user.portrait;
    followNum = user.followNum;
    fansNum = user.fansNum;
    likeForumNum = user.likeForumNum;
    threadNum = user.threadNum;
    postNum = user.postNum;
  }
} */