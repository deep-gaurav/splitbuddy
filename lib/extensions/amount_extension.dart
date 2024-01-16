import 'dart:math';

import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/state/app_state.dart';

extension AmountExtension on GAmountFields {
  String getPretty(AppState appState) =>
      '${appState.currencies[currencyId]!.symbol} ${amount / pow(10, appState.currencies[currencyId]!.decimals)}';
  String getPrettyAbs(AppState appState) =>
      '${appState.currencies[currencyId]!.symbol} ${amount.abs() / pow(10, appState.currencies[currencyId]!.decimals)}';
}
