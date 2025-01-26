import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:different_blocs/core/colors/colors.dart';

ThemeData klightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: kWhite,
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
  ),
  iconTheme: IconThemeData(color: kWhite, size: 24),
  appBarTheme: AppBarTheme(
    backgroundColor: kMainColor,
    elevation: 2,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: kGrey,
      elevation: 1,
      side: BorderSide(color: kGrey, width: 0.5),
    ),
  ),
);
