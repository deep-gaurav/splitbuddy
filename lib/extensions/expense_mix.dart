import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';

extension ExpenseMixMethods on GExpenseMixSplitFields {
  String get createdAt => expense?.createdAt ?? split!.createdAt;
  String get creatorId => expense?.creatorId ?? split!.creatorId;

  bool isEqual(GExpenseMixSplitFields other) {
    return expense?.id == other.expense?.id && split?.id == other.split?.id;
  }
}
