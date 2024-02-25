import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:flutter/material.dart';

GExpenseBasic getDemoExpense = GExpenseBasicData(
  (b) => b
    ..title = 'Loading..'
    ..amount = (GExpenseBasicData_amountBuilder()
      ..amount = 0
      ..currencyId = 'USD')
    ..category = 'MISC'
    ..createdAt = DateTime.now().toIso8601String()
    ..creatorId = ''
    ..id = ''
    ..transactionAt = DateTime.now().toIso8601String()
    ..updatedAt = DateTime.now().toIso8601String(),
);

const Gradient kShimmerGradientLight = LinearGradient(
  colors: [
    Color(0xFFCCCCCC), // Light mode color
    Color(0xFFE0E0E0), // Light mode color
    Color(0xFFCCCCCC),
  ],
  stops: [
    0.1,
    0.3,
    0.4,
  ],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);

const Gradient kShimmerGradientDark = LinearGradient(
  colors: [
    Color(0xFF333333), // Dark mode color
    Color(0xFF444444), // Dark mode color
    Color(0xFF333333), // Dark mode color
  ],
  stops: [
    0.1,
    0.3,
    0.4,
  ],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);
