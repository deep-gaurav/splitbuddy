extension PrettyNumFixed on num {
  String toPrettyFixed(int decimals) {
    if (toInt() == this) {
      return toInt().toString();
    } else {
      return toStringAsFixed(decimals);
    }
  }
}
