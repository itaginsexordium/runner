import 'package:flutter/material.dart';
import '../app.dart';

class Runner {
  static Future<void> run() {
    return bootstrap(
      appRunner: () => _appRunner(),
    );
  }

  static Future<Widget> _appRunner() async {
    return const AppContext();
  }
}
