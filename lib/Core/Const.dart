class Const 
{
  static const String mainVersion = "12.72.1.0";
  static const String postVersion = "12.35.1.0";
  static const String appSecureScheme = "https";
  static const String appInsecureScheme = "http";
  static const String appBaseHost = "tiebac.baidu.com";
  static const String webBaseHost = "tieba.baidu.com";
  static const String version = "4.4.9";
  static const int tbcAndroidIdSize = 16;
  static const int tbcMd5HashSize = 16;
  static const int tbcMd5StrSize = (tbcMd5HashSize * 2);
  static const int tbcSha1HashSize = 20;
  static const int tbcSha1HexSize =  (tbcSha1HashSize * 2);
  static final int tbcSha1Base32Size = base32Len(tbcSha1HashSize);

  static int base32Len(int len) => ((len / 5) * 8 + ((len % 5 != 0) ? 8 : 0)).toInt();
}