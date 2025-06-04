import 'package:billdivide/extensions/amount_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/graphql/__generated__/queries.req.gql.dart';
import 'package:billdivide/mixins/notification_refresher.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:billdivide/utils/color_utils.dart';
import 'package:billdivide/utils/demo_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class MonthlySpendingBreakdown extends StatefulWidget {
  final String? groupId;

  const MonthlySpendingBreakdown({super.key, this.groupId});

  @override
  State<MonthlySpendingBreakdown> createState() =>
      _MonthlySpendingBreakdownState();
}

class _MonthlySpendingBreakdownState extends State<MonthlySpendingBreakdown>
    with WidgetsBindingObserver, NotificationRefresher {
  List<MonthlySpendData> monthlySpends = [];
  bool isLoading = true;
  double totalSinceBeginning = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _fetchMonthlyData();
    });
  }

  Future<void> _fetchMonthlyData() async {
    if (!mounted) return;

    setState(() {
      isLoading = true;
      monthlySpends.clear();
    });

    var client = await context.read<AppState>().client;
    var defaultCurrency = context.read<AppState>().defaultCurrency;

    if (defaultCurrency == null) return;

    // First, get total since beginning to know when to stop
    var beginning =
        DateTime.fromMillisecondsSinceEpoch(0).toUtc().toIso8601String();
    var totalResponse = await client.executeCached(
      GexpenseSummaryCategorisedReq(
        (b) => b.vars
          ..fromTime = beginning
          ..groupId = widget.groupId,
      ),
    );

    await for (var response in totalResponse) {
      if (response.data != null) {
        totalSinceBeginning = response.data!.expenseSummaryByCategory
            .fold<double>(
                0, (sum, item) => sum + item.amount.amount.toDouble());
        break;
      }
    }

    // Now fetch month by month
    List<MonthlySpendData> tempMonthlySpends = [];
    double cumulativeAmount = 0;
    int monthsBack = 0;

    while (cumulativeAmount < totalSinceBeginning && monthsBack < 24) {
      // Limit to 24 months
      DateTime currentDate = DateTime.now();
      DateTime monthStart = DateTime(currentDate.year, currentDate.month, 1);

      for (int i = 0; i < monthsBack; i++) {
        monthStart = monthStart.subtract(const Duration(days: 2));
        monthStart = DateTime(monthStart.year, monthStart.month, 1);
      }

      // Get cumulative data from this month start
      var monthResponse = await client.executeCached(
        GexpenseSummaryCategorisedReq(
          (b) => b.vars
            ..fromTime = monthStart.toUtc().toIso8601String()
            ..groupId = widget.groupId,
        ),
      );

      await for (var response in monthResponse) {
        if (response.data != null) {
          var tillthismonthspending = response.data!.expenseSummaryByCategory
              .fold<double>(0, (sum, item) {
            return sum +
                item.amount
                    .convertTo(
                        defaultCurrency.id, context.read<AppState>().currencies)
                    .amount
                    .toDouble();
          });

          var thismonthspending = tillthismonthspending - cumulativeAmount;
          tempMonthlySpends.add(MonthlySpendData(
            month: monthStart,
            amount: thismonthspending,
          ));
          cumulativeAmount += thismonthspending;
          monthsBack += 1;
          break;
        }
      }
    }

    // Reverse to show oldest to newest
    tempMonthlySpends = tempMonthlySpends.reversed.toList();

    if (mounted) {
      setState(() {
        monthlySpends = tempMonthlySpends;
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Text(
              'Monthly Spending Trend',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const Divider(),
            if (isLoading)
              _buildShimmerContent()
            else if (monthlySpends.isEmpty)
              const Padding(
                padding: EdgeInsets.all(40),
                child: Text('No spending data available'),
              )
            else
              SizedBox(
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(
                        show: true,
                        drawVerticalLine: false,
                        horizontalInterval: _calculateInterval(),
                        getDrawingHorizontalLine: (value) {
                          return FlLine(
                            color: Theme.of(context)
                                .colorScheme
                                .outline
                                .withOpacity(0.3),
                            strokeWidth: 1,
                          );
                        },
                      ),
                      titlesData: FlTitlesData(
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 60,
                            getTitlesWidget: (value, meta) {
                              var defaultCurrency =
                                  context.read<AppState>().defaultCurrency;
                              if (defaultCurrency == null)
                                return const Text('');

                              return Builder(
                                  builder: (context) => Text(
                                        GAmountFieldsData((b) => b
                                              ..amount = value.toInt()
                                              ..currencyId = defaultCurrency.id)
                                            .getPretty(context),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ));
                            },
                          ),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 40,
                            interval: 1,
                            getTitlesWidget: (value, meta) {
                              if (value.toInt() >= 0 &&
                                  value.toInt() < monthlySpends.length) {
                                var month = monthlySpends[value.toInt()].month;
                                return Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    '${_getMonthAbbr(month.month)}\n${month.year}',
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                    textAlign: TextAlign.center,
                                  ),
                                );
                              }
                              return const Text('');
                            },
                          ),
                        ),
                        topTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                        rightTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                      ),
                      borderData: FlBorderData(
                        show: true,
                        border: Border(
                          left: BorderSide(
                            color: Theme.of(context)
                                .colorScheme
                                .outline
                                .withOpacity(0.3),
                          ),
                          bottom: BorderSide(
                            color: Theme.of(context)
                                .colorScheme
                                .outline
                                .withOpacity(0.3),
                          ),
                        ),
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          spots: monthlySpends.asMap().entries.map((entry) {
                            return FlSpot(
                                entry.key.toDouble(), entry.value.amount);
                          }).toList(),
                          isCurved: true,
                          color: Theme.of(context).colorScheme.primary,
                          barWidth: 3,
                          isStrokeCapRound: true,
                          dotData: FlDotData(
                            show: true,
                            getDotPainter: (spot, percent, barData, index) {
                              return FlDotCirclePainter(
                                radius: 4,
                                color: Theme.of(context).colorScheme.primary,
                                strokeWidth: 2,
                                strokeColor:
                                    Theme.of(context).colorScheme.surface,
                              );
                            },
                          ),
                          belowBarData: BarAreaData(
                            show: true,
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.1),
                          ),
                        ),
                      ],
                      lineTouchData: LineTouchData(
                        touchTooltipData: LineTouchTooltipData(
                          getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
                            return touchedBarSpots.map((barSpot) {
                              final flSpot = barSpot;
                              if (flSpot.x.toInt() >= 0 &&
                                  flSpot.x.toInt() < monthlySpends.length) {
                                var monthData = monthlySpends[flSpot.x.toInt()];
                                var defaultCurrency =
                                    context.read<AppState>().defaultCurrency;
                                if (defaultCurrency == null) return null;

                                return LineTooltipItem(
                                  '${_getMonthName(monthData.month.month)} ${monthData.month.year}\n${GAmountFieldsData((b) => b
                                    ..amount = monthData.amount.toInt()
                                    ..currencyId = defaultCurrency.id).getPrettyAbs(context)}',
                                  TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              }
                              return null;
                            }).toList();
                          },
                          tooltipBgColor: Theme.of(context).colorScheme.surface,
                          tooltipBorder: BorderSide(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  double _calculateInterval() {
    if (monthlySpends.isEmpty) return 1;

    double maxAmount =
        monthlySpends.map((e) => e.amount).reduce((a, b) => a > b ? a : b);

    if (maxAmount <= 100) return 20;
    if (maxAmount <= 500) return 100;
    if (maxAmount <= 1000) return 200;
    if (maxAmount <= 5000) return 1000;
    if (maxAmount <= 10000) return 2000;
    return (maxAmount / 5).roundToDouble();
  }

  String _getMonthAbbr(int month) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    if (month >= 1 && month <= 12) {
      return months[month - 1];
    }
    return '';
  }

  String _getMonthName(int month) {
    const months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    if (month >= 1 && month <= 12) {
      return months[month - 1];
    }
    return '';
  }

  Widget _buildShimmerContent() {
    return Shimmer(
      gradient: switch (Theme.of(context).brightness) {
        Brightness.dark => kShimmerGradientDark,
        Brightness.light => kShimmerGradientLight,
      },
      child: Container(
        height: 300,
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text('Loading monthly data...'),
        ),
      ),
    );
  }

  @override
  void onNotificationRefresh() {
    _fetchMonthlyData();
  }
}

class MonthlySpendData {
  final DateTime month;
  final double amount;

  MonthlySpendData({
    required this.month,
    required this.amount,
  });
}
