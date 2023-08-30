import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(DarkTheme()) {
    on<ChangeTheme>(_changeTheme);
  }

  Future<void> _changeTheme(ChangeTheme event, Emitter<ThemeState> emit) async {
    switch (state) {
      case DarkTheme():
        emit(LightTheme());
        break;
      case LightTheme():
        emit(DarkTheme());
        break;
    }
  }
}
