import 'package:billdivide/extensions/amount_extension.dart';
import 'package:billdivide/extensions/interable_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/graphql/__generated__/queries.req.gql.dart';
import 'package:billdivide/mixins/notification_refresher.dart';
import 'package:billdivide/models/expensecategory.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:billdivide/utils/color_utils.dart';
import 'package:billdivide/utils/svg_icons.dart';
import 'package:billdivide/widgets/auto_scroll.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:provider/provider.dart';

enum SpendAnalysisType { pieGraph, table, all }

class SpendAnalysis extends StatefulWidget {
  final String? groupId;
  final SpendAnalysisType type;

  const SpendAnalysis(
      {super.key, this.groupId, this.type = SpendAnalysisType.all});

  @override
  State<SpendAnalysis> createState() => _SpendAnalysisState();
}

class _SpendAnalysisState extends State<SpendAnalysis>
    with WidgetsBindingObserver, NotificationRefresher {
  List<GCategorisedAmountFields> categorisedSpends = [];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      refresh();
    });
    super.initState();
  }

  refresh() async {
    if (!mounted) {
      return;
    }
    var client = await context.read<AppState>().client;
    var monthStart = DateTime.utc(DateTime.now().year, DateTime.now().month, 1)
        .toIso8601String();
    var response = await client.execute(
      GexpenseSummaryCategorisedReq(
        (b) => b.vars
          ..fromTime = monthStart
          ..groupId = widget.groupId,
      ),
    );
    if (mounted) {
      setState(() {
        categorisedSpends =
            response.data?.expenseSummaryByCategory.toList() ?? [];
      });
    }
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
            const Divider(),
            if (categorisedSpends
                .where((element) => element.amount.amount != 0)
                .isNotEmpty)
              switch (widget.type) {
                SpendAnalysisType.pieGraph =>
                  CategorisedSpendChart(categorisedSpends: categorisedSpends),
                SpendAnalysisType.table => SpendCategoryAmountTable(
                    categorisedSpends: categorisedSpends),
                SpendAnalysisType.all => ExpandableCarousel(
                    items: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: CategorisedSpendChart(
                            categorisedSpends: categorisedSpends),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: SpendCategoryAmountTable(
                            categorisedSpends: categorisedSpends),
                      )
                    ],
                    options: CarouselOptions(
                      viewportFraction: 1,
                      slideIndicator: CircularSlideIndicator(
                        padding: EdgeInsets.zero,
                        currentIndicatorColor: switch (
                            Theme.of(context).brightness) {
                          Brightness.dark => null,
                          Brightness.light =>
                            Theme.of(context).colorScheme.primary,
                        },
                        indicatorBackgroundColor: switch (
                            Theme.of(context).brightness) {
                          Brightness.dark => null,
                          Brightness.light =>
                            Theme.of(context).colorScheme.primaryContainer,
                        },
                      ),
                    ),
                  ),
              }
            else
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'No expenses this month',
                      style: TextStyle(
                        color: neutralBlue.primary,
                      ),
                    ),
                  ],
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

  @override
  void onNotificationRefresh() {
    refresh();
  }
}

class SpendCategoryAmountTable extends StatelessWidget {
  const SpendCategoryAmountTable({
    super.key,
    required this.categorisedSpends,
  });

  final List<GCategorisedAmountFields> categorisedSpends;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
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
        )
      ],
    );
  }
}

class CategorisedSpendChart extends StatefulWidget {
  const CategorisedSpendChart({
    super.key,
    required this.categorisedSpends,
  });

  final List<GCategorisedAmountFields> categorisedSpends;

  @override
  State<CategorisedSpendChart> createState() => _CategorisedSpendChartState();
}

class _CategorisedSpendChartState extends State<CategorisedSpendChart> {
  String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    var defaultCurrency = context
        .select<AppState, GCurrencyFields?>((state) => state.defaultCurrency);
    if (defaultCurrency == null) {
      return const Text('Loading..');
    }
    Set<Category> categories = widget.categorisedSpends
        .where((element) => element.amount.amount != 0)
        .map((e) => Category.categoryFromId(e.category))
        .toSet();

    List<(Category, GAmountFields)> categorizedSpent = categories
        .map((category) => (
              category,
              GAmountFieldsData(
                (b) => b
                  ..currencyId = context.read<AppState>().defaultCurrency!.id
                  ..amount = widget.categorisedSpends
                      .where(
                          (element) => element.category == category.categoryId)
                      .fold<int>(
                          0,
                          (previousValue, element) =>
                              previousValue +
                              element.amount
                                  .convertTo(
                                      context
                                          .read<AppState>()
                                          .defaultCurrency!
                                          .id,
                                      context.read<AppState>().currencies)
                                  .amount),
              )
            ))
        .toList();
    return Row(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: Stack(
              children: [
                PieChart(
                  PieChartData(
                    pieTouchData: PieTouchData(
                      touchCallback: (event, pieTouchResponse) {
                        setState(() {
                          if (!event.isInterestedForInteractions ||
                              pieTouchResponse == null ||
                              pieTouchResponse.touchedSection == null) {
                            selectedCategory = null;
                            return;
                          }
                          if (pieTouchResponse
                                      .touchedSection!.touchedSectionIndex >=
                                  0 &&
                              pieTouchResponse
                                      .touchedSection!.touchedSectionIndex <
                                  categorizedSpent.length) {
                            selectedCategory = categorizedSpent[pieTouchResponse
                                    .touchedSection!.touchedSectionIndex]
                                .$1
                                .categoryId;
                          } else {
                            selectedCategory = null;
                          }
                        });
                      },
                    ),
                    sections: categorizedSpent
                        .map(
                          (e) => PieChartSectionData(
                            radius:
                                selectedCategory == e.$1.categoryId ? 50 : 40,
                            showTitle: false,
                            title: e.$1.displayName,
                            color: e.$1.color,
                            value: e.$2.amount.toDouble(),
                          ),
                        )
                        .toList(),
                  ),
                ),
                Positioned.fill(
                    child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (selectedCategory != null)
                        SvgIcon(
                            asset: Category.categoryFromId(selectedCategory!)
                                .iconPath),
                      Text(
                        selectedCategory == null
                            ? 'Total'
                            : Category.categoryFromId(selectedCategory!)
                                .displayName,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      Text(
                        GAmountFieldsData((b) => b
                              ..amount = widget.categorisedSpends
                                  .where((element) =>
                                      selectedCategory == null ||
                                      element.category == selectedCategory)
                                  .fold<int>(
                                      0,
                                      (previousValue, element) =>
                                          previousValue +
                                          element.amount
                                              .convertTo(
                                                  context
                                                      .read<AppState>()
                                                      .defaultCurrency!
                                                      .id,
                                                  context
                                                      .read<AppState>()
                                                      .currencies)
                                              .amount)
                              ..currencyId =
                                  context.read<AppState>().defaultCurrency!.id)
                            .getPrettyAbs(context),
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...categories.map((e) => Row(
                  children: [
                    SizedBox(
                      width: 14,
                      height: 14,
                      child: SvgIcon(
                        asset: e.iconPath,
                        color: e.color,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      e.displayName,
                      style: Theme.of(context).textTheme.labelSmall,
                    )
                  ],
                ))
          ],
        ),
      ],
    );
  }
}
