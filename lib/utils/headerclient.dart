import 'package:billdivide/auth/secure_storage.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class HttpClientWithToken extends Interceptor {
  HttpClientWithToken();

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    var token = await SecureStorageHelper.getInstance().getAccessToken();

    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }
}
