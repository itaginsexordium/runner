part of 'theme_bloc.dart';

@immutable
sealed class ThemeState extends Equatable {
  IconData get icon;
  Color get togleColor;
  const ThemeState();
}

class LightTheme extends ThemeState {
  @override
  IconData get icon => Icons.light_mode;
  @override
  Color get togleColor => Colors.black38;
  @override
  List<Object?> get props => [];
}

class DarkTheme extends ThemeState {
  @override
  IconData get icon => Icons.nightlight_outlined;
  @override
  Color get togleColor => Colors.white38;
  @override
  List<Object?> get props => [];
}
