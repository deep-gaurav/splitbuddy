import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';

sealed class GroupTransactionObject {
  String get createdAt;
  String get creatorId;
}

class Expense extends GroupTransactionObject {
  final GExpenseBasic expense;
  final List<GSplitFields> splits;

  Expense({required this.expense, required this.splits});

  @override
  String get createdAt => expense.createdAt;

  @override
  String get creatorId => expense.creatorId;
}

class Split extends GroupTransactionObject {
  final GSplitFields split;

  Split({required this.split});

  @override
  String get createdAt => split.createdAt;

  @override
  String get creatorId => split.creatorId;
}

class CurrencyConversion extends GroupTransactionObject {
  String get partGroupId => splits.first.transactionPartGroupId!;

  final List<GSplitFields> splits;

  CurrencyConversion({required this.splits});

  @override
  String get createdAt => splits.first.createdAt;

  @override
  String get creatorId => splits.first.creatorId;
}
