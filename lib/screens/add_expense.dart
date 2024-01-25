import 'dart:math';

import 'package:billdivide/extensions/num_extension.dart';
import 'package:billdivide/screens/people_finder.dart';
import 'package:billdivide/utils/color_utils.dart';
import 'package:built_collection/built_collection.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:billdivide/__generated__/schema.schema.gql.dart';
import 'package:billdivide/extensions/group_extension.dart';
import 'package:billdivide/extensions/user_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/graphql/__generated__/queries.req.gql.dart';
import 'package:billdivide/models/expensewith.dart';
import 'package:billdivide/screens/groups_page.dart';
import 'package:billdivide/screens/home_page.dart';
import 'package:billdivide/state/app_state.dart';

class CreateExpense extends StatefulWidget {
  final ExpenseWith? expenseWith;

  final bool searchGroup;
  const CreateExpense({super.key, required this.searchGroup, this.expenseWith});

  @override
  State<CreateExpense> createState() => _CreateExpenseState();
}

class _CreateExpenseState extends State<CreateExpense> {
  ValueNotifier<ExpenseWith?> expenseWith = ValueNotifier(null);

  var nameController = TextEditingController();
  var amountController = TextEditingController();

  Map<String, num> percentDistribution = {};
  Map<String, TextEditingController> amountDistribution = {};

  var formKey = GlobalKey<FormState>();

  GCurrencyFields? currentCurrency;

  bool loading = false;

  @override
  void initState() {
    amountController.addListener(() {
      // resetPercentage();
    });
    expenseWith.addListener(reinitDistribution);
    expenseWith.value = widget.expenseWith;
    super.initState();
  }

  reinitDistribution() {
    percentDistribution.clear();
    amountDistribution.clear();
    if (expenseWith.value case ExpenseWithGroup(group: var group)) {
      for (var user in group.members) {
        percentDistribution[user.member.id] = 1 / group.members.length;
        amountDistribution[user.member.id] = TextEditingController();
      }
    } else if (expenseWith.value case ExpenseWithPeople(users: var users)) {
      final currentUser = context.read<AppState>().user!;
      for (var user in [UserWithUser(user: currentUser), ...users]) {
        percentDistribution[user.id] = 1 / (users.length + 1);
        amountDistribution[user.id] = TextEditingController();
      }
    }
  }

  resetAmount() {
    int deci = currentCurrency?.decimals ?? 0;

    num amount = num.tryParse(amountController.text) ?? 0.0;
    for (var user in percentDistribution.entries) {
      amountDistribution[user.key]!.text =
          (user.value * amount).toPrettyFixed(deci);
    }

    var sum = amountDistribution.values.fold<num>(
        0,
        (previousValue, element) =>
            (num.tryParse(element.text) ?? 0) + previousValue);

    var diff = amount - sum;
    amountDistribution[context.read<AppState>().user!.id]?.text = (num.parse(
                amountDistribution[context.read<AppState>().user!.id]!.text) +
            diff)
        .toPrettyFixed(deci);
  }

  resetPercentage() {
    var amount = int.tryParse(amountController.text);
    if (amount != null && amount > 0) {
      for (var percUser in percentDistribution.entries) {
        percentDistribution[percUser.key] =
            (int.tryParse(amountDistribution[percUser.key]!.text) ?? 0) /
                amount;
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    currentCurrency ??= context.read<AppState>().defaultCurrency ??
        context.read<AppState>().currencies.entries.first.value;
    return Scaffold(
      body: Form(
        key: formKey,
        child: CustomScrollView(
          slivers: [
            const SliverAppBar.medium(
              title: Text(
                "Create Expense",
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              sliver: SliverToBoxAdapter(
                child: PeopleFinder(
                  canMultiSelect: true,
                  findGroups: true,
                  isEditable: widget.expenseWith == null,
                  people: expenseWith,
                  builder: (context, controller) => ValueListenableBuilder(
                      valueListenable: expenseWith,
                      builder: (context, val, child) {
                        if (val != null && val.lengthOfUsers > 0) {
                          return ElevatedButton(
                            onPressed: () {
                              if (widget.expenseWith == null) {
                                controller.openView();
                              }
                            },
                            child: SearchBarChips(
                              expenseWith: expenseWith,
                              isOut: true,
                              canDelete: widget.expenseWith == null,
                            ),
                          );
                        }
                        return ElevatedButton.icon(
                          onPressed: () {
                            if (widget.expenseWith == null) {
                              controller.openView();
                            }
                          },
                          icon: const Icon(Icons.search),
                          label: const Text('Enter name or email'),
                        );
                      }),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownButton<GCurrencyFields>(
                    value: currentCurrency,
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
                                    (val.rate / currentCurrency!.rate))
                                .toPrettyFixed(val.decimals);
                        currentCurrency = val;
                        resetAmount();
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
                        onChanged: (value) {
                          var decLength = currentCurrency!.decimals;
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
                          resetAmount();
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9\.]'))
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
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            SliverToBoxAdapter(
              child: Center(
                child: IntrinsicWidth(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 100,
                    ),
                    child: TextFormField(
                      controller: nameController,
                      textAlign: TextAlign.center,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "note can not be empty";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      style: Theme.of(context).textTheme.titleMedium,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        hintText: 'what is expense about?',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ValueListenableBuilder(
                valueListenable: expenseWith,
                builder: (context, expenseWithValue, child) {
                  if (expenseWithValue == null) {
                    return const SliverToBoxAdapter();
                  }
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        ShareableUser member;
                        switch (expenseWithValue) {
                          case ExpenseWithGroup(group: var group):
                            member =
                                UserWithUser(user: group.members[index].member);

                          case ExpenseWithPeople(users: var users):
                            member = [
                              UserWithUser(
                                  user: context.read<AppState>().user!),
                              ...users
                            ][index];
                        }
                        return Container(
                          margin: const EdgeInsets.only(
                              top: 10, left: 20, right: 20),
                          child: Card(
                            child: ListTile(
                              selected: context.read<AppState>().user!.id ==
                                  member.id,
                              leading: const Icon(Icons.person),
                              title: Text(member.displayName),
                              subtitle: Slider(
                                  value: percentDistribution[member.id]
                                          ?.toDouble() ??
                                      0,
                                  onChanged: (val) {
                                    setState(() {
                                      percentDistribution[member.id] = val;
                                      var remainingpercentage = 1 - val;

                                      var remainingUsers = percentDistribution
                                          .entries
                                          .where((element) =>
                                              element.key != member.id)
                                          .toList();
                                      if (remainingpercentage == 0) {
                                        for (var user in remainingUsers) {
                                          percentDistribution[user.key] = 0;
                                        }
                                      } else {
                                        var remainingWeights = remainingUsers
                                            .map((e) => e.value)
                                            .fold(
                                                0.0,
                                                (previousValue, element) =>
                                                    previousValue + element);
                                        var remainingExtra = remainingWeights -
                                            remainingpercentage;
                                        for (var user in remainingUsers) {
                                          if (remainingWeights == 0) {
                                            continue;
                                          }
                                          var ratio =
                                              user.value / remainingWeights;
                                          percentDistribution[user.key] =
                                              percentDistribution[user.key]! -
                                                  ratio * remainingExtra;
                                        }
                                      }
                                      var sum = percentDistribution.values.fold(
                                          0.0,
                                          (previousValue, element) =>
                                              previousValue + element);
                                      var remaining = 1 - sum;
                                      if (remaining > 0) {
                                        var remainingUsersNew =
                                            percentDistribution.entries
                                                .where((element) =>
                                                    element.key != member.id)
                                                .toList();
                                        var eachWeight = remaining /
                                            remainingUsersNew.length;
                                        for (var user in remainingUsersNew) {
                                          percentDistribution[user.key] =
                                              percentDistribution[user.key]! +
                                                  eachWeight;
                                        }
                                      }

                                      resetAmount();
                                    });
                                  }),
                              trailing: IntrinsicWidth(
                                child: TextFormField(
                                  controller: amountDistribution[member.id],
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9\.]'))
                                  ],
                                  onChanged: (value) {
                                    var decLength = currentCurrency!.decimals;
                                    String val;
                                    if (decLength > 0) {
                                      final decReg = RegExp(
                                          r'\d+(\.\d{[length]})?'.replaceAll(
                                              '[length]',
                                              decLength.toString()));
                                      val =
                                          decReg.firstMatch(value)?.group(0) ??
                                              '';
                                    } else {
                                      final decReg = RegExp(r'\d+');
                                      val =
                                          decReg.firstMatch(value)?.group(0) ??
                                              '';
                                    }
                                    if (val != value) {
                                      amountController.text = val;
                                      return;
                                    }
                                    var amount = double.tryParse(value);
                                    if (amount != null && amount >= 0) {
                                      amountDistribution[member.id]!.text =
                                          value;
                                      amountController.text = amountDistribution
                                          .values
                                          .map(
                                            (value) =>
                                                int.tryParse(value.text) ?? 0,
                                          )
                                          .fold(0, (p, e) => p + e)
                                          .toString();
                                      resetPercentage();
                                      amountDistribution[member.id]!.selection =
                                          TextSelection.collapsed(
                                              offset: value.length);
                                    }
                                  },
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                    decimal: true,
                                  ),
                                  style: Theme.of(context).textTheme.titleSmall,
                                  decoration: const InputDecoration(
                                    hintText: '0',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      childCount: switch (expenseWithValue) {
                        ExpenseWithGroup(group: final group) =>
                          group.members.length,
                        ExpenseWithPeople(users: final users) =>
                          users.length + 1,
                      },
                    ),
                  );
                }),
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
                  if (formKey.currentState?.validate() == true) {
                    var appstate = context.read<AppState>();
                    var nav = Navigator.of(context);
                    if (expenseWith.value
                        case ExpenseWithGroup(group: var group)) {
                      var expense = await appstate.addExpense(
                        nameController.text,
                        (double.parse(amountController.text) *
                                pow(10, currentCurrency!.decimals))
                            .toInt(),
                        group.id,
                        currentCurrency!.id,
                        amountDistribution.entries
                            .where(
                                (element) => element.key != appstate.user!.id)
                            .map(
                              (e) => GSplitInput(
                                (b) => b
                                  ..amount = (double.parse(e.value.text) *
                                          pow(10, currentCurrency!.decimals))
                                      .toInt()
                                  ..userId = e.key,
                              ),
                            )
                            .toList(),
                      );
                      nav.pop(expense);
                    } else if (expenseWith.value
                        case ExpenseWithPeople(users: var users)) {
                      var expense = await (await appstate.client).execute(
                        GcreateNonGroupExpenseReq(
                          (b) => b.vars
                            ..amount = (double.parse(amountController.text) *
                                    pow(10, currentCurrency!.decimals))
                                .toInt()
                            ..title = nameController.text
                            ..currencyId = currentCurrency!.id
                            ..nonGroupSplit = ListBuilder(
                              users
                                  .map(
                                    (e) => GSplitInputNonGroup(
                                      (b) {
                                        b.amount = (double.parse(
                                                    amountDistribution[e.id]!
                                                        .text) *
                                                pow(10,
                                                    currentCurrency!.decimals))
                                            .toInt();
                                        switch (e) {
                                          case UserWithEmail(
                                              email: final email
                                            ):
                                            b.email = email;
                                          case UserWithUser(user: final user):
                                            b.userId = user.id;
                                        }
                                      },
                                    ),
                                  )
                                  .toList(),
                            ),
                        ),
                      );
                      appstate.refresh((await appstate.client));
                      nav.pop(expense.data?.addNonGroupExpense.expense);
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
        label: const Text("Create"),
      ),
    );
  }
}

class SearchBarChips extends StatelessWidget {
  final bool isOut;
  final bool canDelete;
  final ValueNotifier<ExpenseWith?> expenseWith;

  const SearchBarChips(
      {super.key,
      required this.expenseWith,
      required this.isOut,
      required this.canDelete});

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
      valueListenable: expenseWith,
      builder: (context, expenseWithValue, child) => Wrap(
            children: [
              if (expenseWithValue case ExpenseWithPeople(users: var users))
                ...users.map(
                  (e) => Chip(
                    avatar: FittedBox(child: UserIconWidget(user: e)),
                    label: Text(e.displayName),
                    onDeleted: canDelete
                        ? () {
                            expenseWith.value = ExpenseWithPeople(users: [
                              ...users.where((element) => element != e)
                            ]);
                          }
                        : null,
                  ),
                )
              else if (expenseWithValue case ExpenseWithGroup(group: var group))
                Chip(
                  avatar: FittedBox(
                    child: GroupIconWidget(group: group),
                  ),
                  label: Text(group.getDisplayName(context.read())),
                  onDeleted: canDelete
                      ? () {
                          expenseWith.value = null;
                        }
                      : null,
                ),
            ],
          ));
}
