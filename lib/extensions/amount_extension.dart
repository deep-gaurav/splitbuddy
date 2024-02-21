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

  GAmountFields convertTo(
      String currencyId, Map<String, GCurrencyFields> currencies) {
    var fromCurrency = currencies[this.currencyId];
    var toCurrency = currencies[currencyId];
    if (fromCurrency != toCurrency) {
      var amount = ((this.amount.abs() *
              pow(10, toCurrency!.decimals - fromCurrency!.decimals) /
              fromCurrency.rate) *
          toCurrency.rate);
      var newVal = GAmountFieldsData((b) => b
        ..currencyId = toCurrency.id
        ..amount = amount.toInt());
      return newVal;
    } else {
      return this;
    }
  }
}
