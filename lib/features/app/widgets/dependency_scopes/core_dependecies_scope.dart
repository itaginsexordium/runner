import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:runner/features/shop/bloc/navigatorBloc/navigator_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CoreDependenciesScope extends StatelessWidget {
  const CoreDependenciesScope(
      {required this.child, required this.sharedPreferences, super.key});

  final SharedPreferences sharedPreferences;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<SharedPreferences>.value(
      value: sharedPreferences,
      // child: RepoDependenciesScope(
      child: BlocScope(
        child: child,
      ),
    );
  }
}

// class RepoDependenciesScope extends StatelessWidget {
//   const RepoDependenciesScope({super.key, required this.child});
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => RepoDependencies(),
//       child: child,
//     );
//   }
// }

class BlocScope extends StatelessWidget {
  const BlocScope({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [BlocProvider(create: (_) => NavigatorBloc())],
        child: child);
  }
}
