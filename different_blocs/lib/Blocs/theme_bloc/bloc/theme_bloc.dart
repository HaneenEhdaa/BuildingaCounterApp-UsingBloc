import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:different_blocs/core/Themes/dark_theme.dart';
import 'package:different_blocs/core/Themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
   ThemeBloc() : super(ThemeLight()) {
    on<ToggleTheme>((event, emit) {
      if (state is ThemeLight) {
        emit(ThemeDark());
      } else if (state is ThemeDark) {
        emit(ThemeLight());
      }
    });
  }
}
