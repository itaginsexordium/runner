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
  List<Object?> get props => [];
  
  @override
  Color get togleColor => Colors.black38;
}

class DarkTheme extends ThemeState {
    @override
      IconData get icon => Icons.nightlight_outlined;
  @override
  List<Object?> get props => [];
  
  @override
  Color get togleColor => Colors.white38;
}
