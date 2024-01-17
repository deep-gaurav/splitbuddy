import 'dart:math';

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

  static Color generateColorWithLuminosity(
      double minLuminosity, double maxLuminosity, int seed) {
    final random = Random(seed);

    // Generate random RGB values
    final red = random.nextInt(256);
    final green = random.nextInt(256);
    final blue = random.nextInt(256);

    // Calculate luminosity
    final luminosity = 0.299 * red + 0.587 * green + 0.114 * blue;

    // Calculate desired luminosity within the specified range
    final desiredLuminosity =
        min(max(minLuminosity, luminosity), maxLuminosity);

    // Calculate adjustment factor based on desired and current luminosity
    final adjustment = desiredLuminosity / luminosity;

    // Apply adjustment to RGB values
    final adjustedRed = (red * adjustment).round().clamp(0, 255);
    final adjustedGreen = (green * adjustment).round().clamp(0, 255);
    final adjustedBlue = (blue * adjustment).round().clamp(0, 255);

    return Color.fromARGB(255, adjustedRed, adjustedGreen, adjustedBlue);
  }
}
