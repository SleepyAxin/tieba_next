// 请求接口（无请求参数版本）
abstract class IRequest<TResponse> 
{
  Future<TResponse> requestAsync();
}

// 请求接口（带请求参数版本）
abstract class IRequest2<TRequest, TResponse> 
{
  Future<TResponse> requestAsync(TRequest requestParams);
}

// 解析接口（原始数据类型版本）
abstract class IParse<TResponse> 
{
  TResponse parseBody(String body);
}

// 解析接口（泛型数据类型版本）
abstract class IParse2<TResponse, TBody> 
{
  TResponse parseBody(TBody body);
}

// 基础请求基类（无请求参数版本）
abstract class BaseApiRequest<TResponse> implements IRequest<TResponse>, IParse<TResponse> 
{
  @override
  Future<TResponse> requestAsync();

  @override
  TResponse parseBody(String body);
}

// 基础请求基类（带请求参数版本）
abstract class BaseApiRequest2<TRequest, TResponse> implements IRequest2<TRequest, TResponse>, IParse<TResponse> 
{
  @override
  Future<TResponse> requestAsync(TRequest requestParams);

  @override
  TResponse parseBody(String body);
}

// 基础请求基类（带请求参数和自定义body类型版本）
abstract class BaseApiRequest3<TRequest, TResponse, TBody> implements IRequest2<TRequest, TResponse>, IParse2<TResponse, TBody> 
{
  @override
  Future<TResponse> requestAsync(TRequest requestParams);

  @override
  TResponse parseBody(TBody body);
}