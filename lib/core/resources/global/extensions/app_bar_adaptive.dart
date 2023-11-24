import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Extension on the [AppBar] class to create adaptive app bar widgets.
///
/// This extension adds methods for creating platform-specific app bar widgets
/// using [CupertinoNavigationBar] for iOS and [AppBar] for Android. The methods
/// provide consistent parameter names and facilitate platform-specific app bar creation.
extension AppBarAdaptive on AppBar {
  /// Creates an adaptive app bar widget for iOS.
  ///
  /// Returns a [CupertinoNavigationBar] widget with properties set to match
  /// the corresponding properties of the [AppBar] class. This method is suitable
  /// for maintaining design consistency across iOS devices.
  PreferredSizeWidget onIOS() {
    return CupertinoNavigationBar(
      key: key,
      middle: title,
      leading: leading,
      backgroundColor: backgroundColor,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: actions ?? [],
      ),
    );
  }

  /// Creates an adaptive app bar widget for Android.
  ///
  /// Returns an [AppBar] widget with properties set to match the corresponding
  /// properties of the [AppBar] class. This method is suitable for maintaining
  /// design consistency across Android devices.
  PreferredSizeWidget onAndroid() {
    return AppBar(
      title: title,
      actions: actions,
      leading: leading,
      actionsIconTheme: actionsIconTheme,
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: automaticallyImplyLeading,
      bottom: bottom,
      bottomOpacity: bottomOpacity,
      centerTitle: centerTitle,
      clipBehavior: clipBehavior,
      elevation: elevation,
      excludeHeaderSemantics: excludeHeaderSemantics,
      flexibleSpace: flexibleSpace,
      forceMaterialTransparency: forceMaterialTransparency,
      foregroundColor: foregroundColor,
      iconTheme: iconTheme,
      key: key,
      leadingWidth: leadingWidth,
      notificationPredicate: notificationPredicate,
      primary: primary,
      scrolledUnderElevation: scrolledUnderElevation,
      shadowColor: shadowColor,
      shape: shape,
      surfaceTintColor: surfaceTintColor,
      systemOverlayStyle: systemOverlayStyle,
      titleSpacing: titleSpacing,
      titleTextStyle: titleTextStyle,
      toolbarHeight: toolbarHeight,
      toolbarOpacity: toolbarOpacity,
      toolbarTextStyle: toolbarTextStyle,
    );
  }
}
