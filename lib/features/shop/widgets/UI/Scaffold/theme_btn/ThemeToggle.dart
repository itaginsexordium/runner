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
    var bloc = context.read<ThemeBloc>();
    return BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
      return AnimatedToggleSwitch.dual(
        loading: false,
          current: bloc.state,
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
            bloc.add(const ChangeTheme());
            return Future.delayed(const Duration(milliseconds: 300));
          },
          colorBuilder: (b) => bloc.state.togleColor,
          iconBuilder: (b) => Icon(bloc.state.icon));
    });
  }
}
