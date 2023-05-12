import 'dart:collection';

import 'package:artemis/artemis.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:splitbuddy/graphql_api.graphql.dart';
import 'package:splitbuddy/utils/headerclient.dart';

class AppState extends ChangeNotifier {
  Future<ArtemisClient> _getClient() async {
    var token = await FirebaseAuth.instance.currentUser!.getIdToken();
    return ArtemisClient(
      const String.fromEnvironment(
        'ENDPOINT',
        defaultValue: 'https://split-be.deepwith.in',
      ),
      httpClient: HttpClientWithToken("Bearer $token"),
    );
  }

  AppState() {
    _getClient().then(refresh);
  }

  User$Query$UserAuth? _auth;

  bool get isSignedUp => _auth is! User$Query$UserAuth$Registered;

  bool get isLoading => _auth == null;

  UserFieldsMixin? get user => (_auth is User$Query$UserAuth$Registered)
      ? (_auth as User$Query$UserAuth$Registered).user
      : null;

  UnmodifiableListView<GroupFieldsMixin> get userGroups =>
      UnmodifiableListView(_userGroups);

  List<GroupFieldsMixin> _userGroups = [];

  Future<ArtemisClient> get client => _getClient();

  refresh(ArtemisClient client) {
    client.execute(UserQuery()).then((value) {
      _auth = value.data?.user;
      if (_auth is User$Query$UserAuth$Registered) {
        _userGroups = [];
        _userGroups
            .addAll((_auth as User$Query$UserAuth$Registered).user.groups);
      }
      notifyListeners();
    });
  }

  Future<SelfUserFieldsMixin> signup(String name) async {
    var result = await (await _getClient())
        .execute(SignupMutation(variables: SignupArguments(name: name)));
    if (result.data != null) {
      // Optimize
      var result = await (await _getClient()).execute(UserQuery());
      _auth = result.data!.user;
      notifyListeners();
      return (_auth as User$Query$UserAuth$Registered).user;
    } else {
      throw result;
    }
  }

  Future<GroupFieldsMixin> createGroup(String name) async {
    var result = await (await _getClient()).execute(
        CreateGroupMutation(variables: CreateGroupArguments(name: name)));

    if (result.data != null) {
      var newgroup = <GroupFieldsMixin>[
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

  Future<GroupFieldsMixin> addMemberToGroup(String phone, String group) async {
    var result = await (await _getClient()).execute(AddToGroupMutation(
        variables: AddToGroupArguments(phone: phone, groupId: group)));

    if (result.data != null) {
      var newgroup = await (await _getClient()).execute(GroupQuery(
          variables: GroupArguments(groupId: group, skip: 0, limit: 10)));
      _userGroups = [...userGroups];
      var index =
          _userGroups.indexWhere((e) => e.id == newgroup.data!.group.id);
      _userGroups[index] = newgroup.data!.group;

      notifyListeners();
      return newgroup.data!.group;
    } else {
      throw result;
    }
  }

  Future<ExpenseFieldsMixin> addExpense(
      String title, int amount, String groupId, List<SplitInput> splits) async {
    var client = await _getClient();
    var result = await client.execute(AddExpenseMutation(
        variables: AddExpenseArguments(
            title: title, amount: amount, splits: splits, groupId: groupId)));
    if (result.data != null) {
      refresh(client);
      return result.data!.addExpense;
    } else {
      throw result;
    }
  }
}
