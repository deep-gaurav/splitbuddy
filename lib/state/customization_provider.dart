import 'package:billdivide/auth/secure_storage.dart';
import 'package:billdivide/gen/assets.gen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Customization extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  Color? themeColor;

  Customization() {
    SecureStorageHelper.getInstance().loadThemeColor().then((value) {
      themeColor = value;
      notifyListeners();
    });
    SecureStorageHelper.getInstance().loadThemeMode().then((value) {
      themeMode = value;
      notifyListeners();
    });
  }

  changeThemeMode(ThemeMode mode) {
    themeMode = mode;
    SecureStorageHelper.getInstance().saveThemeMode(mode);
    notifyListeners();
  }

  changeColor(Color? color) {
    themeColor = color;
    SecureStorageHelper.getInstance().saveThemeColor(color);
    notifyListeners();
  }
}

extension ThemeModeExtension on ThemeMode {
  String get iconPath => switch (this) {
        ThemeMode.system => Assets.iconsNightModeSvgrepoCom,
        ThemeMode.light => Assets.iconsSunSvgrepoCom,
        ThemeMode.dark => Assets.iconsMoonSvgrepoCom,
      };

  String get displayName => switch (this) {
        ThemeMode.system => 'System',
        ThemeMode.light => 'Light',
        ThemeMode.dark => 'Dark',
      };
}
