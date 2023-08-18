import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:l/l.dart';
import 'package:runner/features/app/app.dart';

void main() => l.capture(() {
      runZonedGuarded<void>(() {
        const debugInstrumentsEnv = bool.fromEnvironment('debugInstruments');
        // вид билда приложения
        const buildType = !kReleaseMode || debugInstrumentsEnv
            ? BuildType.debug
            : BuildType.release;

        const env = AppEnvironment(
            buildType: buildType,
            debugOptions: DebugOptions(
              debugShowCheckedModeBanner: false,
            ),
            debugPaintOptions: DebugPaintOptions(),
            enableBlocLogs: true,
            enableRoutingLogs: true,
            enableDioLogs: true,
            gRPCServerUrl: '',
            dynamicLinkPattern: '',
            targetLinkPattern: '');

        Runner.run(env);
      }, l.e);
    });
