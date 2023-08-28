part of 'theme_bloc.dart';

@immutable
sealed class ThemeState extends Equatable {
  const ThemeState();
}

class LightTheme extends ThemeState {
  @override
  List<Object?> get props => [];
}

class DarkTheme extends ThemeState {
  @override
  List<Object?> get props => [];
}
