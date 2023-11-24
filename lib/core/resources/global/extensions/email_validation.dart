/// Extension on [String] class to perform email validation.
///
/// This extension adds an [isValidEmail] method to the [String] class,
/// which allows you to check whether a given string is a valid email address.
extension EmailValidations on String {
  /// Checks if the string is a valid email address.
  ///
  /// Returns:
  /// - `true` if the string is a valid email address.
  /// - `false` if the string is not a valid email address.
  bool isValidEmail() {
    // Use regular expression to perform email validation
    return RegExp(r'^[w-]+(.[w-]+)*@[w-]+(.[w-]+)+$').hasMatch(this);
  }
}
