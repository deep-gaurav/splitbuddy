import 'package:billdivide/extensions/amount_extension.dart';
import 'package:billdivide/extensions/num_extension.dart';
import 'package:billdivide/extensions/user_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/screens/payment_recorder.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:billdivide/utils/color_utils.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaymentCurrencySelector extends StatelessWidget {
  final GUserFields user;
  final List<GAmountFields> toPay;
  final List<GAmountFields> toReceive;
  final GGroupFields? inGroup;

  const PaymentCurrencySelector(
      {super.key,
      required this.user,
      required this.toPay,
      required this.toReceive,
      this.inGroup});

  @override
  Widget build(BuildContext context) {
    final Set<GCurrencyFields> currencyInteracted = {};
    for (var pay in toPay.followedBy(toReceive)) {
      currencyInteracted
          .add(context.read<AppState>().currencies[pay.currencyId]!);
    }
    ColorScheme scheme = ColorUtils.getMainScheme(context);
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const SliverAppBar.medium(
          title: Text(
            "Select Currency",
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate.fixed(
            [
              ...currencyInteracted.map(
                (e) => Card(
                  child: ListTile(
                    onTap: () async {
                      Navigator.of(context).pop(
                        await Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PaymentRecorder(
                              withUser: context
                                  .read<AppState>()
                                  .interactedUsers
                                  .firstWhere(
                                      (element) => element.id == user.id),
                              inGroup: inGroup,
                              initialCurrencyId: e.id,
                              initialAmount: toPay
                                  .firstWhereOrNull(
                                      (element) => element.currencyId == e.id)
                                  ?.getAmountFormatted(context.read())
                                  .toPrettyFixed(e.decimals),
                            ),
                          ),
                        ),
                      );
                    },
                    leading: Text(
                      e.symbol,
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    title: Text.rich(
                      TextSpan(
                        text: 'Record payment in ',
                        children: [
                          TextSpan(
                              text: '${e.id} ${e.symbol}',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...toPay
                            .followedBy(toReceive)
                            .where((element) => element.currencyId == e.id)
                            .map(
                              (owe) => (owe.amount < 0)
                                  ? Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '${user.shortName} owes you ',
                                            style: TextStyle(
                                              color: scheme.primary,
                                            ),
                                          ),
                                          TextSpan(
                                            text: owe
                                                .getPrettyAbs(context.read()),
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(
                                                    color: scheme.primary,
                                                    fontWeight:
                                                        FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                    )
                                  : (owe.amount > 0)
                                      ? Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                    'you owe ${user.shortName} ',
                                                style: TextStyle(
                                                  color: scheme.error,
                                                ),
                                              ),
                                              TextSpan(
                                                text: owe
                                                    .getPretty(context.read()),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium
                                                    ?.copyWith(
                                                        color: scheme.error,
                                                        fontWeight:
                                                            FontWeight.w800),
                                              ),
                                            ],
                                          ),
                                        )
                                      : const SizedBox(),
                            )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Card(
            child: ListTile(
              leading: const Icon(Icons.currency_exchange),
              title: const Text.rich(
                TextSpan(
                  text: 'Record payment in another currency',
                ),
              ),
              subtitle: DropdownButton<GCurrencyFields>(
                onChanged: (value) async {
                  if (value != null) {
                    Navigator.of(context).pop(
                      await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PaymentRecorder(
                            withUser: context
                                .read<AppState>()
                                .interactedUsers
                                .firstWhere((element) => element.id == user.id),
                            initialCurrencyId: value.id,
                            inGroup: inGroup,
                            initialAmount: toPay
                                .firstWhereOrNull(
                                    (element) => element.currencyId == value.id)
                                ?.getAmountFormatted(context.read())
                                .toPrettyFixed(value.decimals),
                          ),
                        ),
                      ),
                    );
                  }
                },
                hint: const Text('Select Currency'),
                items: context
                    .read<AppState>()
                    .currencies
                    .entries
                    .map(
                      (e) => DropdownMenuItem(
                        value: e.value,
                        child: Text(
                          '${e.key} ${e.value.symbol}',
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
