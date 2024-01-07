import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcon extends StatelessWidget {
  final String asset;
  final double? size;

  const SvgIcon({super.key, required this.asset, this.size});

  @override
  Widget build(BuildContext context) {
    var theme = IconTheme.of(context);
    return SvgPicture.asset(
      asset,
      width: size ?? theme.size,
      color: theme.color,
    );
  }
}

class SvgIcons {
  static const String moneyTransfer =
      'assets/icons/noun-money-transfer-6423872.svg';
}
