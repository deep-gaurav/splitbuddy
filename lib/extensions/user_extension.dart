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
  int get owed => owes.fold(0, (amount, owe) => amount + owe.amount);
  int get toPay => owes.fold(
      0, (amount, owe) => owe.amount > 0 ? amount + owe.amount : amount);
  int get toReceive => -owes.fold(
      0, (amount, owe) => owe.amount < 0 ? amount + owe.amount : amount);
}
