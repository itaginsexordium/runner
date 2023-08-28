import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(DarkTheme()) {
    on<ChangeTheme>(_changeTheme);
  }

  Future<void> _changeTheme(ChangeTheme event, Emitter<ThemeState> emit) async {
    switch (event.index) {
      case 0:
        emit(LightTheme());
        break;
      case 1:
        emit(DarkTheme());
        break;
    }
  }
}
