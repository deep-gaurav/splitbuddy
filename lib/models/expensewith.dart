import 'package:billdivide/extensions/user_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';

sealed class ExpenseWith {
  int get lengthOfUsers;
}

class ExpenseWithGroup extends ExpenseWith {
  final GGroupFields group;

  ExpenseWithGroup({required this.group});

  @override
  int get lengthOfUsers => group.members.length;
}

class ExpenseWithPeople extends ExpenseWith {
  final List<ShareableUser> users;

  ExpenseWithPeople({required this.users});

  @override
  int get lengthOfUsers => users.length;
}

sealed class ShareableUser {
  String get displayName;
  String get id;
}

class UserWithEmail extends ShareableUser {
  final String email;

  UserWithEmail({required this.email});

  @override
  String get displayName => email.split('@').first;

  @override
  String get id => email;
}

class UserWithUser extends ShareableUser {
  final GUserFields user;

  UserWithUser({required this.user});

  @override
  String get displayName => user.displayName;

  @override
  String get id => user.id;
}
