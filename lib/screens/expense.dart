import 'package:billdivide/extensions/amount_extension.dart';
import 'package:billdivide/extensions/user_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/graphql/__generated__/queries.req.gql.dart';
import 'package:billdivide/models/expensecategory.dart';
import 'package:billdivide/models/expensewith.dart';
import 'package:billdivide/screens/add_expense.dart';
import 'package:billdivide/screens/home_page.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:billdivide/utils/svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ExpensePage extends StatefulWidget {
  final GExpenseBasic expenseFields;
  final ExpenseWith expenseWith;

  const ExpensePage({
    super.key,
    required this.expenseFields,
    required this.expenseWith,
  });

  @override
  State<ExpensePage> createState() => _ExpensePageState();
}

class _ExpensePageState extends State<ExpensePage> {
  GExpenseFields? expenseFields;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      (await context.read<AppState>().client)
          .execute(GgetExpenseReq(
              (b) => b.vars..expenseId = widget.expenseFields.id))
          .then((value) {
        if (value.data?.expenseById != null && mounted) {
          setState(() {
            expenseFields = value.data?.expenseById;
          });
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar.medium(
            title: Text(
              "Expense",
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverToBoxAdapter(
              child: ElevatedButton(
                onPressed: () {
                  // if (widget.expenseWith == null) {
                  //   controller.openView();
                  // }
                },
                child: SearchBarChips(
                  expenseWith: ValueNotifier(widget.expenseWith),
                  isOut: true,
                  canDelete: false,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              widget.expenseFields.title,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.expenseFields.amount.getPrettyAbs(context),
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                    child: SvgIcon(
                        asset: Category.categoryFromId(
                                widget.expenseFields.category)
                            .iconPath),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    Category.categoryFromId(widget.expenseFields.category)
                        .displayName,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Text.rich(
                TextSpan(text: 'Created by ', children: [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: FittedBox(
                          child: UserIconWidget(
                            user: context
                                .read<AppState>()
                                .getUser(widget.expenseFields.creatorId)!,
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextSpan(
                      text: context
                          .read<AppState>()
                          .getUser(widget.expenseFields.creatorId)!
                          .displayName,
                      style: const TextStyle(fontWeight: FontWeight.bold))
                ]),
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                DateFormat()
                    .format(DateTime.parse(widget.expenseFields.transactionAt)),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              child: Text(
                'Splits',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          if (expenseFields != null &&
              (expenseFields!.splits
                              .fold(0, (p0, p1) => p0 + p1.amount.amount) -
                          widget.expenseFields.amount.amount)
                      .abs() >
                  0)
            SliverToBoxAdapter(
              child: ExpenseSplitMember(
                member: expenseFields!.creator,
                amount: GAmountFieldsData(
                  (b) => b
                    ..amount = (expenseFields!.amount.amount -
                        expenseFields!.splits.fold(
                          0,
                          (p0, p1) => p0 + p1.amount.amount,
                        ))
                    ..currencyId = widget.expenseFields.amount.currencyId,
                ),
              ),
            ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                GSplitFields split = expenseFields!.splits.elementAt(index);
                var member = split.fromUser;
                return ExpenseSplitMember(
                  member: member,
                  amount: split.amount,
                );
              },
              childCount: expenseFields?.splits.length ?? 0,
            ),
          ),
          if (widget.expenseFields.note != null)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Note',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Theme.of(context).colorScheme.secondaryContainer,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(widget.expenseFields.note!),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          if (widget.expenseFields.imageId != null)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Attached Image',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: FutureBuilder(
                          future: context
                              .read<AppState>()
                              .getImageUrl(widget.expenseFields.imageId!),
                          builder: (context, ass) {
                            if (ass.data != null) {
                              return AvifImage.network(
                                ass.data!,
                                fit: BoxFit.cover,
                              );
                            }
                            return const SizedBox();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 70,
            ),
          ),
        ],
      ),
    );
  }
}

class ExpenseSplitMember extends StatelessWidget {
  const ExpenseSplitMember({
    super.key,
    required this.member,
    required this.amount,
  });

  final GUserFields member;
  final GAmountFields amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Card(
        child: ListTile(
          leading: UserIconWidget(user: member),
          title: Text(
            '${member.displayName}${context.read<AppState>().user?.id == member.id ? ' (You)' : ''}',
          ),
          trailing: Text(
            amount.getPrettyAbs(context),
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
