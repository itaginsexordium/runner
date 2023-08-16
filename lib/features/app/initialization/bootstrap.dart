import 'dart:async';
import 'package:flutter/widgets.dart';

Future<void> bootstrap({
  required Future<Widget> Function() appRunner,
}) async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(await appRunner());
}
