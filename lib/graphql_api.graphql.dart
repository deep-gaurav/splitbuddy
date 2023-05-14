// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

mixin UserFieldsMixin {
  late String id;
  late String name;
  late String phone;
}
mixin GroupFieldsMixin {
  late String id;
  late String name;
  late GroupFieldsMixin$User creator;
  late List<GroupFieldsMixin$User> members;
  late int toPay;
  late int toReceive;
  late String createdAt;
}
mixin UserPaysFieldsMixin {
  late List<String> upiIds;
  late int toPay;
  late int toReceive;
}
mixin GroupWithExpensesMixin {
  late List<GroupWithExpensesMixin$Expense> expenses;
}
mixin ExpenseFieldsMixin {
  late String id;
  late String title;
  late String createdAt;
  late ExpenseFieldsMixin$User creator;
  late int amount;
  late int toPay;
  late int toReceive;
  late List<ExpenseFieldsMixin$Split> splits;
}
mixin SplitFieldsMixin {
  late String id;
  late int amount;
  late int amountSettled;
  late SplitFieldsMixin$User fromUser;
  late SplitFieldsMixin$User toUser;
  late bool isSettled;
}

@JsonSerializable(explicitToJson: true)
class User$Query$UserAuth$Registered$User extends JsonSerializable
    with EquatableMixin, UserFieldsMixin {
  User$Query$UserAuth$Registered$User();

  factory User$Query$UserAuth$Registered$User.fromJson(
          Map<String, dynamic> json) =>
      _$User$Query$UserAuth$Registered$UserFromJson(json);

  @override
  List<Object?> get props => [id, name, phone];
  @override
  Map<String, dynamic> toJson() =>
      _$User$Query$UserAuth$Registered$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$UserAuth$Registered extends User$Query$UserAuth
    with EquatableMixin {
  User$Query$UserAuth$Registered();

  factory User$Query$UserAuth$Registered.fromJson(Map<String, dynamic> json) =>
      _$User$Query$UserAuth$RegisteredFromJson(json);

  late User$Query$UserAuth$Registered$User user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() => _$User$Query$UserAuth$RegisteredToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$UserAuth$Unregistered extends User$Query$UserAuth
    with EquatableMixin {
  User$Query$UserAuth$Unregistered();

  factory User$Query$UserAuth$Unregistered.fromJson(
          Map<String, dynamic> json) =>
      _$User$Query$UserAuth$UnregisteredFromJson(json);

  late String phone;

  @override
  List<Object?> get props => [phone];
  @override
  Map<String, dynamic> toJson() =>
      _$User$Query$UserAuth$UnregisteredToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$UserAuth extends JsonSerializable with EquatableMixin {
  User$Query$UserAuth();

  factory User$Query$UserAuth.fromJson(Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'Registered':
        return User$Query$UserAuth$Registered.fromJson(json);
      case r'Unregistered':
        return User$Query$UserAuth$Unregistered.fromJson(json);
      default:
    }
    return _$User$Query$UserAuthFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'Registered':
        return (this as User$Query$UserAuth$Registered).toJson();
      case r'Unregistered':
        return (this as User$Query$UserAuth$Unregistered).toJson();
      default:
    }
    return _$User$Query$UserAuthToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class User$Query extends JsonSerializable with EquatableMixin {
  User$Query();

  factory User$Query.fromJson(Map<String, dynamic> json) =>
      _$User$QueryFromJson(json);

  late User$Query$UserAuth user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() => _$User$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Groups$Query$Group extends JsonSerializable
    with EquatableMixin, GroupFieldsMixin {
  Groups$Query$Group();

  factory Groups$Query$Group.fromJson(Map<String, dynamic> json) =>
      _$Groups$Query$GroupFromJson(json);

  @override
  List<Object?> get props =>
      [id, name, creator, members, toPay, toReceive, createdAt];
  @override
  Map<String, dynamic> toJson() => _$Groups$Query$GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Groups$Query extends JsonSerializable with EquatableMixin {
  Groups$Query();

  factory Groups$Query.fromJson(Map<String, dynamic> json) =>
      _$Groups$QueryFromJson(json);

  late List<Groups$Query$Group> groups;

  @override
  List<Object?> get props => [groups];
  @override
  Map<String, dynamic> toJson() => _$Groups$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GroupFieldsMixin$User extends JsonSerializable
    with EquatableMixin, UserFieldsMixin {
  GroupFieldsMixin$User();

  factory GroupFieldsMixin$User.fromJson(Map<String, dynamic> json) =>
      _$GroupFieldsMixin$UserFromJson(json);

  @override
  List<Object?> get props => [id, name, phone];
  @override
  Map<String, dynamic> toJson() => _$GroupFieldsMixin$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InteractedUsers$Query$User extends JsonSerializable
    with EquatableMixin, UserFieldsMixin, UserPaysFieldsMixin {
  InteractedUsers$Query$User();

  factory InteractedUsers$Query$User.fromJson(Map<String, dynamic> json) =>
      _$InteractedUsers$Query$UserFromJson(json);

  @override
  List<Object?> get props => [id, name, phone, upiIds, toPay, toReceive];
  @override
  Map<String, dynamic> toJson() => _$InteractedUsers$Query$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InteractedUsers$Query extends JsonSerializable with EquatableMixin {
  InteractedUsers$Query();

  factory InteractedUsers$Query.fromJson(Map<String, dynamic> json) =>
      _$InteractedUsers$QueryFromJson(json);

  late List<InteractedUsers$Query$User> interactedUsers;

  @override
  List<Object?> get props => [interactedUsers];
  @override
  Map<String, dynamic> toJson() => _$InteractedUsers$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Group$Query$Group extends JsonSerializable
    with EquatableMixin, GroupWithExpensesMixin, GroupFieldsMixin {
  Group$Query$Group();

  factory Group$Query$Group.fromJson(Map<String, dynamic> json) =>
      _$Group$Query$GroupFromJson(json);

  @override
  List<Object?> get props =>
      [expenses, id, name, creator, members, toPay, toReceive, createdAt];
  @override
  Map<String, dynamic> toJson() => _$Group$Query$GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Group$Query extends JsonSerializable with EquatableMixin {
  Group$Query();

  factory Group$Query.fromJson(Map<String, dynamic> json) =>
      _$Group$QueryFromJson(json);

  late Group$Query$Group group;

  @override
  List<Object?> get props => [group];
  @override
  Map<String, dynamic> toJson() => _$Group$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GroupWithExpensesMixin$Expense extends JsonSerializable
    with EquatableMixin, ExpenseFieldsMixin {
  GroupWithExpensesMixin$Expense();

  factory GroupWithExpensesMixin$Expense.fromJson(Map<String, dynamic> json) =>
      _$GroupWithExpensesMixin$ExpenseFromJson(json);

  @override
  List<Object?> get props =>
      [id, title, createdAt, creator, amount, toPay, toReceive, splits];
  @override
  Map<String, dynamic> toJson() => _$GroupWithExpensesMixin$ExpenseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExpenseFieldsMixin$User extends JsonSerializable
    with EquatableMixin, UserFieldsMixin {
  ExpenseFieldsMixin$User();

  factory ExpenseFieldsMixin$User.fromJson(Map<String, dynamic> json) =>
      _$ExpenseFieldsMixin$UserFromJson(json);

  @override
  List<Object?> get props => [id, name, phone];
  @override
  Map<String, dynamic> toJson() => _$ExpenseFieldsMixin$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExpenseFieldsMixin$Split extends JsonSerializable
    with EquatableMixin, SplitFieldsMixin {
  ExpenseFieldsMixin$Split();

  factory ExpenseFieldsMixin$Split.fromJson(Map<String, dynamic> json) =>
      _$ExpenseFieldsMixin$SplitFromJson(json);

  @override
  List<Object?> get props =>
      [id, amount, amountSettled, fromUser, toUser, isSettled];
  @override
  Map<String, dynamic> toJson() => _$ExpenseFieldsMixin$SplitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SplitFieldsMixin$User extends JsonSerializable
    with EquatableMixin, UserFieldsMixin {
  SplitFieldsMixin$User();

  factory SplitFieldsMixin$User.fromJson(Map<String, dynamic> json) =>
      _$SplitFieldsMixin$UserFromJson(json);

  @override
  List<Object?> get props => [id, name, phone];
  @override
  Map<String, dynamic> toJson() => _$SplitFieldsMixin$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Signup$Mutation$User extends JsonSerializable with EquatableMixin {
  Signup$Mutation$User();

  factory Signup$Mutation$User.fromJson(Map<String, dynamic> json) =>
      _$Signup$Mutation$UserFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$Signup$Mutation$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Signup$Mutation extends JsonSerializable with EquatableMixin {
  Signup$Mutation();

  factory Signup$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Signup$MutationFromJson(json);

  late Signup$Mutation$User signup;

  @override
  List<Object?> get props => [signup];
  @override
  Map<String, dynamic> toJson() => _$Signup$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateGroup$Mutation$Group extends JsonSerializable
    with EquatableMixin, GroupFieldsMixin {
  CreateGroup$Mutation$Group();

  factory CreateGroup$Mutation$Group.fromJson(Map<String, dynamic> json) =>
      _$CreateGroup$Mutation$GroupFromJson(json);

  @override
  List<Object?> get props =>
      [id, name, creator, members, toPay, toReceive, createdAt];
  @override
  Map<String, dynamic> toJson() => _$CreateGroup$Mutation$GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateGroup$Mutation extends JsonSerializable with EquatableMixin {
  CreateGroup$Mutation();

  factory CreateGroup$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateGroup$MutationFromJson(json);

  late CreateGroup$Mutation$Group createGroup;

  @override
  List<Object?> get props => [createGroup];
  @override
  Map<String, dynamic> toJson() => _$CreateGroup$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddToGroup$Mutation extends JsonSerializable with EquatableMixin {
  AddToGroup$Mutation();

  factory AddToGroup$Mutation.fromJson(Map<String, dynamic> json) =>
      _$AddToGroup$MutationFromJson(json);

  late String addToGroup;

  @override
  List<Object?> get props => [addToGroup];
  @override
  Map<String, dynamic> toJson() => _$AddToGroup$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddExpense$Mutation$Expense extends JsonSerializable
    with EquatableMixin, ExpenseFieldsMixin {
  AddExpense$Mutation$Expense();

  factory AddExpense$Mutation$Expense.fromJson(Map<String, dynamic> json) =>
      _$AddExpense$Mutation$ExpenseFromJson(json);

  @override
  List<Object?> get props =>
      [id, title, createdAt, creator, amount, toPay, toReceive, splits];
  @override
  Map<String, dynamic> toJson() => _$AddExpense$Mutation$ExpenseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddExpense$Mutation extends JsonSerializable with EquatableMixin {
  AddExpense$Mutation();

  factory AddExpense$Mutation.fromJson(Map<String, dynamic> json) =>
      _$AddExpense$MutationFromJson(json);

  late AddExpense$Mutation$Expense addExpense;

  @override
  List<Object?> get props => [addExpense];
  @override
  Map<String, dynamic> toJson() => _$AddExpense$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SplitInput extends JsonSerializable with EquatableMixin {
  SplitInput({
    required this.amount,
    required this.userId,
  });

  factory SplitInput.fromJson(Map<String, dynamic> json) =>
      _$SplitInputFromJson(json);

  late int amount;

  late String userId;

  @override
  List<Object?> get props => [amount, userId];
  @override
  Map<String, dynamic> toJson() => _$SplitInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SettleUser$Mutation extends JsonSerializable with EquatableMixin {
  SettleUser$Mutation();

  factory SettleUser$Mutation.fromJson(Map<String, dynamic> json) =>
      _$SettleUser$MutationFromJson(json);

  late String settleUser;

  @override
  List<Object?> get props => [settleUser];
  @override
  Map<String, dynamic> toJson() => _$SettleUser$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SettleExpense$Mutation$Expense extends JsonSerializable
    with EquatableMixin, ExpenseFieldsMixin {
  SettleExpense$Mutation$Expense();

  factory SettleExpense$Mutation$Expense.fromJson(Map<String, dynamic> json) =>
      _$SettleExpense$Mutation$ExpenseFromJson(json);

  @override
  List<Object?> get props =>
      [id, title, createdAt, creator, amount, toPay, toReceive, splits];
  @override
  Map<String, dynamic> toJson() => _$SettleExpense$Mutation$ExpenseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SettleExpense$Mutation extends JsonSerializable with EquatableMixin {
  SettleExpense$Mutation();

  factory SettleExpense$Mutation.fromJson(Map<String, dynamic> json) =>
      _$SettleExpense$MutationFromJson(json);

  late SettleExpense$Mutation$Expense settleExpense;

  @override
  List<Object?> get props => [settleExpense];
  @override
  Map<String, dynamic> toJson() => _$SettleExpense$MutationToJson(this);
}

final USER_QUERY_DOCUMENT_OPERATION_NAME = 'user';
final USER_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'user'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'Registered'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'user'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'UserFields'),
                    directives: [],
                  )
                ]),
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'Unregistered'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'phone'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'UserFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'User'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'phone'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class UserQuery extends GraphQLQuery<User$Query, JsonSerializable> {
  UserQuery();

  @override
  final DocumentNode document = USER_QUERY_DOCUMENT;

  @override
  final String operationName = USER_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  User$Query parse(Map<String, dynamic> json) => User$Query.fromJson(json);
}

final GROUPS_QUERY_DOCUMENT_OPERATION_NAME = 'groups';
final GROUPS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'groups'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'groups'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'GroupFields'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'GroupFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Group'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creator'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'members'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'toPay'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'toReceive'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'createdAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'UserFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'User'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'phone'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class GroupsQuery extends GraphQLQuery<Groups$Query, JsonSerializable> {
  GroupsQuery();

  @override
  final DocumentNode document = GROUPS_QUERY_DOCUMENT;

  @override
  final String operationName = GROUPS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  Groups$Query parse(Map<String, dynamic> json) => Groups$Query.fromJson(json);
}

final INTERACTED_USERS_QUERY_DOCUMENT_OPERATION_NAME = 'interacted_users';
final INTERACTED_USERS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'interacted_users'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'interactedUsers'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'UserPaysFields'),
            directives: [],
          ),
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'UserFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'User'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'phone'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'UserPaysFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'User'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'upiIds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'toPay'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'toReceive'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class InteractedUsersQuery
    extends GraphQLQuery<InteractedUsers$Query, JsonSerializable> {
  InteractedUsersQuery();

  @override
  final DocumentNode document = INTERACTED_USERS_QUERY_DOCUMENT;

  @override
  final String operationName = INTERACTED_USERS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  InteractedUsers$Query parse(Map<String, dynamic> json) =>
      InteractedUsers$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GroupArguments extends JsonSerializable with EquatableMixin {
  GroupArguments({
    required this.skip,
    required this.limit,
    required this.groupId,
  });

  @override
  factory GroupArguments.fromJson(Map<String, dynamic> json) =>
      _$GroupArgumentsFromJson(json);

  late int skip;

  late int limit;

  late String groupId;

  @override
  List<Object?> get props => [skip, limit, groupId];
  @override
  Map<String, dynamic> toJson() => _$GroupArgumentsToJson(this);
}

final GROUP_QUERY_DOCUMENT_OPERATION_NAME = 'group';
final GROUP_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'group'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'skip')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'groupId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'group'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'groupId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'GroupWithExpenses'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'GroupWithExpenses'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Group'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'GroupFields'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'expenses'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'skip'),
            value: VariableNode(name: NameNode(value: 'skip')),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ExpenseFields'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'ExpenseFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Expense'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'title'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'createdAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creator'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'amount'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'toPay'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'toReceive'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'splits'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'SplitFields'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'UserFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'User'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'phone'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'SplitFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Split'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'amount'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'amountSettled'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'fromUser'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'toUser'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'isSettled'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'GroupFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Group'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creator'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'members'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'toPay'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'toReceive'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'createdAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class GroupQuery extends GraphQLQuery<Group$Query, GroupArguments> {
  GroupQuery({required this.variables});

  @override
  final DocumentNode document = GROUP_QUERY_DOCUMENT;

  @override
  final String operationName = GROUP_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GroupArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Group$Query parse(Map<String, dynamic> json) => Group$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class SignupArguments extends JsonSerializable with EquatableMixin {
  SignupArguments({
    required this.name,
    this.upi_id,
  });

  @override
  factory SignupArguments.fromJson(Map<String, dynamic> json) =>
      _$SignupArgumentsFromJson(json);

  late String name;

  final String? upi_id;

  @override
  List<Object?> get props => [name, upi_id];
  @override
  Map<String, dynamic> toJson() => _$SignupArgumentsToJson(this);
}

final SIGNUP_MUTATION_DOCUMENT_OPERATION_NAME = 'signup';
final SIGNUP_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'signup'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'upi_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'signup'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          ),
          ArgumentNode(
            name: NameNode(value: 'upiId'),
            value: VariableNode(name: NameNode(value: 'upi_id')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  )
]);

class SignupMutation extends GraphQLQuery<Signup$Mutation, SignupArguments> {
  SignupMutation({required this.variables});

  @override
  final DocumentNode document = SIGNUP_MUTATION_DOCUMENT;

  @override
  final String operationName = SIGNUP_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final SignupArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Signup$Mutation parse(Map<String, dynamic> json) =>
      Signup$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateGroupArguments extends JsonSerializable with EquatableMixin {
  CreateGroupArguments({required this.name});

  @override
  factory CreateGroupArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateGroupArgumentsFromJson(json);

  late String name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() => _$CreateGroupArgumentsToJson(this);
}

final CREATE_GROUP_MUTATION_DOCUMENT_OPERATION_NAME = 'create_group';
final CREATE_GROUP_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'create_group'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createGroup'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'GroupFields'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'GroupFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Group'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creator'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'members'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'toPay'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'toReceive'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'createdAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'UserFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'User'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'phone'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class CreateGroupMutation
    extends GraphQLQuery<CreateGroup$Mutation, CreateGroupArguments> {
  CreateGroupMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_GROUP_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_GROUP_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateGroupArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateGroup$Mutation parse(Map<String, dynamic> json) =>
      CreateGroup$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AddToGroupArguments extends JsonSerializable with EquatableMixin {
  AddToGroupArguments({
    required this.phone,
    required this.groupId,
  });

  @override
  factory AddToGroupArguments.fromJson(Map<String, dynamic> json) =>
      _$AddToGroupArgumentsFromJson(json);

  late String phone;

  late String groupId;

  @override
  List<Object?> get props => [phone, groupId];
  @override
  Map<String, dynamic> toJson() => _$AddToGroupArgumentsToJson(this);
}

final ADD_TO_GROUP_MUTATION_DOCUMENT_OPERATION_NAME = 'add_to_group';
final ADD_TO_GROUP_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'add_to_group'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'phone')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'groupId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'addToGroup'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'phone'),
            value: VariableNode(name: NameNode(value: 'phone')),
          ),
          ArgumentNode(
            name: NameNode(value: 'groupId'),
            value: VariableNode(name: NameNode(value: 'groupId')),
          ),
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  )
]);

class AddToGroupMutation
    extends GraphQLQuery<AddToGroup$Mutation, AddToGroupArguments> {
  AddToGroupMutation({required this.variables});

  @override
  final DocumentNode document = ADD_TO_GROUP_MUTATION_DOCUMENT;

  @override
  final String operationName = ADD_TO_GROUP_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final AddToGroupArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AddToGroup$Mutation parse(Map<String, dynamic> json) =>
      AddToGroup$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AddExpenseArguments extends JsonSerializable with EquatableMixin {
  AddExpenseArguments({
    required this.title,
    required this.amount,
    required this.splits,
    required this.groupId,
  });

  @override
  factory AddExpenseArguments.fromJson(Map<String, dynamic> json) =>
      _$AddExpenseArgumentsFromJson(json);

  late String title;

  late int amount;

  late List<SplitInput> splits;

  late String groupId;

  @override
  List<Object?> get props => [title, amount, splits, groupId];
  @override
  Map<String, dynamic> toJson() => _$AddExpenseArgumentsToJson(this);
}

final ADD_EXPENSE_MUTATION_DOCUMENT_OPERATION_NAME = 'add_expense';
final ADD_EXPENSE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'add_expense'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'title')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'amount')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'splits')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'SplitInput'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'groupId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'addExpense'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'title'),
            value: VariableNode(name: NameNode(value: 'title')),
          ),
          ArgumentNode(
            name: NameNode(value: 'amount'),
            value: VariableNode(name: NameNode(value: 'amount')),
          ),
          ArgumentNode(
            name: NameNode(value: 'splits'),
            value: VariableNode(name: NameNode(value: 'splits')),
          ),
          ArgumentNode(
            name: NameNode(value: 'groupId'),
            value: VariableNode(name: NameNode(value: 'groupId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ExpenseFields'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'ExpenseFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Expense'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'title'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'createdAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creator'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'amount'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'toPay'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'toReceive'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'splits'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'SplitFields'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'UserFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'User'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'phone'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'SplitFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Split'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'amount'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'amountSettled'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'fromUser'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'toUser'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'isSettled'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class AddExpenseMutation
    extends GraphQLQuery<AddExpense$Mutation, AddExpenseArguments> {
  AddExpenseMutation({required this.variables});

  @override
  final DocumentNode document = ADD_EXPENSE_MUTATION_DOCUMENT;

  @override
  final String operationName = ADD_EXPENSE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final AddExpenseArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AddExpense$Mutation parse(Map<String, dynamic> json) =>
      AddExpense$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class SettleUserArguments extends JsonSerializable with EquatableMixin {
  SettleUserArguments({
    required this.amount,
    required this.userId,
  });

  @override
  factory SettleUserArguments.fromJson(Map<String, dynamic> json) =>
      _$SettleUserArgumentsFromJson(json);

  late int amount;

  late String userId;

  @override
  List<Object?> get props => [amount, userId];
  @override
  Map<String, dynamic> toJson() => _$SettleUserArgumentsToJson(this);
}

final SETTLE_USER_MUTATION_DOCUMENT_OPERATION_NAME = 'settle_user';
final SETTLE_USER_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'settle_user'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'amount')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'settleUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'amount'),
            value: VariableNode(name: NameNode(value: 'amount')),
          ),
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  )
]);

class SettleUserMutation
    extends GraphQLQuery<SettleUser$Mutation, SettleUserArguments> {
  SettleUserMutation({required this.variables});

  @override
  final DocumentNode document = SETTLE_USER_MUTATION_DOCUMENT;

  @override
  final String operationName = SETTLE_USER_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final SettleUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  SettleUser$Mutation parse(Map<String, dynamic> json) =>
      SettleUser$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class SettleExpenseArguments extends JsonSerializable with EquatableMixin {
  SettleExpenseArguments({
    required this.amount,
    required this.expenseId,
  });

  @override
  factory SettleExpenseArguments.fromJson(Map<String, dynamic> json) =>
      _$SettleExpenseArgumentsFromJson(json);

  late int amount;

  late String expenseId;

  @override
  List<Object?> get props => [amount, expenseId];
  @override
  Map<String, dynamic> toJson() => _$SettleExpenseArgumentsToJson(this);
}

final SETTLE_EXPENSE_MUTATION_DOCUMENT_OPERATION_NAME = 'settle_expense';
final SETTLE_EXPENSE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'settle_expense'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'amount')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'expenseId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'settleExpense'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'expenseId'),
            value: VariableNode(name: NameNode(value: 'expenseId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'amount'),
            value: VariableNode(name: NameNode(value: 'amount')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ExpenseFields'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'ExpenseFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Expense'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'title'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'createdAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creator'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'amount'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'toPay'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'toReceive'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'splits'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'SplitFields'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'UserFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'User'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'phone'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'SplitFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Split'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'amount'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'amountSettled'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'fromUser'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'toUser'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'isSettled'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class SettleExpenseMutation
    extends GraphQLQuery<SettleExpense$Mutation, SettleExpenseArguments> {
  SettleExpenseMutation({required this.variables});

  @override
  final DocumentNode document = SETTLE_EXPENSE_MUTATION_DOCUMENT;

  @override
  final String operationName = SETTLE_EXPENSE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final SettleExpenseArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  SettleExpense$Mutation parse(Map<String, dynamic> json) =>
      SettleExpense$Mutation.fromJson(json);
}
