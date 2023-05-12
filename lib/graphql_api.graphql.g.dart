// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User$Query$UserAuth$Registered$User
    _$User$Query$UserAuth$Registered$UserFromJson(Map<String, dynamic> json) =>
        User$Query$UserAuth$Registered$User()
          ..id = json['id'] as String
          ..name = json['name'] as String
          ..phone = json['phone'] as String
          ..toPay = json['toPay'] as int
          ..toReceive = json['toReceive'] as int
          ..groups = (json['groups'] as List<dynamic>)
              .map((e) =>
                  SelfUserFieldsMixin$Group.fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$User$Query$UserAuth$Registered$UserToJson(
        User$Query$UserAuth$Registered$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'toPay': instance.toPay,
      'toReceive': instance.toReceive,
      'groups': instance.groups.map((e) => e.toJson()).toList(),
    };

User$Query$UserAuth$Registered _$User$Query$UserAuth$RegisteredFromJson(
        Map<String, dynamic> json) =>
    User$Query$UserAuth$Registered()
      ..$$typename = json['__typename'] as String?
      ..user = User$Query$UserAuth$Registered$User.fromJson(
          json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$User$Query$UserAuth$RegisteredToJson(
        User$Query$UserAuth$Registered instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'user': instance.user.toJson(),
    };

User$Query$UserAuth$Unregistered _$User$Query$UserAuth$UnregisteredFromJson(
        Map<String, dynamic> json) =>
    User$Query$UserAuth$Unregistered()
      ..$$typename = json['__typename'] as String?
      ..phone = json['phone'] as String;

Map<String, dynamic> _$User$Query$UserAuth$UnregisteredToJson(
        User$Query$UserAuth$Unregistered instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'phone': instance.phone,
    };

User$Query$UserAuth _$User$Query$UserAuthFromJson(Map<String, dynamic> json) =>
    User$Query$UserAuth()..$$typename = json['__typename'] as String?;

Map<String, dynamic> _$User$Query$UserAuthToJson(
        User$Query$UserAuth instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
    };

User$Query _$User$QueryFromJson(Map<String, dynamic> json) => User$Query()
  ..user = User$Query$UserAuth.fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$User$QueryToJson(User$Query instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

SelfUserFieldsMixin$Group _$SelfUserFieldsMixin$GroupFromJson(
        Map<String, dynamic> json) =>
    SelfUserFieldsMixin$Group()
      ..id = json['id'] as String
      ..name = json['name'] as String
      ..creator = GroupFieldsMixin$User.fromJson(
          json['creator'] as Map<String, dynamic>)
      ..members = (json['members'] as List<dynamic>)
          .map((e) => GroupFieldsMixin$User.fromJson(e as Map<String, dynamic>))
          .toList()
      ..toPay = json['toPay'] as int
      ..toReceive = json['toReceive'] as int
      ..createdAt = json['createdAt'] as String;

Map<String, dynamic> _$SelfUserFieldsMixin$GroupToJson(
        SelfUserFieldsMixin$Group instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'creator': instance.creator.toJson(),
      'members': instance.members.map((e) => e.toJson()).toList(),
      'toPay': instance.toPay,
      'toReceive': instance.toReceive,
      'createdAt': instance.createdAt,
    };

GroupFieldsMixin$User _$GroupFieldsMixin$UserFromJson(
        Map<String, dynamic> json) =>
    GroupFieldsMixin$User()
      ..id = json['id'] as String
      ..name = json['name'] as String
      ..phone = json['phone'] as String
      ..toPay = json['toPay'] as int
      ..toReceive = json['toReceive'] as int;

Map<String, dynamic> _$GroupFieldsMixin$UserToJson(
        GroupFieldsMixin$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'toPay': instance.toPay,
      'toReceive': instance.toReceive,
    };

Group$Query$Group _$Group$Query$GroupFromJson(Map<String, dynamic> json) =>
    Group$Query$Group()
      ..id = json['id'] as String
      ..name = json['name'] as String
      ..creator = GroupFieldsMixin$User.fromJson(
          json['creator'] as Map<String, dynamic>)
      ..members = (json['members'] as List<dynamic>)
          .map((e) => GroupFieldsMixin$User.fromJson(e as Map<String, dynamic>))
          .toList()
      ..toPay = json['toPay'] as int
      ..toReceive = json['toReceive'] as int
      ..createdAt = json['createdAt'] as String
      ..expenses = (json['expenses'] as List<dynamic>)
          .map((e) => GroupWithExpensesMixin$Expense.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Group$Query$GroupToJson(Group$Query$Group instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'creator': instance.creator.toJson(),
      'members': instance.members.map((e) => e.toJson()).toList(),
      'toPay': instance.toPay,
      'toReceive': instance.toReceive,
      'createdAt': instance.createdAt,
      'expenses': instance.expenses.map((e) => e.toJson()).toList(),
    };

Group$Query _$Group$QueryFromJson(Map<String, dynamic> json) => Group$Query()
  ..group = Group$Query$Group.fromJson(json['group'] as Map<String, dynamic>);

Map<String, dynamic> _$Group$QueryToJson(Group$Query instance) =>
    <String, dynamic>{
      'group': instance.group.toJson(),
    };

GroupWithExpensesMixin$Expense _$GroupWithExpensesMixin$ExpenseFromJson(
        Map<String, dynamic> json) =>
    GroupWithExpensesMixin$Expense()
      ..id = json['id'] as String
      ..title = json['title'] as String
      ..createdAt = json['createdAt'] as String
      ..creator = ExpenseFieldsMixin$User.fromJson(
          json['creator'] as Map<String, dynamic>)
      ..amount = json['amount'] as int
      ..toPay = json['toPay'] as int
      ..toReceive = json['toReceive'] as int
      ..splits = (json['splits'] as List<dynamic>)
          .map((e) =>
              ExpenseFieldsMixin$Split.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GroupWithExpensesMixin$ExpenseToJson(
        GroupWithExpensesMixin$Expense instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': instance.createdAt,
      'creator': instance.creator.toJson(),
      'amount': instance.amount,
      'toPay': instance.toPay,
      'toReceive': instance.toReceive,
      'splits': instance.splits.map((e) => e.toJson()).toList(),
    };

ExpenseFieldsMixin$User _$ExpenseFieldsMixin$UserFromJson(
        Map<String, dynamic> json) =>
    ExpenseFieldsMixin$User()
      ..id = json['id'] as String
      ..name = json['name'] as String
      ..phone = json['phone'] as String
      ..toPay = json['toPay'] as int
      ..toReceive = json['toReceive'] as int;

Map<String, dynamic> _$ExpenseFieldsMixin$UserToJson(
        ExpenseFieldsMixin$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'toPay': instance.toPay,
      'toReceive': instance.toReceive,
    };

ExpenseFieldsMixin$Split _$ExpenseFieldsMixin$SplitFromJson(
        Map<String, dynamic> json) =>
    ExpenseFieldsMixin$Split()
      ..id = json['id'] as String
      ..amount = json['amount'] as int
      ..amountSettled = json['amountSettled'] as int
      ..fromUser = SplitFieldsMixin$User.fromJson(
          json['fromUser'] as Map<String, dynamic>)
      ..toUser =
          SplitFieldsMixin$User.fromJson(json['toUser'] as Map<String, dynamic>)
      ..isSettled = json['isSettled'] as bool;

Map<String, dynamic> _$ExpenseFieldsMixin$SplitToJson(
        ExpenseFieldsMixin$Split instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'amountSettled': instance.amountSettled,
      'fromUser': instance.fromUser.toJson(),
      'toUser': instance.toUser.toJson(),
      'isSettled': instance.isSettled,
    };

SplitFieldsMixin$User _$SplitFieldsMixin$UserFromJson(
        Map<String, dynamic> json) =>
    SplitFieldsMixin$User()
      ..id = json['id'] as String
      ..name = json['name'] as String
      ..phone = json['phone'] as String
      ..toPay = json['toPay'] as int
      ..toReceive = json['toReceive'] as int;

Map<String, dynamic> _$SplitFieldsMixin$UserToJson(
        SplitFieldsMixin$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'toPay': instance.toPay,
      'toReceive': instance.toReceive,
    };

Signup$Mutation$User _$Signup$Mutation$UserFromJson(
        Map<String, dynamic> json) =>
    Signup$Mutation$User()..id = json['id'] as String;

Map<String, dynamic> _$Signup$Mutation$UserToJson(
        Signup$Mutation$User instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Signup$Mutation _$Signup$MutationFromJson(Map<String, dynamic> json) =>
    Signup$Mutation()
      ..signup =
          Signup$Mutation$User.fromJson(json['signup'] as Map<String, dynamic>);

Map<String, dynamic> _$Signup$MutationToJson(Signup$Mutation instance) =>
    <String, dynamic>{
      'signup': instance.signup.toJson(),
    };

CreateGroup$Mutation$Group _$CreateGroup$Mutation$GroupFromJson(
        Map<String, dynamic> json) =>
    CreateGroup$Mutation$Group()
      ..id = json['id'] as String
      ..name = json['name'] as String
      ..creator = GroupFieldsMixin$User.fromJson(
          json['creator'] as Map<String, dynamic>)
      ..members = (json['members'] as List<dynamic>)
          .map((e) => GroupFieldsMixin$User.fromJson(e as Map<String, dynamic>))
          .toList()
      ..toPay = json['toPay'] as int
      ..toReceive = json['toReceive'] as int
      ..createdAt = json['createdAt'] as String;

Map<String, dynamic> _$CreateGroup$Mutation$GroupToJson(
        CreateGroup$Mutation$Group instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'creator': instance.creator.toJson(),
      'members': instance.members.map((e) => e.toJson()).toList(),
      'toPay': instance.toPay,
      'toReceive': instance.toReceive,
      'createdAt': instance.createdAt,
    };

CreateGroup$Mutation _$CreateGroup$MutationFromJson(
        Map<String, dynamic> json) =>
    CreateGroup$Mutation()
      ..createGroup = CreateGroup$Mutation$Group.fromJson(
          json['createGroup'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateGroup$MutationToJson(
        CreateGroup$Mutation instance) =>
    <String, dynamic>{
      'createGroup': instance.createGroup.toJson(),
    };

AddToGroup$Mutation _$AddToGroup$MutationFromJson(Map<String, dynamic> json) =>
    AddToGroup$Mutation()..addToGroup = json['addToGroup'] as String;

Map<String, dynamic> _$AddToGroup$MutationToJson(
        AddToGroup$Mutation instance) =>
    <String, dynamic>{
      'addToGroup': instance.addToGroup,
    };

AddExpense$Mutation$Expense _$AddExpense$Mutation$ExpenseFromJson(
        Map<String, dynamic> json) =>
    AddExpense$Mutation$Expense()
      ..id = json['id'] as String
      ..title = json['title'] as String
      ..createdAt = json['createdAt'] as String
      ..creator = ExpenseFieldsMixin$User.fromJson(
          json['creator'] as Map<String, dynamic>)
      ..amount = json['amount'] as int
      ..toPay = json['toPay'] as int
      ..toReceive = json['toReceive'] as int
      ..splits = (json['splits'] as List<dynamic>)
          .map((e) =>
              ExpenseFieldsMixin$Split.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AddExpense$Mutation$ExpenseToJson(
        AddExpense$Mutation$Expense instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': instance.createdAt,
      'creator': instance.creator.toJson(),
      'amount': instance.amount,
      'toPay': instance.toPay,
      'toReceive': instance.toReceive,
      'splits': instance.splits.map((e) => e.toJson()).toList(),
    };

AddExpense$Mutation _$AddExpense$MutationFromJson(Map<String, dynamic> json) =>
    AddExpense$Mutation()
      ..addExpense = AddExpense$Mutation$Expense.fromJson(
          json['addExpense'] as Map<String, dynamic>);

Map<String, dynamic> _$AddExpense$MutationToJson(
        AddExpense$Mutation instance) =>
    <String, dynamic>{
      'addExpense': instance.addExpense.toJson(),
    };

SplitInput _$SplitInputFromJson(Map<String, dynamic> json) => SplitInput(
      amount: json['amount'] as int,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$SplitInputToJson(SplitInput instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'userId': instance.userId,
    };

GroupArguments _$GroupArgumentsFromJson(Map<String, dynamic> json) =>
    GroupArguments(
      skip: json['skip'] as int,
      limit: json['limit'] as int,
      groupId: json['groupId'] as String,
    );

Map<String, dynamic> _$GroupArgumentsToJson(GroupArguments instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
      'groupId': instance.groupId,
    };

SignupArguments _$SignupArgumentsFromJson(Map<String, dynamic> json) =>
    SignupArguments(
      name: json['name'] as String,
    );

Map<String, dynamic> _$SignupArgumentsToJson(SignupArguments instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

CreateGroupArguments _$CreateGroupArgumentsFromJson(
        Map<String, dynamic> json) =>
    CreateGroupArguments(
      name: json['name'] as String,
    );

Map<String, dynamic> _$CreateGroupArgumentsToJson(
        CreateGroupArguments instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

AddToGroupArguments _$AddToGroupArgumentsFromJson(Map<String, dynamic> json) =>
    AddToGroupArguments(
      phone: json['phone'] as String,
      groupId: json['groupId'] as String,
    );

Map<String, dynamic> _$AddToGroupArgumentsToJson(
        AddToGroupArguments instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'groupId': instance.groupId,
    };

AddExpenseArguments _$AddExpenseArgumentsFromJson(Map<String, dynamic> json) =>
    AddExpenseArguments(
      title: json['title'] as String,
      amount: json['amount'] as int,
      splits: (json['splits'] as List<dynamic>)
          .map((e) => SplitInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupId: json['groupId'] as String,
    );

Map<String, dynamic> _$AddExpenseArgumentsToJson(
        AddExpenseArguments instance) =>
    <String, dynamic>{
      'title': instance.title,
      'amount': instance.amount,
      'splits': instance.splits.map((e) => e.toJson()).toList(),
      'groupId': instance.groupId,
    };
