import 'package:billdivide/extensions/amount_extension.dart';
import 'package:billdivide/extensions/group_extension.dart';
import 'package:billdivide/extensions/user_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/graphql/__generated__/queries.req.gql.dart';
import 'package:billdivide/screens/groups_page.dart';
import 'package:billdivide/screens/home_page.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:billdivide/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:provider/provider.dart';

class TransactionPage extends StatefulWidget {
  final GSplitFields transaction;

  const TransactionPage({super.key, required this.transaction});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  List<GSplitFields>? transactions;

  GAmountFields get amount => GAmountFieldsData(
        (b) => b
          ..currencyId = transactions?.firstOrNull?.amount.currencyId
          ..amount = transactions?.fold<int>(
              0,
              (previousValue, element) =>
                  previousValue + element.amount.amount),
      );

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      if (widget.transaction.transactionPartGroupId != null) {
        var result = await (await context.read<AppState>().client).execute(
            GsplitFromGroupReq((b) =>
                b.vars..partId = widget.transaction.transactionPartGroupId));
        if (mounted) {
          setState(() {
            transactions = result.data?.splitsByPart.toList();
          });
        }
      } else {
        Navigator.of(context).pop();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme scheme = ColorUtils.getMainScheme(context);
    return Scaffold(
      body: transactions != null
          ? CustomScrollView(
              slivers: [
                const SliverAppBar.large(
                  title: Text('Transaction'),
                ),
                SliverToBoxAdapter(
                  child: Text(
                    context.read<AppState>().user?.id ==
                            transactions?.firstOrNull?.fromUserId
                        ? 'Received'
                        : 'Paid',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: context.read<AppState>().user?.id ==
                                  transactions?.firstOrNull?.fromUserId
                              ? scheme.primary
                              : scheme.error,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Text(
                    amount.getPrettyAbs(context),
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          color: context.read<AppState>().user?.id ==
                                  transactions?.firstOrNull?.fromUserId
                              ? scheme.primary
                              : scheme.error,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Text(
                    'From ${transactions?.firstOrNull?.fromUser.displayName}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.only(top: 20)),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Splits',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(),
                    ),
                  ),
                ),
                SliverList.list(
                  children: [
                    ...(transactions?.map(
                          (transaction) => Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: ListTile(
                              leading: context
                                          .read<AppState>()
                                          .getGroup(transaction.groupId)
                                          ?.isDirectPayment ==
                                      true
                                  ? UserIconWidget(user: transaction.fromUser)
                                  : GroupIconWidget(
                                      group: context
                                          .read<AppState>()
                                          .getGroup(transaction.groupId)!,
                                    ),
                              title: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text:
                                            context.read<AppState>().user?.id ==
                                                    transaction.fromUserId
                                                ? 'Received '
                                                : 'Paid '),
                                    TextSpan(
                                      text: transaction.amount
                                          .getPrettyAbs(context),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              subtitle: context
                                          .read<AppState>()
                                          .getGroup(transaction.groupId)
                                          ?.isDirectPayment ==
                                      true
                                  ? const Text('In Direct Payment')
                                  : Text(
                                      'In Group ${context.read<AppState>().getGroup(transaction.groupId)?.getDisplayName(context.read())}'),
                            ),
                          ),
                        ) ??
                        [])
                  ],
                ),
                if (transactions?.firstOrNull?.note != null)
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
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Text(transactions!.first.note!),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (transactions?.firstOrNull?.imageId != null)
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
                                    .getImageUrl(transactions!.first.imageId!),
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
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
