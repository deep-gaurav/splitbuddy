import 'package:collection/collection.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';

sealed class TransactionCardTypes {
  String get transactionAt;
  String get creatorId;
}

class SingleTransaction extends TransactionCardTypes {
  final GSplitFields? transaction;
  final GExpenseBasic? expenseBasic;

  SingleTransaction({this.transaction, this.expenseBasic});

  @override
  String get transactionAt =>
      expenseBasic?.transactionAt ?? transaction!.transactionAt;

  @override
  String get creatorId => expenseBasic?.creatorId ?? transaction!.creatorId;
}

class GroupedPaidTransactions extends TransactionCardTypes {
  final List<GSplitFields> transactions;
  final String groupId;

  GroupedPaidTransactions({
    required this.groupId,
    required this.transactions,
  });

  @override
  String get transactionAt => transactions.first.transactionAt;

  @override
  String get creatorId => transactions.first.creatorId;

  GAmountFields get total => GAmountFieldsData((b) => b
    ..currencyId = transactions.first.amount.currencyId
    ..amount = transactions.fold<int>(
        0, (previousValue, element) => previousValue + element.amount.amount));
}

class GroupedCrossSettlementTransactions extends TransactionCardTypes {
  final List<GSplitFields> transactions;
  final String groupId;

  List<(GSplitFields, GSplitFields?)> get transactionPairs {
    List<(GSplitFields, GSplitFields?)> grouped = [];
    for (var transaction in transactions) {
      var similarTransactionIndex = grouped.indexWhere((element) =>
          element.$2 == null &&
          element.$1.groupId != transaction.groupId &&
          transaction.amount == element.$1.amount);
      if (similarTransactionIndex >= 0) {
        grouped[similarTransactionIndex] =
            (grouped[similarTransactionIndex].$1, transaction);
      } else {
        grouped.add((transaction, null));
      }
    }
    return grouped;
  }

  GroupedCrossSettlementTransactions(
      {required this.transactions, required this.groupId});

  @override
  String get transactionAt => transactions.first.transactionAt;

  @override
  String get creatorId => transactions.first.creatorId;
}

class CurrencyConversionTransactions extends TransactionCardTypes {
  final List<GSplitFields> transactions;
  final String groupId;

  (GSplitFields, GSplitFields?) get transactionPairs =>
      (transactions.first, transactions.elementAtOrNull(1));

  CurrencyConversionTransactions(
      {required this.transactions, required this.groupId});

  @override
  String get transactionAt => transactions.first.transactionAt;

  @override
  String get creatorId => transactions.first.creatorId;
}
