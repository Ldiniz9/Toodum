import 'package:dio/dio.dart';
import 'package:toodum/source/core/flavor/flavor.dart';
import 'package:toodum/source/core/network/http_client.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHttpClient)
final class HttpClient implements IHttpClient {
  final Dio _dio;

  HttpClient()
    : _dio = Dio(BaseOptions(baseUrl: FlavorConfig.instance.baseAPIUrl));

  @override
  Future<Response<dynamic>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _dio.get(url, queryParameters: queryParameters, options: options);
  }

  @override
  Future<Response<dynamic>> post(
    String url, {
    Map<String, dynamic>? data,
    Options? options,
  }) {
    return _dio.post(url, data: data, options: options);
  }

  @override
  Future<Response<dynamic>> put(
    String url, {
    Map<String, dynamic>? data,
    Options? options,
  }) {
    return _dio.put(url, data: data, options: options);
  }

  @override
  Future<Response<dynamic>> delete(
    String url, {
    Map<String, dynamic>? data,
    Options? options,
  }) {
    return _dio.delete(url, data: data, options: options);
  }
}
