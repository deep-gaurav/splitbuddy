import 'dart:math';

import 'package:billdivide/extensions/num_extension.dart';
import 'package:billdivide/models/expensecategory.dart';
import 'package:billdivide/screens/image_editor.dart';
import 'package:billdivide/screens/people_finder.dart';
import 'package:billdivide/utils/color_utils.dart';
import 'package:billdivide/utils/svg_icons.dart';
import 'package:built_collection/built_collection.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image/image.dart' as image;
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_android/image_picker_android.dart';
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
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';
import 'package:http/http.dart' as http;

class CreateExpense extends StatefulWidget {
  final ExpenseWith? expenseWith;

  final bool searchGroup;
  const CreateExpense({super.key, required this.searchGroup, this.expenseWith});

  @override
  State<CreateExpense> createState() => _CreateExpenseState();
}

class _CreateExpenseState extends State<CreateExpense>
    with SingleTickerProviderStateMixin {
  ValueNotifier<ExpenseWith?> expenseWith = ValueNotifier(null);

  var nameController = TextEditingController();
  var amountController = TextEditingController();

  List<(ShareableUser, bool, TextEditingController, TextEditingController)>
      distribution = [];

  var formKey = GlobalKey<FormState>();

  GCurrencyFields? currentCurrency;

  bool loading = false;
  late TabController _tabController;

  AnimationController? shakeController;

  Category? selectedCategory;

  TextEditingController? noteController;

  @override
  void initState() {
    amountController.addListener(() {
      // autoAdjust();
    });
    expenseWith.addListener(reinitDistribution);
    expenseWith.value = widget.expenseWith;
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  reinitDistribution() {
    List<ShareableUser> users = switch (expenseWith.value) {
      null => [],
      ExpenseWithGroup(group: var group) =>
        group.members.map((p0) => UserWithUser(user: p0.member)).toList(),
      ExpenseWithPeople(users: var users) => [
          UserWithUser(user: context.read<AppState>().user!),
          ...users
        ],
      ExpenseWithSelf() => [
          UserWithUser(user: context.read<AppState>().user!),
        ],
    };
    distribution.clear();
    for (var user in users) {
      distribution.add((
        user,
        true,
        TextEditingController(text: '0'),
        TextEditingController()
      ));
    }
    equalize();
  }

  equalize() {
    var applicableUsers = distribution.where((element) => element.$2);
    var totalUsers = applicableUsers.length;
    if (totalUsers == 0) {
      reinitDistribution();
      return;
    }
    if (double.tryParse(amountController.text) == null) {
      return;
    }
    int total = amountReprToamount(amountController.text, currentCurrency!);
    int persplit = total ~/ totalUsers;
    String percentage = (100 / totalUsers).toPrettyFixed(2);
    int remaining = total - (persplit * totalUsers);
    for (var (i, applieduser) in applicableUsers.indexed) {
      applieduser.$3.text =
          amountToRepr(persplit + (i == 0 ? remaining : 0), currentCurrency!);
      applieduser.$4.text = percentage;
    }
  }

  String amountToRepr(int amount, GCurrencyFields currency) {
    return (amount / (pow(10, currency.decimals)))
        .toPrettyFixed(currency.decimals);
  }

  int amountReprToamount(String repr, GCurrencyFields currency) {
    return ((double.tryParse(repr) ?? 0) * (pow(10, currency.decimals)))
        .toInt();
  }

  bool isEqualized() {
    var applicableUsers = distribution.where((element) => element.$2);
    var totalUsers = applicableUsers.length;
    if (totalUsers == 0) {
      reinitDistribution();
      return false;
    }
    if (double.tryParse(amountController.text) == null) {
      return false;
    }
    int total = applicableUsers.fold(
      0,
      (previousValue, element) =>
          previousValue + amountReprToamount(element.$3.text, currentCurrency!),
    );
    int persplit = total ~/ totalUsers;
    int remaining = total - (persplit * totalUsers);
    for (var (i, applieduser) in applicableUsers.indexed) {
      var expectedAmount =
          amountToRepr(persplit + (i == 0 ? remaining : 0), currentCurrency!);
      if (amountToRepr(
              amountReprToamount(applieduser.$3.text, currentCurrency!),
              currentCurrency!) !=
          expectedAmount) {
        return false;
      }
    }
    return true;
  }

  autoAdjust() {
    if (isEqualized()) {
      equalize();
    } else {
      adjustAmount();
    }
  }

  adjustAmount() {
    var applicableUsers = distribution.where((element) => element.$2);
    var totalUsers = applicableUsers.length;
    if (totalUsers == 0) {
      reinitDistribution();
      return;
    }
    if (double.tryParse(amountController.text) == null) {
      return;
    }
    int fulltotal = amountReprToamount(amountController.text, currentCurrency!);
    int total = fulltotal;
    for (var (i, applieduser) in applicableUsers.indexed) {
      var amount = amountReprToamount(applieduser.$3.text, currentCurrency!);
      total -= amount;
    }
    if (total > 0) {
      if (applicableUsers.lastOrNull != null) {
        var oldAmount = amountReprToamount(
            applicableUsers.lastOrNull!.$3.text, currentCurrency!);
        var newAmount = amountToRepr(oldAmount + total, currentCurrency!);
        applicableUsers.lastOrNull!.$3.text = newAmount;
      }
    } else if (total < 0) {
      for (var (i, applieduser) in applicableUsers.indexed.toList().reversed) {
        var amount = amountReprToamount(applieduser.$3.text, currentCurrency!);
        if (amount.abs() > total.abs()) {
          applieduser.$3.text = amountToRepr(amount + total, currentCurrency!);
          break;
        } else {
          total += amount;
          applieduser.$3.text = amountToRepr(0, currentCurrency!);
        }
      }
    }
    resetPercentagesFromAmount();
  }

  resetPercentagesFromAmount() {
    var applicableUsers = distribution.where((element) => element.$2);
    int fulltotal = amountReprToamount(amountController.text, currentCurrency!);

    for (var user in applicableUsers) {
      user.$4.text =
          ((amountReprToamount(user.$3.text, currentCurrency!) / fulltotal) *
                  100)
              .toPrettyFixed(2);
    }
  }

  resetAmountFromPercentage() {
    var applicableUsers = distribution.where((element) => element.$2);
    int fulltotal = amountReprToamount(amountController.text, currentCurrency!);
    int total = fulltotal;

    for (var user in applicableUsers) {
      var amount = fulltotal * (double.tryParse(user.$4.text) ?? 0) ~/ 100;
      user.$3.text = amountToRepr(amount, currentCurrency!);
      total -= amount;
    }
    if (total > 0) {
      if (applicableUsers.lastOrNull != null) {
        var oldAmount = amountReprToamount(
            applicableUsers.lastOrNull!.$3.text, currentCurrency!);
        var newAmount = amountToRepr(oldAmount + total, currentCurrency!);
        applicableUsers.lastOrNull!.$3.text = newAmount;
      }
    } else if (total < 0) {
      for (var (i, applieduser) in applicableUsers.indexed.toList().reversed) {
        var amount = amountReprToamount(applieduser.$3.text, currentCurrency!);
        if (amount.abs() > total.abs()) {
          applieduser.$3.text = amountToRepr(amount + total, currentCurrency!);
          break;
        } else {
          total += amount;
          applieduser.$3.text = amountToRepr(0, currentCurrency!);
        }
      }
    }
  }

  adjustPercentage() {
    var applicableUsers = distribution.where((element) => element.$2);
    var totalUsers = applicableUsers.length;
    if (totalUsers == 0) {
      reinitDistribution();
      return;
    }
    if (double.tryParse(amountController.text) == null) {
      return;
    }
    double fulltotal = 100;
    double total = fulltotal;
    for (var (i, applieduser) in applicableUsers.indexed) {
      total -= double.tryParse(applieduser.$4.text) ?? 0.0;
    }
    if (total > 0) {
      if (applicableUsers.lastOrNull != null) {
        var oldAmount = double.tryParse(
              applicableUsers.lastOrNull!.$4.text,
            ) ??
            0.0;
        var newAmount = (oldAmount + total).toPrettyFixed(2);
        applicableUsers.lastOrNull!.$4.text = newAmount;
      }
    } else if (total < 0) {
      for (var (i, applieduser) in applicableUsers.indexed.toList().reversed) {
        var amount = double.tryParse(applieduser.$4.text) ?? 0.0;
        if (amount.abs() > total.abs()) {
          applieduser.$4.text = (amount + total).toPrettyFixed(2);
          break;
        } else {
          total += amount;
          applieduser.$4.text = '0';
        }
      }
    }
    resetAmountFromPercentage();
  }

  Uint8List? selectedImage;

  pickImage() async {
    var result = await Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ImageEditor(
              initialImage: selectedImage,
            )));
    if (result is Uint8List) {
      setState(() {
        selectedImage = result;
      });
    } else if (result == false) {
      setState(() {
        selectedImage = null;
      });
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
                  showSelf: true,
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
                    },
                  ),
                )
                    .animate(
                      onInit: (controller) => shakeController = controller,
                    )
                    .shake(duration: Durations.long2),
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
                        autoAdjust();
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
                          autoAdjust();
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
            SliverToBoxAdapter(
              child: Center(
                child: IntrinsicWidth(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 100,
                    ),
                    child: DropdownButtonFormField<Category>(
                      hint: const Text('Select Category'),
                      value: selectedCategory,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null) {
                          return 'Select the expense category';
                        }
                        return null;
                      },
                      items: Category.values
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 24,
                                    child: SvgIcon(asset: e.iconPath),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(e.displayName),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(
                          () {
                            selectedCategory = value;
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            if (selectedImage != null)
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: InkWell(
                    onTap: pickImage,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        fit: StackFit.passthrough,
                        children: [
                          SizedBox(
                            height: 100,
                            child: AvifImage.memory(
                              selectedImage!,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Positioned.fill(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [Colors.transparent, Colors.black],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            left: 0,
                            right: 0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Text(
                                    'Attached Image',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.fontSize),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                    size: 18,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            if (noteController != null)
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: 200,
                    ),
                    child: TextField(
                      controller: noteController,
                      maxLength: 300,
                      maxLines: null,
                      decoration: const InputDecoration(
                        filled: true,
                        // hintText: "Note",
                        labelText: 'Note',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ),
            SliverToBoxAdapter(
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: pickImage,
                        icon: const Icon(Icons.image),
                        label: Text(
                          selectedImage == null ? 'Add Image' : 'Edit Image',
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          if (noteController != null) {
                            setState(() {
                              noteController = null;
                            });
                          } else {
                            setState(() {
                              noteController = TextEditingController();
                            });
                          }
                        },
                        icon: const Icon(Icons.note),
                        label: Text(
                          noteController == null ? 'Add Note' : 'Remove Note',
                        ),
                      ),
                      ValueListenableBuilder(
                        valueListenable: expenseWith,
                        builder: (context, expenseWithValue, child) {
                          return ElevatedButton.icon(
                            onPressed:
                                expenseWithValue != null ? equalize : null,
                            icon: const Icon(Icons.equalizer),
                            label: const Text(
                              'Split Equally',
                            ),
                          );
                        },
                      ),
                    ],
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
                return SliverToBoxAdapter(
                  child: TabBar(
                    controller: _tabController,
                    tabs: const [
                      Tab(
                        text: 'Split with Amount',
                      ),
                      Tab(
                        text: 'Split with percentage',
                      )
                    ],
                  ),
                );
              },
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
                      ShareableUser member = distribution.elementAt(index).$1;
                      bool isEnabled = distribution[index].$2;
                      TextEditingController amount = distribution[index].$3;
                      TextEditingController percentage = distribution[index].$4;

                      return Container(
                        margin:
                            const EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: Card(
                          child: ListTile(
                            selected:
                                context.read<AppState>().user!.id == member.id,
                            leading: SizedBox(
                              width: 100,
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: isEnabled,
                                    onChanged: (val) {
                                      if (val != null) {
                                        bool isEqual = isEqualized();
                                        if (val) {
                                          distribution[index] = (
                                            member,
                                            true,
                                            amount,
                                            percentage
                                          );
                                        } else if (distribution
                                                .where((element) => element.$2)
                                                .length >
                                            1) {
                                          distribution[index] = (
                                            member,
                                            false,
                                            amount,
                                            percentage
                                          );
                                        }

                                        if (isEqual) {
                                          equalize();
                                        }
                                        adjustAmount();
                                        setState(() {});
                                      }
                                    },
                                  ),
                                  UserIconWidget(user: member),
                                ],
                              ),
                            ),
                            title: Text(member.displayName),
                            subtitle: AnimatedBuilder(
                              animation: _tabController,
                              builder: (context, child) {
                                if (_tabController.index == 0) {
                                  return ValueListenableBuilder(
                                    valueListenable: amount,
                                    builder: (context, _, child) {
                                      if (isEnabled) {
                                        return Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(currentCurrency!.symbol),
                                            Expanded(
                                              child: TextField(
                                                controller: amount,
                                                onChanged: (value) {
                                                  adjustAmount();
                                                },
                                                inputFormatters: [
                                                  FilteringTextInputFormatter
                                                      .allow(RegExp(r'[0-9\.]'))
                                                ],
                                                decoration:
                                                    InputDecoration.collapsed(
                                                  hintText: amount.text,
                                                  // prefixText:
                                                  //     currentCurrency!.symbol,
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      } else {
                                        return const Text('Not Involved');
                                      }
                                    },
                                  );
                                } else {
                                  return ValueListenableBuilder(
                                    valueListenable: percentage,
                                    builder: (context, _, child) {
                                      if (isEnabled) {
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: IntrinsicWidth(
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Expanded(
                                                            child: TextField(
                                                              controller:
                                                                  percentage,
                                                              onChanged:
                                                                  (value) {
                                                                adjustPercentage();
                                                              },
                                                              inputFormatters: [
                                                                FilteringTextInputFormatter
                                                                    .allow(RegExp(
                                                                        r'[0-9\.]'))
                                                              ],
                                                              decoration:
                                                                  const InputDecoration
                                                                      .collapsed(
                                                                hintText: '0',
                                                                // prefixText:
                                                                //     currentCurrency!.symbol,
                                                              ),
                                                            ),
                                                          ),
                                                          const Text('%'),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Equivalent to ${currentCurrency!.symbol}${amount.text}',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelSmall,
                                                ),
                                              ],
                                            ),
                                          ],
                                        );
                                      } else {
                                        return const Text('Not Involved');
                                      }
                                    },
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                      );
                    },
                    childCount: distribution.length,
                  ),
                );
              },
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 70,
              ),
            ),
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
                  if (expenseWith.value == null) {
                    shakeController?.reset();
                    shakeController?.forward();
                    return;
                  }
                  if (formKey.currentState?.validate() == true) {
                    var appstate = context.read<AppState>();
                    var nav = Navigator.of(context);
                    String? imageId;
                    if (selectedImage != null) {
                      imageId = await uploadImage(context, selectedImage!);
                      if (imageId == null) {
                        throw "Image upload failed";
                      }
                    }
                    if (expenseWith.value
                        case ExpenseWithGroup(group: var group)) {
                      var expense = await appstate.addExpense(
                        nameController.text,
                        (double.parse(amountController.text) *
                                pow(10, currentCurrency!.decimals))
                            .toInt(),
                        group.id,
                        currentCurrency!.id,
                        distribution
                            .where(
                                (element) => element.$1.id != appstate.user!.id)
                            .map(
                              (e) => GSplitInput(
                                (b) => b
                                  ..amount = e.$2
                                      ? amountReprToamount(
                                          e.$3.text, currentCurrency!)
                                      : 0
                                  ..userId = e.$1.id,
                              ),
                            )
                            .toList(),
                        selectedCategory!.categoryId,
                        note: noteController?.text.trim().isNotEmpty == true
                            ? noteController?.text
                            : null,
                        imageId: imageId,
                      );
                      appstate.notificationSubscription.add(null);

                      nav.pop(expense);
                    } else if ((expenseWith.value is ExpenseWithPeople) ||
                        (expenseWith.value is ExpenseWithSelf)) {
                      var expense = await (await appstate.client).execute(
                        GcreateNonGroupExpenseReq(
                          (b) => b.vars
                            ..amount = amountReprToamount(
                                amountController.text, currentCurrency!)
                            ..title = nameController.text
                            ..currencyId = currentCurrency!.id
                            ..category = selectedCategory?.categoryId
                            ..note =
                                noteController?.text.trim().isNotEmpty == true
                                    ? noteController?.text
                                    : null
                            ..imageId = imageId
                            ..nonGroupSplit = ListBuilder(
                              distribution
                                  .where((element) =>
                                      element.$1.id != appstate.user!.id)
                                  .map(
                                    (e) => GSplitInputNonGroup(
                                      (b) {
                                        b.amount = e.$2
                                            ? amountReprToamount(
                                                e.$3.text, currentCurrency!)
                                            : 0;
                                        switch (e.$1) {
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
                      appstate.notificationSubscription.add(null);
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
      // bottomNavigationBar: ValueListenableBuilder(
      //   valueListenable: expenseWith,
      //   builder: (context, val, child) =>
      //       val != null ? child! : const SizedBox(),
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       const Divider(),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.end,
      //         children: [
      //           ButtonBar(
      //             children: [
      //               ElevatedButton.icon(
      //                 onPressed: equalize,
      //                 icon: const Icon(Icons.equalizer),
      //                 label: const Text(
      //                   'Split Equally',
      //                 ),
      //               ),
      //             ],
      //           )
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
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
                )
              else if (expenseWithValue case ExpenseWithSelf())
                Chip(
                  avatar: FittedBox(
                    child: UserIconWidget(
                      user: context.read<AppState>().user!,
                    ),
                  ),
                  label: Text(
                      '${context.read<AppState>().user!.displayName} (Personal Expense)'),
                  onDeleted: canDelete
                      ? () {
                          expenseWith.value = null;
                        }
                      : null,
                ),
            ],
          ));
}

Future<String?> uploadImage(BuildContext context, Uint8List imageBytes,
    {Map<String, String>? additionalHeaders}) async {
  var mainClient = await context.read<AppState>().client;
  final client = http.Client();

  try {
    var presignedUrl = await mainClient.execute(
        GgetImageUploadUrlReq((b) => b.vars..size = imageBytes.length));
    if (presignedUrl.data?.uploadImage.presignedUrl == null) {
      return null;
    }
    final response = await http.put(
      Uri.parse(presignedUrl.data!.uploadImage.presignedUrl),
      headers: {
        'Content-Length': imageBytes.length.toString(),
        'Content-Type': 'image/avif'
      },
      body: imageBytes,
    );
    if (response.statusCode == 200) {
      return presignedUrl.data!.uploadImage.id;
    } else {
      return null;
    }
  } catch (error) {
    // print('Error: $error');
    return null;
  } finally {
    client.close(); // Close the client to avoid resource leaks
  }
}
