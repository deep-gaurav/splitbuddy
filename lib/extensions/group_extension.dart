import 'dart:math';

import 'package:billdivide/utils/int_utils.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:billdivide/extensions/string_extension.dart';
import 'package:billdivide/extensions/user_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/state/app_state.dart';

extension GroupBasicExtension on GGroupBasic {
  GGroupFields? getMainGroup(AppState appState) =>
      appState.userGroups.firstWhereOrNull((element) => element.id == id);
}

extension GroupExtension on GGroupFields {
  bool get isDirectPayment => name == null && members.length == 2;
  String getDisplayName(AppState appState) =>
      name ??
      (members.length == 2
          ? members
              .where((p0) => p0.member.id != appState.user!.id)
              .firstWhereOrNull(
                  (element) => element.member.id != appState.user!.id)
              ?.member
              .shortName
              .concatOrNull(' (Direct Payment)')
          : null) ??
      members
          .where((p0) => p0.member.id != appState.user!.id)
          .map((p0) => p0.member.shortName)
          .join(", ");

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

  Map<String, int> get amountGrouped => members.fold(<String, int>{}, (p0, p1) {
        for (var amount in p1.owedInGroup) {
          p0.update(
            amount.currencyId,
            (value) => value + amount.amount,
            ifAbsent: () => amount.amount,
          );
        }

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
