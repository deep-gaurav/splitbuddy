import 'package:billdivide/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcon extends StatelessWidget {
  final String asset;
  final double? size;
  final Color? color;

  const SvgIcon({super.key, required this.asset, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    var theme = IconTheme.of(context);
    return SvgPicture.asset(
      asset,
      width: size ?? theme.size,
      color: color ?? theme.color,
    );
  }
}
