import 'package:http/http.dart' as http;

class HttpClientWithToken extends http.BaseClient {
  HttpClientWithToken(this.token);

  final String token;
  final http.Client _client = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Authorization'] = token;
    print(token);
    return _client.send(request);
  }
}
