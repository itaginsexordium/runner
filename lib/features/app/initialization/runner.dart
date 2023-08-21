import 'package:flutter/material.dart';
import 'package:runner/features/app/widgets/dependency_scopes/core_dependecies_scope.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'platform_initializer/initialization_stub.dart'
//     if (dart.library.io) 'platform_initializer/initialization_vm.dart'
//     if (dart.library.html) 'platform_initializer/initialization_js.dart'
    // as platform_runner;

import '../app.dart';

class Runner {
  static Future<void> run(AppEnvironment appEnvironment) {
    return bootstrap(
      appEnvironment: appEnvironment,
      appRunner: () => _appRunner(),
    );
  }

  static Future<Widget> _appRunner() async {
    // setPathUrlStrategy();

    final sharedPreferences = await SharedPreferences.getInstance();

    return CoreDependenciesScope(
        sharedPreferences: sharedPreferences,
        child: const AppContext());
  }
}
