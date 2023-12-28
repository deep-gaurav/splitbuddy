import 'dart:collection';

import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:splitbuddy/__generated__/schema.schema.gql.dart';
import 'package:splitbuddy/graphql/__generated__/queries.data.gql.dart';
import 'package:splitbuddy/graphql/__generated__/queries.req.gql.dart';
import 'package:splitbuddy/utils/headerclient.dart';
import 'package:http/http.dart' as http;

class AppState extends ChangeNotifier {
  Future<Client> _getClient() async {
    String? token;
    try {
      token = await FirebaseAuth.instance.currentUser!.getIdToken();
    } catch (e) {
      // donotthing
    }
    return Client(
      link: HttpLink(
        const String.fromEnvironment(
          'ENDPOINT',
          defaultValue: 'https://split-be.deepwith.in',
        ),
        httpClient: token == null
            ? http.Client()
            : HttpClientWithToken("Bearer $token"),
      ),
    );
  }

  AppState() {
    _getClient().then(refresh);
    FirebaseAuth.instance.idTokenChanges().listen((event) async {
      refresh(await _getClient());
    });
  }

  GuserData_user? _auth;

  bool get isSignedUp => _auth is! GuserData_user__asRegistered;

  bool isLoading = true;

  GUserFields? get user => (_auth is GuserData_user__asRegistered)
      ? (_auth as GuserData_user__asRegistered).user
      : null;

  UnmodifiableListView<GGroupFields> get userGroups =>
      UnmodifiableListView(_userGroups);

  List<GGroupFields> _userGroups = [];

  List<Ginteracted_usersData_interactedUsers> _interactedUsers = [];

  UnmodifiableListView<Ginteracted_usersData_interactedUsers>
      get interactedUsers => UnmodifiableListView(_interactedUsers);

  Future<Client> get client => _getClient();

  refresh(Client client) {
    client.request(GuserReq()).listen((value) {
      client;
      _auth = value.data?.user;
      if (isLoading == true) {
        isLoading = false;
      }
      notifyListeners();
    });
    client.request(GgroupsReq()).listen((value) {
      _userGroups = [];
      _userGroups.addAll(value.data?.groups.toList() ?? []);

      notifyListeners();
    });

    client.request(Ginteracted_usersReq()).listen((value) {
      _interactedUsers = [];
      _interactedUsers.addAll(value.data?.interactedUsers ?? []);

      notifyListeners();
    });
  }

  Future<GUserFields> signup(String name, String upiId) async {
    var user =
        await FirebaseAuth.instance.signInWithProvider(GoogleAuthProvider());
    var result = await (await _getClient())
        .request(GsignupReq((b) => b.vars
          ..name = name
          ..upi_id = upiId))
        .first;
    if (result.data != null) {
      // Optimize
      var result = await (await _getClient()).request(GuserReq()).first;
      _auth = result.data!.user;
      notifyListeners();
      return (_auth as GuserData_user__asRegistered).user;
    } else {
      throw result;
    }
  }

  Future<GGroupFields> createGroup(String name) async {
    var result = await (await _getClient())
        .request(Gcreate_groupReq((b) => b.vars..name = name))
        .first;

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

  Future<GGroupFields> addMemberToGroup(String phone, String group) async {
    var result = await (await _getClient())
        .request(Gadd_to_groupReq((b) => b.vars
          ..groupId = group
          ..phone = phone))
        .first;

    if (result.data != null) {
      var newgroup = await (await _getClient())
          .request(GgroupReq((b) => b.vars
            ..groupId = group
            ..skip = 0
            ..limit = 10))
          .first;
      _userGroups = [...userGroups];
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
    var result = await client
        .request(Gadd_expenseReq((b) => b.vars
          ..title = title
          ..amount = amount
          ..splits = ListBuilder(splits)))
        .first;
    if (result.data != null) {
      refresh(client);
      return result.data!.addExpense;
    } else {
      throw result;
    }
  }
}
