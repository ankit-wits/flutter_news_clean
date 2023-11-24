extension DateTimeFormatting on DateTime {
  /// Converts the [DateTime] instance to a formatted string.
  ///
  /// The resulting string will have the format "yyyy-MM-dd".
  ///
  /// Returns:
  /// A formatted string representation of the date in "yyyy-MM-dd" format.
  String toFormattedString() {
    return "$year-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}";
  }
}
