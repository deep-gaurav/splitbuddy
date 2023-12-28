import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:splitbuddy/auth/secure_storage.dart';
import 'package:splitbuddy/graphql/__generated__/queries.req.gql.dart';
import 'package:splitbuddy/nocache/nocachestore.dart';
import 'package:splitbuddy/state/app_state.dart';
import 'package:splitbuddy/utils/headerclient.dart';

class ReAuthClient {
  Client? _client;
  late Function() onLogout;

  ReAuthClient._init(this._client, this.onLogout);

  static Future<ReAuthClient> getClient(Function() onLogout) async {
    var token = await SecureStorageHelper.getInstance().getAccessToken();
    return ReAuthClient._init(_getClientWithToken(token), onLogout);
  }

  static Client _getClientWithToken(String? token) => Client(
        cache: Cache(store: NoStore()),
        link: HttpLink(
          const String.fromEnvironment(
            'ENDPOINT',
            defaultValue: 'https://split-be.deepwith.in',
          ),
          httpClient:
              token == null ? null : HttpClientWithToken("Bearer $token"),
        ),
      );

  Future<OperationResponse<TData, TVars>> execute<TData, TVars>(
      OperationRequest<TData, TVars> request,
      [NextTypedLink<TData, TVars>? forward,
      bool canRefresh = true]) async {
    final response = await _client!.request(request, forward).first;
    final bool isErrored = (response.graphqlErrors ?? [])
        .any((element) => element.message == "Unauthorized");
    if (isErrored) {
      if (canRefresh) {
        final refreshToken =
            await SecureStorageHelper.getInstance().getRefreshToken();
        if (refreshToken != null) {
          await refreshTokens(refreshToken);
          return execute(request, forward, false);
        }
      } else {
        onLogout();
      }
    }
    return response;
  }

  refreshTokens(String refreshToken) async {
    try {
      var response = await AppState.unAuthorizedClient
          .request(
              Grefresh_tokenReq((b) => b.vars..refresh_token = refreshToken))
          .first;
      if (response.data?.refreshToken != null) {
        await SecureStorageHelper.getInstance().storeTokens(
          accessToken: response.data!.refreshToken.accessToken,
          refreshToken: response.data!.refreshToken.refreshToken,
        );
        _client = _getClientWithToken(response.data!.refreshToken.accessToken);
      }
    } catch (e) {
      print(e);
    }
  }
}
