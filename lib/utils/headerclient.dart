import 'package:billdivide/auth/secure_storage.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart';

class DioTokenInterceptor extends Interceptor {
  DioTokenInterceptor();

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

class HttpClientWithToken extends BaseClient {
  HttpClientWithToken();

  Client client = Client();

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    var token = await SecureStorageHelper.getInstance().getAccessToken();

    if (token != null) {
      request.headers['Authorization'] = 'Bearer $token';
    }
    return client.send(request);
  }
}
