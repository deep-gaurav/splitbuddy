import 'dart:async';
import 'dart:collection';

import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/foundation.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:splitbuddy/__generated__/schema.schema.gql.dart';
import 'package:splitbuddy/auth/reauth_client.dart';
import 'package:splitbuddy/auth/secure_storage.dart';
import 'package:splitbuddy/extensions/user_extension.dart';
import 'package:splitbuddy/graphql/__generated__/queries.data.gql.dart';
import 'package:splitbuddy/graphql/__generated__/queries.req.gql.dart';

enum AuthStates {
  loading,
  unAuthorized,
  authorizedRequiresSignup,
  authorized,
}

class AppState extends ChangeNotifier {
  static Client unAuthorizedClient = Client(
    link: HttpLink(
      const String.fromEnvironment(
        'ENDPOINT',
        defaultValue: 'https://split-be.deepwith.in',
      ),
    ),
  );

  ReAuthClient? _reAuthClient;
  Future<ReAuthClient> _getClient() async {
    _reAuthClient ??= await ReAuthClient.getClient(logout);
    return _reAuthClient!;
  }

  AppState() {
    _getClient().then(refresh);
    unawaited(() async {
      refresh(await _getClient());
    }());
  }

  GuserData_user? _auth;

  AuthStates authState = AuthStates.loading;

  GUserFields? get user => (_auth is GuserData_user__asRegistered)
      ? (_auth as GuserData_user__asRegistered).user
      : null;

  UnmodifiableListView<GGroupFields> get userGroups =>
      UnmodifiableListView(_userGroups);

  List<GGroupFields> _userGroups = [];

  List<Ginteracted_usersData_interactedUsers> _interactedUsers = [];

  int get toPay => _interactedUsers.fold(
      0, (previousValue, element) => previousValue + element.toPay);

  int get toReceive => _interactedUsers.fold(
      0, (previousValue, element) => previousValue + element.toReceive);

  UnmodifiableListView<Ginteracted_usersData_interactedUsers>
      get interactedUsers => UnmodifiableListView(_interactedUsers);

  Future<ReAuthClient> get client => _getClient();

  refresh(
    ReAuthClient client, {
    bool onlyUser = false,
  }) {
    client.execute(GuserReq()).then((value) {
      _auth = value.data?.user;
      if (value.data?.user == null) {
        authState = AuthStates.unAuthorized;
      } else if (value.data?.user is GuserData_user__asUnregistered) {
        authState = AuthStates.authorizedRequiresSignup;
      } else if (value.data?.user is GuserData_user__asRegistered) {
        authState = AuthStates.authorized;
      }
      notifyListeners();
    });
    if (!onlyUser) {
      client.execute(GgroupsReq()).then((value) {
        _userGroups = [];
        _userGroups.addAll(value.data?.groups.toList() ?? []);

        notifyListeners();
      });

      client.execute(Ginteracted_usersReq()).then((value) {
        _interactedUsers = [];
        _interactedUsers.addAll(value.data?.interactedUsers ?? []);

        notifyListeners();
      });
    }
  }

  Future<List<GGroupFields>> getGroups() async {
    final groups = await (await _getClient()).execute(GgroupsReq());
    _userGroups = groups.data?.groups.toList() ?? _userGroups;
    notifyListeners();
    return _userGroups;
  }

  Future<GUserFields> signup(String name, String upiId) async {
    var result = await (await _getClient()).execute(
      GsignupReq(
        (b) => b.vars
          ..name = name
          ..upi_id = upiId,
      ),
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
    var result = await (await _getClient())
        .execute(Gcreate_groupReq((b) => b.vars..name = name));

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
        await (await _getClient()).execute(Gadd_to_groupReq((b) => b.vars
          ..groupId = group
          ..email = email));

    if (result.data != null) {
      var newgroup = await (await _getClient()).execute(GgroupReq((b) => b.vars
        ..groupId = group
        ..skip = 0
        ..limit = 10));
      var index =
          _userGroups.indexWhere((e) => e.id == newgroup.data!.group.id);
      _userGroups[index] = newgroup.data!.group;

      refresh(await _getClient());

      notifyListeners();
      return newgroup.data!.group;
    } else {
      throw result;
    }
  }

  Future<GExpenseFields> addExpense(String title, int amount, String groupId,
      List<GSplitInput> splits) async {
    var client = await _getClient();
    var result = await client.execute(Gadd_expenseReq(
      (b) => b.vars
        ..title = title
        ..amount = amount
        ..splits = ListBuilder(splits)
        ..groupId = groupId,
    ));
    if (result.data != null) {
      refresh(client);
      return result.data!.addExpense;
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
      await SecureStorageHelper.getInstance().storeTokens(
          accessToken: response.accessToken,
          refreshToken: response.refreshToken);
      _reAuthClient = null;
      refresh(await _getClient());

      return true;
    } else if (result.data?.verifyOtp
        is Gverify_email_otpData_verifyOtp__asUserNotSignedUp) {
      final response = result.data?.verifyOtp
          as Gverify_email_otpData_verifyOtp__asUserNotSignedUp;
      await SecureStorageHelper.getInstance()
          .storeTokens(accessToken: response.signupToken, refreshToken: null);

      _reAuthClient = null;
      refresh(await _getClient(), onlyUser: true);
      return true;
    }
    return false;
  }

  logout() {
    authState = AuthStates.unAuthorized;
    notifyListeners();
  }
}
