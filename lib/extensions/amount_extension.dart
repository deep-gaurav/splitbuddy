import 'dart:math';

import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

extension AmountExtension on GAmountFields {
  double getAmountWithDecimal(AppState appState) =>
      amount / pow(10, appState.currencies[currencyId]?.decimals ?? 0);

  num getAmountFormatted(AppState appState) =>
      getAmountWithDecimal(appState).truncate() ==
              getAmountWithDecimal(appState)
          ? getAmountWithDecimal(appState).truncate()
          : getAmountWithDecimal(appState);
  String getPretty(BuildContext context) =>
      '${context.select<AppState, Map<String, GCurrencyFields>>((state) => state.currencies)[currencyId]?.symbol}${getAmountFormatted(context.read())}';
  String getPrettyAbs(BuildContext context) =>
      '${context.select<AppState, Map<String, GCurrencyFields>>((state) => state.currencies)[currencyId]?.symbol}${getAmountFormatted(context.read()).abs()}';
}
