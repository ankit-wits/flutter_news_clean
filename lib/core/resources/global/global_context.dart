import 'package:flutter/material.dart';

class AppContext {
  static late BuildContext _appContext;

  static void setContext(BuildContext context) {
    _appContext = context;
  }

  static BuildContext getContext() {
    return _appContext;
  }
}
