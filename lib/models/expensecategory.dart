import 'package:billdivide/gen/assets.gen.dart';
import 'package:collection/collection.dart';

enum Category {
  food(
    categoryId: 'FOOD',
    displayName: 'Food & Dining',
    iconPath: Assets.iconsFoodDinnerSvgrepoCom,
  ),
  utitlity(
    categoryId: 'UTILITY',
    displayName: 'Utilities',
    iconPath: Assets.iconsLightBulbSvgrepoCom,
  ),
  entertainment(
    categoryId: 'ENTERTAINMENT',
    displayName: 'Entertainment',
    iconPath: Assets.iconsMovieUiBasicMultimediaVideoAppSvgrepoCom,
  ),
  transport(
    categoryId: 'TRANSPORT',
    displayName: 'Transport',
    iconPath: Assets.iconsCarSideSvgrepoCom,
  ),
  housing(
    categoryId: 'HOUSING',
    displayName: 'Housing',
    iconPath: Assets.iconsHouseChimneyFloorSvgrepoCom,
  ),
  education(
    categoryId: 'EDUCATION',
    displayName: 'Education',
    iconPath: Assets.iconsBookSvgrepoCom,
  ),
  shopping(
    categoryId: 'SHOPPING',
    displayName: 'Shopping',
    iconPath: Assets.iconsShoppingCartSvgrepoCom,
  ),
  health(
    categoryId: 'HEALTH',
    displayName: 'Health',
    iconPath: Assets.iconsPillsSvgrepoCom,
  ),
  miscellaneous(
    categoryId: 'MISC',
    displayName: 'Miscellaneous',
    iconPath: Assets.iconsSyncSvgrepoCom,
  ),
  ;

  final String categoryId;
  final String displayName;
  final String iconPath;

  const Category({
    required this.categoryId,
    required this.displayName,
    required this.iconPath,
  });

  static Category categoryFromId(String id) =>
      Category.values.firstWhereOrNull((element) => element.categoryId == id) ??
      Category.miscellaneous;
}
