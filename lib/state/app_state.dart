import 'dart:async';

import 'package:billdivide/gen/assets.gen.dart';
import 'package:billdivide/graphql/__generated__/client_version.req.gql.dart';
import 'package:billdivide/nocache/nocachestore.dart';
import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:ferry/ferry.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:billdivide/__generated__/schema.schema.gql.dart';
import 'package:billdivide/auth/reauth_client.dart';
import 'package:billdivide/auth/secure_storage.dart';
import 'package:billdivide/extensions/group_extension.dart';
import 'package:billdivide/extensions/user_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/graphql/__generated__/queries.req.gql.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';

enum AuthStates {
  loading,
  unAuthorized,
  authorizedRequiresSignup,
  authorized,
}

enum AppConnectionState { connected, updateRequried }

class AppState extends ChangeNotifier {
  static Client unAuthorizedClient = Client(
    cache: Cache(store: NoStore()),
    link: HttpLink(
      const String.fromEnvironment(
        'ENDPOINT',
        defaultValue: 'https://backend.billdivide.app',
      ),
    ),
  );

  ReAuthClient? _reAuthClient;
  Future<ReAuthClient> _getClient() async {
    _reAuthClient ??= await ReAuthClient.getClient(logout);
    return _reAuthClient!;
  }

  AppState() {
    verifyAppSupport();
    refreshCurrencies();
    unawaited(() async {
      refresh(await _getClient());
    }());
    notificationSubscription.stream.listen((event) async {
      refresh(await client);
    });
  }

  GUserFields? _user;
  GrefreshData_user? _auth;

  AuthStates authState = AuthStates.loading;
  AppConnectionState connectionState = AppConnectionState.connected;

  GUserFields? get user =>
      _user ??
      ((_auth is GrefreshData_user__asRegistered)
          ? (_auth as GrefreshData_user__asRegistered).user
          : null);

  UnmodifiableListView<GGroupFields> get userGroups =>
      UnmodifiableListView(_userGroups ?? []);

  List<GGroupFields>? _userGroups;

  List<GrefreshData_interactedUsers>? _interactedUsers;

  bool get isUsersLoading => _interactedUsers == null;
  bool get isGroupsLoading => _userGroups == null;

  List<GAmountFields> get toPay =>
      _interactedUsers?.fold<List<GAmountFields>>(
          [], (previousValue, element) => previousValue + element.toPay) ??
      [];

  List<GAmountFields> get toReceive =>
      _interactedUsers?.fold<List<GAmountFields>>(
          [], (previousValue, element) => previousValue + element.toReceive) ??
      [];

  UnmodifiableListView<GUserPaysFields> get interactedUsers =>
      UnmodifiableListView(_interactedUsers ?? []);

  Future<ReAuthClient> get client => _getClient();

  GGroupFields? getGroup(String groupId) =>
      userGroups.firstWhereOrNull((element) => element.id == groupId);

  String getGroupName(String groupId) =>
      userGroups
          .firstWhereOrNull((element) => element.id == groupId)
          ?.getDisplayName(this) ??
      groupId;

  GUserFields? getUser(String id) => interactedUsers.firstWhereOrNull(
        (element) => element.id == id,
      );

  Map<String, GCurrencyFields> currencies = {};

  Map<String, Future<String?>> imageIdUrls = <String, Future<String?>>{};

  GCurrencyFields? defaultCurrency;

  Future<String?> getImageUrl(String id) async {
    var imageUrl = imageIdUrls[id] ?? _getImageUrl(id);
    return imageUrl;
  }

  StreamController<void> notificationSubscription =
      StreamController<void>.broadcast();

  refreshCurrencies() async {
    unAuthorizedClient.request(GcurrenciesReq()).listen((event) {
      currencies = Map.fromEntries(
        event.data?.currencies.map((p0) => MapEntry(p0.id, p0)) ??
            currencies.entries,
      );
    });
  }

  Future<String?> _getImageUrl(String id) async {
    var result = await (await client).executeNonCache(GgetImageViewUrlReq((b) {
      b.vars.imageId = id;
      b.fetchPolicy = FetchPolicy.NetworkOnly;
    }));
    return result.data?.imageUrl;
  }

  GGroupFields? getGroupFromId(String id) =>
      userGroups.firstWhereOrNull((e) => e.id == id);

  verifyAppSupport() async {
    var pubspecString = await rootBundle.loadString(Assets.pubspec);
    var pubspec = Pubspec.parse(pubspecString);
    unAuthorizedClient
        .request(GsupportedClientConstraintsReq())
        .listen((event) {
      if (event.data?.supportedClient != null) {
        if (!VersionConstraint.parse(event.data!.supportedClient)
            .allows(pubspec.version!)) {
          connectionState = AppConnectionState.updateRequried;
          notifyListeners();
        }
      }
    });
  }

  refresh(
    ReAuthClient client, {
    bool onlyUser = false,
  }) {
    if (onlyUser) {
      client.executeCached(GuserReq()).then((value) {
        value.listen((value) {
          if (value.data?.user == null) {
            authState = AuthStates.unAuthorized;
          } else if (value.data?.user is GuserData_user__asUnregistered) {
            authState = AuthStates.authorizedRequiresSignup;
          } else if (value.data?.user is GuserData_user__asRegistered) {
            authState = AuthStates.authorized;
            refresh(client);
          }
          notifyListeners();
        });
      });
    } else {
      client.executeCached(GrefreshReq()).then((value) {
        value.listen((value) {
          _auth = value.data?.user;
          if (value.data?.user == null) {
            authState = AuthStates.unAuthorized;
          } else if (value.data?.user is GrefreshData_user__asUnregistered) {
            authState = AuthStates.authorizedRequiresSignup;
          } else if (value.data?.user is GrefreshData_user__asRegistered) {
            authState = AuthStates.authorized;
          }

          if (value.data?.config.defaultCurrencyId != null) {
            defaultCurrency = currencies[value.data!.config.defaultCurrencyId];
          }

          _userGroups = [];
          _userGroups!.addAll(value.data?.groups.toList() ?? []);
          _interactedUsers = [];
          _interactedUsers!.addAll(value.data?.interactedUsers ?? []);

          notifyListeners();
        });
      });
    }
    // print("refreshing");
  }

  setupAndSendFirebase() async {
    const String vapidKey = String.fromEnvironment('VAPID_KEY');
    if (vapidKey.isEmpty && kIsWeb) {
      // print("No VAPID KEY PRESENT");
      return;
    }
    try {
      // print("Fetching notification token ");
      await FirebaseMessaging.instance.requestPermission(provisional: true);

      final fcmToken =
          await FirebaseMessaging.instance.getToken(vapidKey: vapidKey);
      // print("Received notification token $fcmToken");
      (await client).executeNonCache(GsetNotificationTokenReq((b) {
        b.vars.token = fcmToken;
        b.fetchPolicy = FetchPolicy.NetworkOnly;
      }));
      FlutterLocalNotificationsPlugin localNotificationsPlugin =
          FlutterLocalNotificationsPlugin();
      await localNotificationsPlugin.initialize(
        const InitializationSettings(
          android: AndroidInitializationSettings('ic_stat_icon_fg_no_outline'),
        ),
      );
      const Map<String, String> notificationCategories = <String, String>{
        'default': 'Other Notification',
        'new_expense': 'New Expense',
        'new_payment': 'New Payment',
      };
      for (final channel in notificationCategories.entries) {
        await localNotificationsPlugin
            .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin>()
            ?.createNotificationChannel(
              AndroidNotificationChannel(
                channel.key,
                channel.value,
              ),
            );
      }
      FirebaseMessaging.onMessage.listen((event) async {
        notificationSubscription.add(null);
      });
    } catch (e) {
      // print(
      //   "Notification token fetch failed $e",
      // );
    }
  }

  Future<Stream<List<GGroupFields>>> getGroups() async {
    final groups = await (await _getClient()).executeCached(GgroupsReq());

    return groups.map((event) {
      _userGroups = event.data?.groups.toList() ?? _userGroups;
      return _userGroups ?? [];
    });
  }

  Future<GUserFields> signup(String name, String upiId) async {
    var result = await (await _getClient()).executeNonCache(
      GsignupReq((b) {
        b.vars.name = name;
        b.fetchPolicy = FetchPolicy.NetworkOnly;
      }),
    );
    if (result.data?.signup != null) {
      await SecureStorageHelper.getInstance().storeTokens(
          accessToken: result.data!.signup.tokens.accessToken,
          refreshToken: result.data!.signup.tokens.refreshToken);
      _reAuthClient = null;
      refresh(await _getClient());
      return result.data!.signup.user;
    } else {
      throw result;
    }
  }

  Future<GGroupFields> createGroup(String name) async {
    var result =
        await (await _getClient()).executeNonCache(Gcreate_groupReq((b) {
      b.vars.name = name;
      b.fetchPolicy = FetchPolicy.NetworkOnly;
    }));

    if (result.data != null) {
      var newgroup = <GGroupFields>[
        ...userGroups,
        result.data!.createGroup,
      ];
      _userGroups = newgroup;
      notifyListeners();
      return result.data!.createGroup;
    } else {
      throw result;
    }
  }

  Future<GGroupFields> addMemberToGroup(String email, String group) async {
    var result =
        await (await _getClient()).executeNonCache(Gadd_to_groupReq((b) {
      b.vars
        ..groupId = group
        ..email = email;
      b.fetchPolicy = FetchPolicy.NetworkOnly;
    }));

    if (result.data != null) {
      var newgroup = await (await _getClient()).executeNonCache(GgroupReq((b) {
        b.vars
          ..groupId = group
          ..limit = 10;
        b.fetchPolicy = FetchPolicy.NetworkOnly;
      }));
      var index =
          _userGroups?.indexWhere((e) => e.id == newgroup.data!.group.id);
      if (index != null) {
        _userGroups![index] = newgroup.data!.group;
      } else {
        _userGroups = [newgroup.data!.group];
      }

      refresh(await _getClient());

      notifyListeners();
      return newgroup.data!.group;
    } else {
      throw result;
    }
  }

  Future<GNewExpenseFields> addExpense(
    String title,
    int amount,
    String groupId,
    String currencyId,
    List<GSplitInput> splits,
    String categoryId, {
    String? note,
    String? imageId,
    DateTime? transactionAt,
  }) async {
    var client = await _getClient();
    var result = await client.executeNonCache(Gadd_expenseReq(
      (b) {
        b.vars
          ..title = title
          ..amount = amount
          ..currencyId = currencyId
          ..category = categoryId
          ..splits = ListBuilder(splits)
          ..groupId = groupId
          ..imageId = imageId
          ..note = note
          ..transactionAt = transactionAt?.toUtc().toIso8601String();
        b.fetchPolicy = FetchPolicy.NetworkOnly;
      },
    ));
    if (result.data != null) {
      refresh(client);
      return result.data!.addExpense;
    } else {
      throw result;
    }
  }

  Future<GcreateNonGroupExpenseData_addNonGroupExpense> addNonGroupExpense({
    String? note,
    String? imageId,
    DateTime? transactionAt,
    required String title,
    required int amount,
    required String currencyId,
    required List<GSplitInputNonGroup> splits,
    required String categoryId,
  }) async {
    var client = await _getClient();
    var result = await client.executeNonCache(GcreateNonGroupExpenseReq(
      (b) {
        b.vars
          ..title = title
          ..amount = amount
          ..currencyId = currencyId
          ..category = categoryId
          ..nonGroupSplit = ListBuilder(splits)
          ..imageId = imageId
          ..note = note
          ..transactionAt = transactionAt?.toUtc().toIso8601String();
        b.fetchPolicy = FetchPolicy.NetworkOnly;
      },
    ));
    if (result.data != null) {
      refresh(client);
      return result.data!.addNonGroupExpense;
    } else {
      throw result;
    }
  }

  Future<bool> sendEmailOTP(String email) async {
    var result = await unAuthorizedClient
        .request(Gsend_email_otpReq((b) => b.vars..email = email))
        .first;
    return result.data?.sendEmailOtp ?? false;
  }

  Future<bool> verifyEmailOTP(String email, String otp) async {
    var result = await unAuthorizedClient
        .request(Gverify_email_otpReq((b) => b.vars
          ..email = email
          ..otp = otp))
        .first;
    if (result.data?.verifyOtp
        is Gverify_email_otpData_verifyOtp__asUserSignedUp) {
      final response = result.data?.verifyOtp
          as Gverify_email_otpData_verifyOtp__asUserSignedUp;
      // print("set access and refresh token");

      await SecureStorageHelper.getInstance().storeTokens(
          accessToken: response.accessToken,
          refreshToken: response.refreshToken);

      refresh(await _getClient());

      return true;
    } else if (result.data?.verifyOtp
        is Gverify_email_otpData_verifyOtp__asUserNotSignedUp) {
      final response = result.data?.verifyOtp
          as Gverify_email_otpData_verifyOtp__asUserNotSignedUp;
      // print("set signup token");
      await SecureStorageHelper.getInstance()
          .storeTokens(accessToken: response.signupToken, refreshToken: null);

      refresh(await _getClient(), onlyUser: true);
      return true;
    }
    return false;
  }

  Future<List<GSplitTransactionFields>> simplifyUser(
      {required String userId}) async {
    var result = await (await client).executeNonCache(GsimplifyUserReq((b) {
      b.vars.withUser = userId;
      b.fetchPolicy = FetchPolicy.NetworkOnly;
    }));
    if (result.data?.simplifyCrossGroup != null) {
      refresh(await client);
      return result.data!.simplifyCrossGroup.toList();
    } else {
      throw result;
    }
  }

  Future<GSplitTransactionFields> settleInGroup({
    required String userId,
    required String groupId,
    required String currencyId,
    required int amount,
    String? imageId,
    String? note,
  }) async {
    var result = await (await client).executeNonCache(GsettleInGroupReq((b) {
      b.vars
        ..amount = amount
        ..groupId = groupId
        ..currencyId = currencyId
        ..withUser = userId
        ..imageId = imageId
        ..note = note;
      b.fetchPolicy = FetchPolicy.NetworkOnly;
    }));
    if (result.data?.settleInGroup != null) {
      refresh(await client);
      return result.data!.settleInGroup;
    } else {
      throw result;
    }
  }

  Future<List<GSplitTransactionFields>> autoSettleWithUser({
    required String userId,
    required int amount,
    required String currencyId,
    String? imageId,
    String? note,
  }) async {
    var result =
        await (await client).executeNonCache(GautoSettleWithUserReq((b) {
      b.vars
        ..amount = amount
        ..currencyId = currencyId
        ..withUser = userId
        ..imageId = imageId
        ..note = note;
      b.fetchPolicy = FetchPolicy.NetworkOnly;
    }));
    if (result.data?.autoSettleWithUser != null) {
      refresh(await client);
      return result.data!.autoSettleWithUser.toList();
    } else {
      throw result;
    }
  }

  Future<List<GSplitTransactionFields>> convertCurrency({
    required String userId,
    required String fromCurrencyId,
    required String toCurrencyId,
    required String groupId,
  }) async {
    var result = await (await client).executeNonCache(GcurrencyConvertReq((b) {
      b.vars
        ..withUser = userId
        ..fromCurrencyId = fromCurrencyId
        ..toCurrencyId = toCurrencyId
        ..groupId = groupId;
      b.fetchPolicy = FetchPolicy.NetworkOnly;
    }));
    if (result.data?.convertCurrency != null) {
      refresh(await client);
      return result.data!.convertCurrency.toList();
    } else {
      throw result;
    }
  }

  Future<GUserFields> changeName({required String name}) async {
    var result = await (await client).executeNonCache(GchangeNameReq((b) {
      b.vars.name = name;
      b.fetchPolicy = FetchPolicy.NetworkOnly;
    }));
    _user = result.data?.changeName;
    notifyListeners();
    return user!;
  }

  Future<GCurrencyFields> changeDefaultCurrency(
      {required String currencyId}) async {
    var result =
        await (await client).executeNonCache(GsetDefaultCurrencyReq((b) {
      b.vars.currencyId = currencyId;
      b.fetchPolicy = FetchPolicy.NetworkOnly;
    }));
    defaultCurrency =
        currencies[result.data?.setDefaultCurrency.defaultCurrencyId];
    notifyListeners();
    return defaultCurrency!;
  }

  logout() async {
    authState = AuthStates.unAuthorized;
    await SecureStorageHelper.getInstance().resetTokens();
    (await client).logOut();
    notifyListeners();
  }
}
