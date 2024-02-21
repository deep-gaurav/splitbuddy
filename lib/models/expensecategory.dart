import 'package:billdivide/gen/assets.gen.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

enum Category {
  food(
    categoryId: 'FOOD',
    displayName: 'Food & Dining',
    iconPath: Assets.iconsFoodDinnerSvgrepoCom,
    color: Colors.green,
  ),
  utitlity(
    categoryId: 'UTILITY',
    displayName: 'Utilities',
    iconPath: Assets.iconsLightBulbSvgrepoCom,
    color: Colors.yellow,
  ),
  entertainment(
    categoryId: 'ENTERTAINMENT',
    displayName: 'Entertainment',
    iconPath: Assets.iconsMovieUiBasicMultimediaVideoAppSvgrepoCom,
    color: Colors.purple,
  ),
  transport(
    categoryId: 'TRANSPORT',
    displayName: 'Transport',
    iconPath: Assets.iconsCarSideSvgrepoCom,
    color: Colors.blueGrey,
  ),
  housing(
    categoryId: 'HOUSING',
    displayName: 'Housing',
    iconPath: Assets.iconsHouseChimneyFloorSvgrepoCom,
    color: Colors.brown,
  ),
  education(
    categoryId: 'EDUCATION',
    displayName: 'Education',
    iconPath: Assets.iconsBookSvgrepoCom,
    color: Colors.orange,
  ),
  shopping(
    categoryId: 'SHOPPING',
    displayName: 'Shopping',
    iconPath: Assets.iconsShoppingCartSvgrepoCom,
    color: Colors.pink,
  ),
  health(
    categoryId: 'HEALTH',
    displayName: 'Health',
    iconPath: Assets.iconsPillsSvgrepoCom,
    color: Colors.red,
  ),
  miscellaneous(
    categoryId: 'MISC',
    displayName: 'Miscellaneous',
    iconPath: Assets.iconsSyncSvgrepoCom,
    color: Colors.grey,
  ),
  ;

  final String categoryId;
  final String displayName;
  final String iconPath;
  final Color color;

  const Category({
    required this.categoryId,
    required this.displayName,
    required this.iconPath,
    required this.color,
  });

  static Category categoryFromId(String id) =>
      Category.values.firstWhereOrNull((element) => element.categoryId == id) ??
      Category.miscellaneous;
}
