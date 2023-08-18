import 'dart:async';
import 'package:flutter/widgets.dart';

import '../app.dart';

Future<void> bootstrap({
  required AppEnvironment appEnvironment,
  required Future<Widget> Function() appRunner,
}) async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(await appRunner());
}
