import 'package:dio/dio.dart';

abstract class IHttpClient {
  Future<Response<dynamic>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<Response<dynamic>> post(
    String url, {
    Map<String, dynamic>? data,
    Options? options,
  });

  Future<Response<dynamic>> put(
    String url, {
    Map<String, dynamic>? data,
    Options? options,
  });

  Future<Response<dynamic>> delete(
    String url, {
    Map<String, dynamic>? data,
    Options? options,
  });
}
