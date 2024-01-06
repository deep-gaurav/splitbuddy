import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:splitbuddy/extensions/string_extension.dart';
import 'package:splitbuddy/extensions/user_extension.dart';
import 'package:splitbuddy/graphql/__generated__/queries.data.gql.dart';
import 'package:splitbuddy/state/app_state.dart';

extension GroupExtension on GGroupFields {
  String getDisplayName(AppState appState) =>
      name ??
      (members.length == 2
          ? members
              .firstWhereOrNull(
                  (element) => element.member.id != appState.user!.id)
              ?.member
              .shortName
              .concatOrNull(' (Direct Payment)')
          : null) ??
      members.map((p0) => p0.member.shortName).join(", ");

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
