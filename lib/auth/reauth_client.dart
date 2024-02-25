import 'package:dio/dio.dart';
import 'package:dio_http2_adapter/dio_http2_adapter.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/foundation.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:billdivide/auth/secure_storage.dart';
import 'package:billdivide/graphql/__generated__/queries.req.gql.dart';
import 'package:billdivide/nocache/nocachestore.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:billdivide/utils/headerclient.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:graphql_query_compress/graphql_query_compress.dart';

class ReAuthClient {
  late Client _cachedClient;

  Dio dio;

  late Function() onLogout;

  ReAuthClient._init(this.onLogout)
      : dio = Dio()
          ..interceptors.add(LogInterceptor())
          ..interceptors.add(DioTokenInterceptor())
          ..httpClientAdapter = Http2Adapter(
            ConnectionManager(
              idleTimeout: const Duration(seconds: 10),
            ),
          ) {
    _cachedClient = _getClientWithToken(
        dio,
        Cache(
          store: MemoryStore(),
        ));
  }

  static Future<ReAuthClient> getClient(Function() onLogout) async {
    return ReAuthClient._init(onLogout);
  }

  static Client _getClientWithToken(Dio dio, Cache cache) => Client(
        defaultFetchPolicies: {
          OperationType.query: FetchPolicy.CacheAndNetwork,
        },
        cache: cache,
        link: kIsWeb
            ? HttpLink(
                const String.fromEnvironment(
                  'ENDPOINT',
                  defaultValue: 'https://backend.billdivide.app',
                ),
                httpClient: HttpClientWithToken())
            : DioLink(
                const String.fromEnvironment(
                  'ENDPOINT',
                  defaultValue: 'https://backend.billdivide.app',
                ),
                client: dio,
                serializer: const RequestSerializerWithCompressor(),
              ),
      );

  Future<OperationResponse<TData, TVars>> executeNonCache<TData, TVars>(
      OperationRequest<TData, TVars> request,
      [NextTypedLink<TData, TVars>? forward,
      bool canRefresh = true]) async {
    final response = await _cachedClient.request(request, forward).first;
    final bool isErrored = (response.graphqlErrors ?? [])
        .any((element) => element.message == "Unauthorized");
    if (isErrored) {
      if (canRefresh) {
        final refreshToken =
            await SecureStorageHelper.getInstance().getRefreshToken();
        if (refreshToken != null) {
          await refreshTokens(refreshToken);
          return executeNonCache(request, forward, false);
        }
      } else {
        onLogout();
      }
    }
    return response;
  }

  Future<Stream<OperationResponse<TData, TVars>>> executeCached<TData, TVars>(
      OperationRequest<TData, TVars> request,
      [NextTypedLink<TData, TVars>? forward,
      bool canRefresh = true]) async {
    final response = _cachedClient.request(request, forward);
    return response.asyncMap((response) async {
      final bool isErrored = (response.graphqlErrors ?? [])
          .any((element) => element.message == "Unauthorized");
      if (isErrored) {
        if (canRefresh) {
          final refreshToken =
              await SecureStorageHelper.getInstance().getRefreshToken();
          if (refreshToken != null) {
            if (_cachedClient.cache.identify(request) != null) {
              _cachedClient.cache.evict(_cachedClient.cache.identify(request)!);
            }
            await refreshTokens(refreshToken);
            return executeNonCache(request, forward, false);
          }
        } else {
          onLogout();
        }
      }
      return response;
    });
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
      }
    } catch (e) {
      // // print(e);
    }
  }

  logOut() {
    _cachedClient.cache.store.clear();
  }
}
