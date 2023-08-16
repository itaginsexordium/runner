import 'dart:async';

import 'dart:async';

import 'package:l/l.dart';
import 'package:runner/features/app/initialization/runner.dart';

void main() => l.capture(() {
      runZonedGuarded<void>(() {
        const debugInstrumentsEnv = bool.fromEnvironment('debugInstruments');
        // const buildType = !kReleaseMode || debugInstrumentsEnv
        // ? BuildType.debug
        // : BuildType.release;

        Runner.run();
      }, l.e);
    });
