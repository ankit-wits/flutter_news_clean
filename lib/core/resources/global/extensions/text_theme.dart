import 'package:flutter/material.dart';

/// Extension on [BuildContext] providing shortcuts to commonly used theme properties.
///
/// This extension simplifies access to frequently used theme properties by adding
/// getter methods that retrieve theme properties from the current context.
extension ThemeShortcuts on BuildContext {
  /// Returns the [TextTheme] from the current theme.
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Returns the [TextStyle] for small headlines from the current text theme.
  TextStyle? get headlineSmall => textTheme.headlineSmall;

  /// Returns the [TextStyle] for large headlines from the current text theme.
  TextStyle? get headlineLarge => textTheme.headlineLarge;

  TextStyle? get bodyLarge => textTheme.bodyLarge;
  TextStyle? get bodyMedium => textTheme.bodyMedium;
  TextStyle? get bodySmall => textTheme.bodySmall;

  /// Returns the primary color from the current theme.
  Color? get primaryColor => Theme.of(this).primaryColor;
}



// Without extension
// Theme.of(context).textTheme
// With extension
// context.textTheme

