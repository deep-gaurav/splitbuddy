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

class ExpenseWithSelf extends ExpenseWith {
  @override
  int get lengthOfUsers => 1;
}

sealed class ShareableUser extends GUserFields {
  String get displayName;
  @override
  String get id;
}

class UserWithEmail extends ShareableUser {
  @override
  final String email;

  UserWithEmail({required this.email});

  @override
  String get displayName => email.split('@').first;

  @override
  String get id => email;

  @override
  String get G__typename => throw UnimplementedError();

  @override
  bool get isSignedUp => false;

  @override
  String? get name => displayName;

  @override
  String? get phone => null;

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class UserWithUser extends ShareableUser {
  final GUserFields user;

  UserWithUser({required this.user});

  @override
  String get displayName => user.displayName;

  @override
  String get id => user.id;

  @override
  String get G__typename => user.G__typename;

  @override
  String? get email => user.email;

  @override
  bool get isSignedUp => user.isSignedUp;

  @override
  String? get name => user.name;

  @override
  String? get phone => user.phone;

  @override
  Map<String, dynamic> toJson() => user.toJson();
}
