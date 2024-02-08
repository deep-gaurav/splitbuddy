import 'dart:math';

import 'package:billdivide/extensions/num_extension.dart';
import 'package:billdivide/gen/assets.gen.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:billdivide/extensions/group_extension.dart';
import 'package:billdivide/extensions/user_extension.dart';
import 'package:billdivide/extensions/amount_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/screens/groups_page.dart';
import 'package:billdivide/screens/home_page.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:billdivide/utils/color_utils.dart';
import 'package:billdivide/utils/svg_icons.dart';

class PaymentRecorder extends StatefulWidget {
  final GUserPaysFields withUser;
  final String initialCurrencyId;
  final String? initialAmount;
  final GGroupFields? inGroup;

  const PaymentRecorder({
    super.key,
    required this.withUser,
    this.inGroup,
    required this.initialCurrencyId,
    this.initialAmount,
  });

  @override
  State<PaymentRecorder> createState() => _PaymentRecorderState();
}

class _PaymentRecorderState extends State<PaymentRecorder> {
  final GlobalKey<FormState> formKey = GlobalKey();

  GUserFields get currentUser => context.read<AppState>().user!;

  GCurrencyFields? currency;

  final TextEditingController amountController = TextEditingController();
  num get amount => num.tryParse(amountController.text) ?? 0;

  num get remaining => (((amount * pow(10, currency!.decimals)).toInt() -
              owedGroups.fold<num>(
                  0,
                  (previousValue, element) =>
                      previousValue + element.amount.amount)) *
          pow(10, -currency!.decimals))
      .clamp(0, amount);

  Iterable<GUserPaysFields_owes> get owedGroups => widget.withUser.owes
      .where((owed) =>
          owed.amount.currencyId == currency!.id && owed.amount.amount > 0)
      .sorted((a, b) => a.amount.amount.compareTo(b.amount.amount));

  bool loading = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (widget.initialAmount != null) {
        amountController.text = widget.initialAmount!;
        verifyAmount(widget.initialAmount);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme scheme = ColorUtils.getMainScheme(context);

    currency ??= context.read<AppState>().currencies[widget.initialCurrencyId];

    return Scaffold(
      body: Form(
        key: formKey,
        child: CustomScrollView(
          slivers: [
            const SliverAppBar.medium(
              title: Text(
                "Record Payment",
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UserIconWidget(user: currentUser),
                      const Icon(Icons.arrow_right),
                      UserIconWidget(user: widget.withUser),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'You paid ',
                      children: [
                        TextSpan(
                          text: widget.withUser.shortName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    widget.withUser.email ??
                        widget.withUser.phone ??
                        widget.withUser.id,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton<GCurrencyFields>(
                      value: currency,
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
                        if (val == null) {
                          return;
                        }
                        setState(() {
                          amountController.text =
                              ((num.tryParse(amountController.text) ?? 0) *
                                      (val.rate / currency!.rate))
                                  .toPrettyFixed(val.decimals);
                          currency = val;
                        });
                      },
                    ),
                    IntrinsicWidth(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          minWidth: 100,
                        ),
                        child: TextFormField(
                          controller: amountController,
                          textAlign: TextAlign.center,
                          onChanged: verifyAmount,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[0-9\.]'))
                          ],
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Amount can not be empty";
                            } else if (num.tryParse(value) == null ||
                                num.parse(value) <= 0) {
                              return "amount must be greater than 0";
                            }
                            return null;
                          },
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          style: Theme.of(context).textTheme.displayMedium,
                          decoration: const InputDecoration(
                            hintText: '0',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            if (widget.inGroup != null)
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const Text('in Group'),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GroupIconWidget(group: widget.inGroup!),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.inGroup!.getDisplayName(
                            context.read(),
                          ),
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    )
                  ],
                ),
              )
            else ...[
              ValueListenableBuilder(
                valueListenable: amountController,
                builder: (context, val, child) {
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        var owedGroup = owedGroups.elementAt(index);

                        var amountSettling =
                            ((amount * pow(10, currency!.decimals)).toInt() -
                                        owedGroups.foldIndexed(
                                            0,
                                            (i, previous, element) => i >= index
                                                ? previous
                                                : previous +
                                                    element.amount.amount))
                                    .clamp(0, owedGroup.amount.amount) *
                                pow(10, -currency!.decimals);

                        var group = context
                            .read<AppState>()
                            .userGroups
                            .firstWhere(
                                (element) => element.id == owedGroup.groupId);

                        return PaymentGroupTile(
                            group: group,
                            owedGroup: owedGroup,
                            scheme: scheme,
                            amountSettling: amountSettling,
                            currency: currency);
                      },
                      childCount: owedGroups.length,
                    ),
                  );
                },
              ),
              ValueListenableBuilder(
                valueListenable: amountController,
                builder: (context, val, child) => SliverToBoxAdapter(
                  child: remaining > 0
                      ? Container(
                          margin: const EdgeInsets.only(
                              top: 10, left: 20, right: 20),
                          child: ListTile(
                            leading: const SizedBox(
                              height: 40,
                              width: 40,
                              child: SvgIcon(
                                asset: Assets.iconsCashMoney14744Min,
                              ),
                            ),
                            subtitle: const Text.rich(
                              TextSpan(
                                text: 'Extra amount than owed ',
                              ),
                            ),
                            title: const Text('Direct Payment'),
                            trailing: Text(
                              remaining.toPrettyFixed(currency!.decimals),
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .primaryTextTheme
                                    .titleLarge
                                    ?.fontSize,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      : null,
                ),
              ),
            ]
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: loading
            ? SizedBox(
                width: IconTheme.of(context).size,
                height: IconTheme.of(context).size,
                child: const CircularProgressIndicator(),
              )
            : const Icon(Icons.done),
        onPressed: loading
            ? null
            : () async {
                try {
                  setState(() {
                    loading = true;
                  });
                  if (formKey.currentState!.validate()) {
                    var appState = context.read<AppState>();
                    var nav = Navigator.of(context);
                    if (widget.inGroup != null) {
                      var result = await appState.settleInGroup(
                          userId: widget.withUser.id,
                          currencyId: currency!.id,
                          groupId: widget.inGroup!.id,
                          amount:
                              (amount * pow(10, currency!.decimals)).toInt());
                      nav.pop(result);
                    } else {
                      var result = await appState.autoSettleWithUser(
                          userId: widget.withUser.id,
                          currencyId: currency!.id,
                          amount:
                              (amount * pow(10, currency!.decimals)).toInt());
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
        label: const Text("Record"),
      ),
    );
  }

  void verifyAmount(value) {
    var decLength = currency!.decimals;
    String val;
    if (decLength > 0) {
      final decReg = RegExp(r'\d+(\.\d{0,[length]})?'
          .replaceAll('[length]', decLength.toString()));
      val = decReg.firstMatch(value)?.group(0) ?? '';
    } else {
      final decReg = RegExp(r'\d+');
      val = decReg.firstMatch(value)?.group(0) ?? '';
    }
    if (val != value) {
      amountController.text = val;
      return;
    }
    // resetAmount();
  }
}

class PaymentGroupTile extends StatelessWidget {
  const PaymentGroupTile({
    super.key,
    required this.group,
    required this.owedGroup,
    required this.scheme,
    required this.amountSettling,
    required this.currency,
  });

  final GGroupFields group;
  final GUserPaysFields_owes owedGroup;
  final ColorScheme scheme;
  final num amountSettling;
  final GCurrencyFields? currency;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: ListTile(
        leading: GroupIconWidget(group: group),
        subtitle: Text.rich(
          TextSpan(
            text: 'you owe ',
            children: [
              TextSpan(
                text: owedGroup.amount.getPrettyAbs(context),
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          style: TextStyle(
            color: scheme.error,
          ),
        ),
        title: Text(group.getDisplayName(context.read())),
        trailing: Text(
          amountSettling.toPrettyFixed(currency!.decimals),
          style: TextStyle(
            fontSize: Theme.of(context).primaryTextTheme.titleLarge?.fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
