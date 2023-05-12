import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:splitbuddy/graphql_api.graphql.dart';
import 'package:splitbuddy/state/app_state.dart';

class CreateExpensePage extends StatefulWidget {
  final GroupFieldsMixin group;

  const CreateExpensePage({super.key, required this.group});

  @override
  State<CreateExpensePage> createState() => _CreateExpensePageState();
}

class _CreateExpensePageState extends State<CreateExpensePage> {
  var nameController = TextEditingController();
  var amountController = TextEditingController();

  Map<String, num> percentDistribution = {};
  Map<String, TextEditingController> amountDistribution = {};

  var formKey = GlobalKey<FormState>();

  @override
  void initState() {
    for (var user in widget.group.members) {
      percentDistribution[user.id] = 1 / widget.group.members.length;
      amountDistribution[user.id] = TextEditingController();
    }
    amountController.addListener(() {
      // resetPercentage();
    });
    super.initState();
  }

  resetAmount() {
    var amount = int.tryParse(amountController.text) ?? 0;
    for (var user in percentDistribution.entries) {
      amountDistribution[user.key]!.text =
          (user.value * amount).toInt().toString();
    }

    var sum = amountDistribution.values.fold(
        0,
        (previousValue, element) =>
            (int.tryParse(element.text) ?? 0) + previousValue);

    var diff = amount - sum;
    amountDistribution[context.read<AppState>().user!.id]!.text = (num.parse(
                amountDistribution[context.read<AppState>().user!.id]!.text) +
            diff)
        .toString();
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
    return Scaffold(
      body: Form(
        key: formKey,
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              title: Text("Create Expense"),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 50,
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
                      controller: amountController,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        resetAmount();
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
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
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  var member = widget.group.members[index];
                  return Container(
                    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Card(
                      child: ListTile(
                        selected:
                            context.read<AppState>().user!.id == member.id,
                        leading: const Icon(Icons.person),
                        title: Text(member.name),
                        subtitle: Slider(
                            value:
                                percentDistribution[member.id]?.toDouble() ?? 0,
                            onChanged: (val) {
                              setState(() {
                                percentDistribution[member.id] = val;
                                var remainingpercentage = 1 - val;

                                var remainingUsers = percentDistribution.entries
                                    .where(
                                        (element) => element.key != member.id)
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
                                  var remainingExtra =
                                      remainingWeights - remainingpercentage;
                                  for (var user in remainingUsers) {
                                    if (remainingWeights == 0) {
                                      continue;
                                    }
                                    var ratio = user.value / remainingWeights;
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
                                  var remainingUsersNew = percentDistribution
                                      .entries
                                      .where(
                                          (element) => element.key != member.id)
                                      .toList();
                                  var eachWeight =
                                      remaining / remainingUsersNew.length;
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
                                  RegExp(r'[0-9]'))
                            ],
                            onChanged: (value) {
                              var amount = double.tryParse(value);
                              if (amount != null && amount >= 0) {
                                amountDistribution[member.id]!.text = value;
                                amountController.text =
                                    amountDistribution.values
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
                            keyboardType: const TextInputType.numberWithOptions(
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
                childCount: widget.group.members.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.done),
        onPressed: () async {
          if (formKey.currentState?.validate() == true) {
            var appstate = context.read<AppState>();
            var nav = Navigator.of(context);
            var expense = await appstate.addExpense(
              nameController.text,
              int.parse(amountController.text),
              widget.group.id,
              amountDistribution.entries
                  .where((element) => element.key != appstate.user!.id)
                  .map((e) => SplitInput(
                      amount: int.parse(e.value.text), userId: e.key))
                  .toList(),
            );
            nav.pop(expense);
          }
        },
        label: const Text("Create"),
      ),
    );
  }
}
