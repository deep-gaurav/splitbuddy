import 'package:splitbuddy/graphql/__generated__/queries.data.gql.dart';

extension ExpenseMixMethods on GExpenseMixSplitFields {
  String get createdAt => expense?.createdAt ?? split!.createdAt;
  String get creatorId => expense?.creatorId ?? split!.creatorId;
}
