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
  late int toPay;
  late int toReceive;
}
mixin SelfUserFieldsMixin {
  late List<SelfUserFieldsMixin$Group> groups;
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
    with EquatableMixin, UserFieldsMixin, SelfUserFieldsMixin {
  User$Query$UserAuth$Registered$User();

  factory User$Query$UserAuth$Registered$User.fromJson(
          Map<String, dynamic> json) =>
      _$User$Query$UserAuth$Registered$UserFromJson(json);

  @override
  List<Object?> get props => [id, name, phone, toPay, toReceive, groups];
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
class SelfUserFieldsMixin$Group extends JsonSerializable
    with EquatableMixin, GroupFieldsMixin {
  SelfUserFieldsMixin$Group();

  factory SelfUserFieldsMixin$Group.fromJson(Map<String, dynamic> json) =>
      _$SelfUserFieldsMixin$GroupFromJson(json);

  @override
  List<Object?> get props =>
      [id, name, creator, members, toPay, toReceive, createdAt];
  @override
  Map<String, dynamic> toJson() => _$SelfUserFieldsMixin$GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GroupFieldsMixin$User extends JsonSerializable
    with EquatableMixin, UserFieldsMixin {
  GroupFieldsMixin$User();

  factory GroupFieldsMixin$User.fromJson(Map<String, dynamic> json) =>
      _$GroupFieldsMixin$UserFromJson(json);

  @override
  List<Object?> get props => [id, name, phone, toPay, toReceive];
  @override
  Map<String, dynamic> toJson() => _$GroupFieldsMixin$UserToJson(this);
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
  List<Object?> get props => [id, name, phone, toPay, toReceive];
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
  List<Object?> get props => [id, name, phone, toPay, toReceive];
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
                  ),
                  FragmentSpreadNode(
                    name: NameNode(value: 'SelfUserFields'),
                    directives: [],
                  ),
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
  FragmentDefinitionNode(
    name: NameNode(value: 'SelfUserFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'User'),
      isNonNull: false,
    )),
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
  SignupArguments({required this.name});

  @override
  factory SignupArguments.fromJson(Map<String, dynamic> json) =>
      _$SignupArgumentsFromJson(json);

  late String name;

  @override
  List<Object?> get props => [name];
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
      )
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
          )
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
