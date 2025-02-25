/// 贴吧服务器异常
/// 
/// * [code] 错误码
/// 
/// * [msg] 错误信息
class TieBaServerException implements Exception 
{
  /// 错误码
  final int code;
  /// 错误信息
  final String msg;

  /// 贴吧服务器异常
  /// 
  /// * [code] 错误码
  /// 
  /// * [msg] 错误信息
  const TieBaServerException(this.code, this.msg);

  @override
  String toString() => 'TieBaServerException{code: $code, msg: $msg}';
}
