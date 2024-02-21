import 'package:billdivide/extensions/amount_extension.dart';
import 'package:billdivide/extensions/interable_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/graphql/__generated__/queries.req.gql.dart';
import 'package:billdivide/models/expensecategory.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:billdivide/utils/color_utils.dart';
import 'package:billdivide/utils/svg_icons.dart';
import 'package:billdivide/widgets/auto_scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class SpendAnalysis extends StatefulWidget {
  final String? groupId;

  const SpendAnalysis({super.key, this.groupId});

  @override
  State<SpendAnalysis> createState() => _SpendAnalysisState();
}

class _SpendAnalysisState extends State<SpendAnalysis> {
  List<GCategorisedAmountFields> categorisedSpends = [];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var id = context.read<AppState>().user?.id;
      var client = await context.read<AppState>().client;
      var monthStart =
          DateTime.utc(DateTime.now().year, DateTime.now().month, 1)
              .toIso8601String();
      var response = await client.execute(
        GexpenseSummaryCategorisedReq(
          (b) => b.vars
            ..fromTime = monthStart
            ..groupId = widget.groupId,
        ),
      );
      if (mounted) {
        categorisedSpends =
            response.data?.expenseSummaryByCategory.toList() ?? [];
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme scheme = ColorUtils.getMainScheme(context);
    ColorScheme neutralYellow = ColorUtils.getNeutralYellow(context);
    ColorScheme neutralBlue = ColorUtils.getNeutralBlue(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Text(
              'This Month Spends',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            // Row(
            //   children: [
            //     if (user.toReceive.isNotEmpty)
            //       Expanded(
            //           child: AutoScroll(
            //         child: Row(
            //           children: [
            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.end,
            //               children: [
            //                 ...user.toReceive.map(
            //                   (amount) => Text(
            //                     amount.getPrettyAbs(context),
            //                     style: Theme.of(context)
            //                         .textTheme
            //                         .titleLarge
            //                         ?.copyWith(
            //                           fontWeight: FontWeight.bold,
            //                           color: scheme.primary,
            //                         ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             const SizedBox(
            //               width: 10,
            //             ),
            //             Icon(
            //               Icons.call_received,
            //               color: scheme.primary,
            //             ),
            //             const SizedBox(
            //               width: 5,
            //             ),
            //             Text(
            //               'To Receive',
            //               style: TextStyle(color: scheme.primary),
            //             ),
            //           ],
            //         ),
            //       )),
            //     if (user.toPay.isNotEmpty)
            //       Expanded(
            //         child: AutoScroll(
            //           child: Row(
            //             children: [
            //               Column(
            //                 crossAxisAlignment: CrossAxisAlignment.end,
            //                 children: [
            //                   ...user.toPay.map(
            //                     (amount) => Text(
            //                       amount.getPrettyAbs(context),
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .titleLarge
            //                           ?.copyWith(
            //                             fontWeight: FontWeight.bold,
            //                             color: scheme.error,
            //                           ),
            //                     ),
            //                   )
            //                 ],
            //               ),
            //               const SizedBox(
            //                 width: 10,
            //               ),
            //               Icon(
            //                 Icons.call_made,
            //                 color: scheme.error,
            //               ),
            //               const SizedBox(
            //                 width: 5,
            //               ),
            //               Text(
            //                 'To Pay',
            //                 style: TextStyle(
            //                   color: scheme.error,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       )
            //   ],
            // ),
            const Divider(),
            ...categorisedSpends
                .where((element) => element.amount.amount != 0)
                .map<Widget>(
              (element) {
                var category = Category.categoryFromId(element.category);

                return Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: FittedBox(
                          child: SvgIcon(asset: category.iconPath),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        category.displayName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          element.amount.getPretty(context),
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                );
              },
            ).intersperse(
              const SizedBox(
                height: 10,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
