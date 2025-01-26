import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:different_blocs/core/colors/colors.dart';

ThemeData kDarkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: kDarkBody,
  textTheme: TextTheme(bodyMedium: TextStyle(color: kDarkTexe)),
  iconTheme: IconThemeData(color: kWhite, size: 24),


  appBarTheme: AppBarTheme(
    backgroundColor: kLight, 
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
