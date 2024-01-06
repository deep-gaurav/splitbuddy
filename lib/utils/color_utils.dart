import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

class ColorUtils {
  static ColorScheme getMainScheme(BuildContext context) =>
      ColorScheme.fromSeed(
              seedColor: Colors.green,
              error: Colors.red,
              brightness: Theme.of(context).brightness)
          .harmonized();
  static ColorScheme getNeutralYellow(BuildContext context) =>
      ColorScheme.fromSeed(
              seedColor: Colors.yellow,
              brightness: Theme.of(context).brightness)
          .harmonized();
  static ColorScheme getNeutralBlue(BuildContext context) =>
      ColorScheme.fromSeed(
              seedColor: Colors.blue, brightness: Theme.of(context).brightness)
          .harmonized();
}
