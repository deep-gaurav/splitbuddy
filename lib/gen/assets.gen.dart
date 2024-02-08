/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class Assets {
  Assets._();

  /// File path: assets/icons/book-svgrepo-com.svg
  static const String iconsBookSvgrepoCom = 'assets/icons/book-svgrepo-com.svg';

  /// File path: assets/icons/car-side-svgrepo-com.svg
  static const String iconsCarSideSvgrepoCom =
      'assets/icons/car-side-svgrepo-com.svg';

  /// File path: assets/icons/cash-money-14744.min.svg
  static const String iconsCashMoney14744Min =
      'assets/icons/cash-money-14744.min.svg';

  /// File path: assets/icons/food-dinner-svgrepo-com.svg
  static const String iconsFoodDinnerSvgrepoCom =
      'assets/icons/food-dinner-svgrepo-com.svg';

  /// File path: assets/icons/house-chimney-floor-svgrepo-com.svg
  static const String iconsHouseChimneyFloorSvgrepoCom =
      'assets/icons/house-chimney-floor-svgrepo-com.svg';

  /// File path: assets/icons/light-bulb-svgrepo-com.svg
  static const String iconsLightBulbSvgrepoCom =
      'assets/icons/light-bulb-svgrepo-com.svg';

  /// File path: assets/icons/movie-svgrepo-com.svg
  static const String iconsMovieSvgrepoCom =
      'assets/icons/movie-svgrepo-com.svg';

  /// File path: assets/icons/movie-ui-basic-multimedia-video-app-svgrepo-com.svg
  static const String iconsMovieUiBasicMultimediaVideoAppSvgrepoCom =
      'assets/icons/movie-ui-basic-multimedia-video-app-svgrepo-com.svg';

  /// File path: assets/icons/noun-money-transfer-6423872.svg
  static const String iconsNounMoneyTransfer6423872 =
      'assets/icons/noun-money-transfer-6423872.svg';

  /// File path: assets/icons/pills-svgrepo-com.svg
  static const String iconsPillsSvgrepoCom =
      'assets/icons/pills-svgrepo-com.svg';

  /// File path: assets/icons/shopping-cart-svgrepo-com.svg
  static const String iconsShoppingCartSvgrepoCom =
      'assets/icons/shopping-cart-svgrepo-com.svg';

  /// File path: assets/icons/sync-svgrepo-com.svg
  static const String iconsSyncSvgrepoCom = 'assets/icons/sync-svgrepo-com.svg';

  /// File path: assets/images/assist.webp
  static const AssetGenImage imagesAssist =
      AssetGenImage('assets/images/assist.webp');

  /// File path: assets/images/welcome.webp
  static const AssetGenImage imagesWelcome =
      AssetGenImage('assets/images/welcome.webp');

  /// List of all assets
  static List<dynamic> get values => [
        iconsBookSvgrepoCom,
        iconsCarSideSvgrepoCom,
        iconsCashMoney14744Min,
        iconsFoodDinnerSvgrepoCom,
        iconsHouseChimneyFloorSvgrepoCom,
        iconsLightBulbSvgrepoCom,
        iconsMovieSvgrepoCom,
        iconsMovieUiBasicMultimediaVideoAppSvgrepoCom,
        iconsNounMoneyTransfer6423872,
        iconsPillsSvgrepoCom,
        iconsShoppingCartSvgrepoCom,
        iconsSyncSvgrepoCom,
        imagesAssist,
        imagesWelcome
      ];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
