part of 'theme_bloc.dart';

@immutable
abstract class ThemeState {}

class ThemeInitial extends ThemeState {}

class ThemeDark extends ThemeState {
  ThemeData darkTh = kDarkTheme;
}

class ThemeLight extends ThemeState {
  ThemeData lightTh = klightTheme;
}
