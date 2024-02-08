import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageHelper {
  final FlutterSecureStorage _flutterSecureStorage = const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );

  static final SecureStorageHelper _instance = SecureStorageHelper._();

  SecureStorageHelper._();

  factory SecureStorageHelper.getInstance() => _instance;

  Future<String?> getAccessToken() async {
    return _flutterSecureStorage.read(key: 'access_token');
  }

  Future<String?> getRefreshToken() async {
    return _flutterSecureStorage.read(key: 'refresh_token');
  }

  Future<void> storeTokens(
      {required String accessToken, required String? refreshToken}) async {
    await _flutterSecureStorage.write(key: 'access_token', value: accessToken);
    await _flutterSecureStorage.write(
        key: 'refresh_token', value: refreshToken);
  }

  Future<void> resetTokens() async {
    await _flutterSecureStorage.deleteAll();
  }

  Future<String?> getNotificationPreference() async {
    return await _flutterSecureStorage.read(key: 'notificationPreference');
  }

  Future<void> setNotificationPreference(String preference) async {
    await _flutterSecureStorage.write(
      key: 'notificationPreference',
      value: preference,
    );
  }

  Future<void> saveThemeColor(Color? color) async {
    if (color != null) {
      await _flutterSecureStorage.write(
        key: 'themeColor',
        value: color.value.toString(),
      );
    } else {
      _flutterSecureStorage.delete(key: 'themeColor');
    }
  }

  Future<void> saveThemeMode(ThemeMode mode) async {
    await _flutterSecureStorage.write(
      key: 'themeMode',
      value: mode.index.toString(),
    );
  }

  Future<ThemeMode> loadThemeMode() async {
    final int themeColor = int.tryParse(
            await _flutterSecureStorage.read(key: 'themeMode') ?? '') ??
        0;
    return ThemeMode.values.elementAtOrNull(themeColor) ?? ThemeMode.system;
  }

  Future<Color?> loadThemeColor() async {
    final int? themeColor =
        int.tryParse(await _flutterSecureStorage.read(key: 'themeColor') ?? '');
    if (themeColor != null) {
      try {
        return Color(themeColor);
      } catch (e) {
        return null;
      }
    }
    return null;
  }
}
