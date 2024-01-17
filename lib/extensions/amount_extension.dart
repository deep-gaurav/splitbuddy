import 'dart:math';

import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/state/app_state.dart';

extension AmountExtension on GAmountFields {
  double getAmountWithDecimal(AppState appState) =>
      amount / pow(10, appState.currencies[currencyId]!.decimals);

  num getAmountFormatted(AppState appState) =>
      getAmountWithDecimal(appState).truncate() ==
              getAmountWithDecimal(appState)
          ? getAmountWithDecimal(appState).truncate()
          : getAmountWithDecimal(appState);
  String getPretty(AppState appState) =>
      '${appState.currencies[currencyId]?.symbol}${getAmountFormatted(appState)}';
  String getPrettyAbs(AppState appState) =>
      '${appState.currencies[currencyId]?.symbol}${getAmountFormatted(appState).abs()}';
}
