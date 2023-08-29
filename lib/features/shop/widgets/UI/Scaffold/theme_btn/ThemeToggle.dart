import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:runner/features/shop/bloc/themeBloc/theme_bloc.dart';

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedToggleSwitch.dual(
        current: context.read<ThemeBloc>().state,
        first: LightTheme(),
        second: DarkTheme(),
        dif: 5.0,
        borderColor: Colors.white,
        borderWidth: 1.0,
        height: 30,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1.5),
          ),
        ],
        onChanged: (b) {
          context
              .read<ThemeBloc>()
              .add(ChangeTheme(context.read<ThemeBloc>().state));
          return Future.delayed(const Duration(milliseconds: 500));
        },
        colorBuilder: (b) => context.read<ThemeBloc>().state.togleColor,
        iconBuilder: (b) => Icon(context.read<ThemeBloc>().state.icon));
  }
}
