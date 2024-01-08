import 'package:collection/collection.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';

sealed class TransactionCardTypes {
  String get createdAt;
  GUserFields get creator;
}

class SingleTransaction extends TransactionCardTypes {
  final GSplitTransactionFields transaction;

  SingleTransaction({required this.transaction});

  @override
  String get createdAt => transaction.createdAt;

  @override
  GUserFields get creator => transaction.creator;
}

class GroupedPaidTransactions extends TransactionCardTypes {
  final List<GSplitTransactionFields> transactions;
  final String groupId;

  GroupedPaidTransactions({
    required this.groupId,
    required this.transactions,
  });

  @override
  String get createdAt => transactions.first.createdAt;

  @override
  GUserFields get creator => transactions.first.creator;

  int get total => transactions.fold(
      0, (previousValue, element) => previousValue + element.amount);
}

class GroupedCrossSettlementTransactions extends TransactionCardTypes {
  final List<GSplitTransactionFields> transactions;
  final String groupId;

  List<(GSplitTransactionFields, GSplitTransactionFields?)>
      get transactionPairs {
    List<(GSplitTransactionFields, GSplitTransactionFields?)> grouped = [];
    for (var transaction in transactions) {
      var similarTransactionIndex = grouped.indexWhere((element) =>
          element.$2 == null &&
          element.$1.group.id != transaction.group.id &&
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
  String get createdAt => transactions.first.createdAt;

  @override
  GUserFields get creator => transactions.first.creator;
}
