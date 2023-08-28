part of 'theme_bloc.dart';

@immutable
sealed class ThemeEvent extends Equatable {
  const ThemeEvent();
}

final class ChangeTheme extends ThemeEvent {
  const ChangeTheme(this.index);

  final int index;
  @override
  List<Object?> get props => [index];
}
