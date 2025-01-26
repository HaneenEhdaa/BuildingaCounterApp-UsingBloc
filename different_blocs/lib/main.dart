import 'package:different_blocs/Blocs/theme_bloc/bloc/theme_bloc.dart';
import 'package:different_blocs/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          ThemeData? theme;
          if (state is ThemeLight) {
            theme = state.lightTh;
          } else if (state is ThemeDark) {
            theme = state.darkTh;
          }
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme,
            home: const Home(),
          );
        },
      ),
    );
  }
}
