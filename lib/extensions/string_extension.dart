extension ConcatOrNullExtension on String? {
  String? concatOrNull(String other) => this == null ? null : (this! + other);
}
