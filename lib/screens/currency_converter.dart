import 'dart:math';

import 'package:billdivide/extensions/amount_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/screens/groups_page.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:billdivide/utils/color_utils.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CurrencyConverter extends StatefulWidget {
  final GUserPaysFields user;

  const CurrencyConverter({super.key, required this.user});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  GCurrencyFields? toCurrency;
  GCurrencyFields? fromCurrency;

  Set<String> interactedCurrencyId = {};

  bool loading = false;

  @override
  void initState() {
    for (var currency in widget.user.owes) {
      if (currency.amount.amount != 0) {
        interactedCurrencyId.add(currency.amount.currencyId);
      }
    }
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      var fromCurrencyId = interactedCurrencyId.firstWhereOrNull((element) =>
              element != context.read<AppState>().defaultCurrency!.id) ??
          interactedCurrencyId.firstOrNull;
      if (fromCurrencyId != null) {
        setState(() {
          fromCurrency = context.read<AppState>().currencies[fromCurrencyId];
          if (fromCurrencyId != context.read<AppState>().defaultCurrency!.id) {
            toCurrency = context
                .read<AppState>()
                .currencies[context.read<AppState>().defaultCurrency!.id];
          }
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme scheme = ColorUtils.getMainScheme(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar.large(
            title: Text('Convert Currency'),
          ),
          const SliverPadding(padding: EdgeInsets.only(top: 30)),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('From'),
                    DropdownButton<GCurrencyFields>(
                      value: fromCurrency,
                      hint: const Text('Select currency'),
                      items: context
                          .read<AppState>()
                          .currencies
                          .values
                          .where(
                            (element) =>
                                interactedCurrencyId.contains(element.id),
                          )
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text("${e.id} ${e.symbol}"),
                            ),
                          )
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          fromCurrency = val;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(Icons.arrow_right),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('To'),
                    DropdownButton<GCurrencyFields>(
                      value: toCurrency,
                      hint: const Text('Select currency'),
                      items: context
                          .read<AppState>()
                          .currencies
                          .values
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text("${e.id} ${e.symbol}"),
                            ),
                          )
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          toCurrency = val;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (fromCurrency != null && toCurrency != null)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text.rich(
                  TextSpan(
                    text: 'Converting ',
                    children: [
                      TextSpan(
                        text: '${fromCurrency!.displayName} ',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(text: 'to '),
                      TextSpan(
                        text: '${toCurrency!.displayName} ',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          if (fromCurrency != null && toCurrency != null)
            SliverList.builder(
              itemCount: widget.user.owes
                  .where((p0) =>
                      p0.amount.amount != 0 &&
                      p0.amount.currencyId == fromCurrency?.id)
                  .length,
              itemBuilder: (context, i) {
                var owe = widget.user.owes
                    .where((p0) =>
                        p0.amount.amount != 0 &&
                        p0.amount.currencyId == fromCurrency?.id)
                    .elementAt(i);
                var amount = ((owe.amount.amount.abs() *
                        pow(10, toCurrency!.decimals - fromCurrency!.decimals) /
                        fromCurrency!.rate) *
                    toCurrency!.rate);
                var newVal = GAmountFieldsData((b) => b
                  ..currencyId = toCurrency!.id
                  ..amount = amount.toInt());

                return ListTile(
                  leading: GroupIconWidget(
                    group: context
                        .read<AppState>()
                        .userGroups
                        .firstWhere((element) => element.id == owe.groupId),
                  ),
                  title: Text.rich(
                    TextSpan(
                      text: owe.amount.amount > 0
                          ? 'you owe them '
                          : 'they owe you ',
                      children: [
                        TextSpan(
                          text: owe.amount.getPrettyAbs(context),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    style: TextStyle(
                      color:
                          owe.amount.amount > 0 ? scheme.error : scheme.primary,
                    ),
                  ),
                  subtitle: Text.rich(
                    TextSpan(text: 'will be converted to ', children: [
                      TextSpan(
                        text: newVal.getPrettyAbs(context),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                );
              },
            )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: loading
            ? null
            : () async {
                try {
                  setState(() {
                    loading = true;
                  });
                  var nav = Navigator.of(context);
                  if (fromCurrency?.id == null || toCurrency?.id == null) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Select currencies to convert')));
                    return;
                  }
                  var groups = widget.user.owes
                      .where((p0) =>
                          p0.amount.currencyId == fromCurrency?.id &&
                          p0.amount.amount != 0)
                      .map((e) => e.groupId)
                      .toSet();

                  if (groups.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Nothing to convert')));
                  } else {
                    for (var group in groups) {
                      var result =
                          await context.read<AppState>().convertCurrency(
                                userId: widget.user.id,
                                fromCurrencyId: fromCurrency!.id,
                                toCurrencyId: toCurrency!.id,
                                groupId: group,
                              );
                      nav.pop(result);
                    }
                  }
                } finally {
                  if (mounted) {
                    setState(() {
                      loading = false;
                    });
                  }
                }
              },
        label: const Text('Convert'),
        icon: loading
            ? SizedBox(
                height: IconTheme.of(context).size,
                width: IconTheme.of(context).size,
                child: const CircularProgressIndicator(),
              )
            : const Icon(Icons.check),
      ),
    );
  }
}
