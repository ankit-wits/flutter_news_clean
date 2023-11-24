import 'package:flutter/material.dart';

import '../global_context.dart';

extension TextToSnack on String {
  void textToSnack() {
    final snackBar = SnackBar(
      content: Text(this),
    );
    /*
   Finds the ScaffoldMessenger in the widget tree
   and uses it to show a SnackBar.
   */
    ScaffoldMessenger.of(AppContext.getContext()).showSnackBar(snackBar);
  }
}
