import 'package:flutter/material.dart';

/// Extension on the [Row] class to create a horizontal scrollable [ListView] using [SizedBox].
///
/// This extension provides a simple way to create a horizontal scrollable list
/// using the children from a [Row]. It encapsulates the creation of a [ListView.builder]
/// wrapped in a [SizedBox] with a fixed height, specifically designed for a horizontal layout.
extension RowScrollable on Row {
  /// Creates a horizontal scrollable [ListView] wrapped in a [SizedBox].
  ///
  /// The [controller] parameter can be used to control the scroll position.
  /// The [physics] parameter determines the scrolling behavior.
  /// The [padding] parameter specifies the padding around the [ListView].
  /// The [shrinkWrap] parameter determines whether the [ListView] should shrink-wrap its content.
  ///
  /// Returns:
  /// A [SizedBox] containing a horizontal scrollable [ListView] with the specified attributes.
  SizedBox scrollable({
    ScrollController? controller,
    ScrollPhysics? physics,
    EdgeInsetsGeometry? padding,
    bool? shrinkWrap,
  }) {
    return SizedBox(
      height: 200, // Fixed height for the scrollable row
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        controller: controller,
        physics: physics,
        padding: padding,
        itemBuilder: (context, index) => children[index],
        itemCount: children.length,
        shrinkWrap: shrinkWrap ?? false,
      ),
    );
  }
}
