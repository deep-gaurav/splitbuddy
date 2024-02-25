import 'package:flutter/material.dart';

extension DateTimeExtension on DateTime {
  DateTime replaceTimeWith(TimeOfDay time) {
    return DateTime(
      year,
      month,
      day,
      time.hour,
      time.minute,
    );
  }
}
