import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';

sealed class GroupTransactionObject {
  String get transactionAt;
  String get creatorId;

  String get groupId;
}

class Expense extends GroupTransactionObject {
  final GExpenseBasic expense;
  final List<GSplitFields> splits;

  Expense({required this.expense, required this.splits});

  @override
  String get transactionAt => expense.transactionAt;

  @override
  String get creatorId => expense.creatorId;

  @override
  String get groupId => splits.first.groupId;
}

class SplitObj extends GroupTransactionObject {
  final GSplitFields split;

  SplitObj({required this.split});

  @override
  String get transactionAt => split.transactionAt;

  @override
  String get creatorId => split.creatorId;

  @override
  String get groupId => split.groupId;
}

class CurrencyConversion extends GroupTransactionObject {
  String get partGroupId => splits.first.transactionPartGroupId!;

  final List<GSplitFields> splits;

  CurrencyConversion({required this.splits});

  @override
  String get transactionAt => splits.first.transactionAt;

  @override
  String get creatorId => splits.first.creatorId;

  @override
  String get groupId => splits.first.groupId;
}
