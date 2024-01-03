import 'dart:math';

import 'package:flutter/material.dart';
import 'package:splitbuddy/extensions/user_extension.dart';
import 'package:splitbuddy/graphql/__generated__/queries.data.gql.dart';

extension GroupExtension on GGroupFields {
  String get displayName =>
      name ?? members.map((p0) => p0.member.shortName).join(", ");

  Color getMainColor(Brightness brightness) => HSVColor.fromAHSV(
          1,
          Random(id.hashCode).nextDouble() * 256,
          brightness == Brightness.dark ? 0.2 : 0.9,
          1)
      .toColor();
  Color getBackgroudColor(Brightness brightness) => HSVColor.fromAHSV(
          0.6,
          Random(id.hashCode).nextDouble() * 256,
          brightness == Brightness.dark ? 0.8 : 0.4,
          1)
      .toColor();

  int get toPay => members.fold(
      0, (p0, p1) => p1.owedInGroup > 0 ? (p0 + p1.owedInGroup) : p0);
  int get toReceive => -members.fold(
      0, (p0, p1) => p1.owedInGroup < 0 ? (p0 + p1.owedInGroup) : p0);
}
