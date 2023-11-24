import 'package:flutter/material.dart';

/// Extension on the [Column] class to create a scrollable [ListView] from the children.
///
/// This extension adds a method to the [Column] class that converts its children into
/// a scrollable [ListView.builder] widget. This makes it easy to create a scrollable list
/// of items using the same children from the original [Column].
extension ColumnScrollable on Column {
  /// Creates a scrollable [ListView] using the children of the [Column].
  ///
  /// The [controller] parameter can be used to control the scroll position.
  /// The [physics] parameter determines the scrolling behavior.
  /// The [padding] parameter specifies the padding around the [ListView].
  ///
  /// Returns:
  /// A [ListView.builder] widget with the specified attributes and children from the [Column].
  ListView scrollable(
      {ScrollController? controller,
      ScrollPhysics? physics,
      EdgeInsetsGeometry? padding,
      bool? shrinkWrap}) {
    return ListView.builder(
      shrinkWrap: shrinkWrap ?? false,
      controller: controller,
      physics: physics,
      padding: padding,
      itemCount: children.length,
      itemBuilder: (context, index) => children[index],
    );
  }
}
