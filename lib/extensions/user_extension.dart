import 'dart:math';

import 'package:flutter/material.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';

extension UserExtension on GUserFields {
  String get displayName => name ?? email ?? phone ?? id;
  String get shortName =>
      name?.split(" ").firstOrNull ??
      email?.split('@').firstOrNull ??
      phone ??
      id;
  Color get getMainColor =>
      HSVColor.fromAHSV(1, Random(id.hashCode).nextDouble() * 256, 1, 1)
          .toColor();
}

extension UserPaysExtensions on GUserPaysFields {
  Map<String, int> get amountGrouped => owes.fold(<String, int>{}, (p0, p1) {
        p0.update(
          p1.amount.currencyId,
          (value) => value + p1.amount.amount,
          ifAbsent: () => p1.amount.amount,
        );

        return p0;
      });

  List<GAmountFields> get toPay => amountGrouped.entries
      .map((e) => GAmountFieldsData((b) => b
        ..amount = e.value
        ..currencyId = e.key))
      .where((element) => element.amount > 0)
      .toList();

  List<GAmountFields> get toReceive => amountGrouped.entries
      .where((element) => element.value < 0)
      .map((e) => GAmountFieldsData((b) => b
        ..amount = e.value
        ..currencyId = e.key))
      .toList();
}
