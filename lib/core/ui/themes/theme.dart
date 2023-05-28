import 'package:flutter/material.dart';
import 'package:mshi/core/ui/ui.dart';

final lightTheme = ThemeData(
  fontFamily: primaryFontFamily,
  primarySwatch: primaryGreenColor,
  primaryColor: primaryGreenColor,
  primaryColorLight: primaryWhiteColor,
  primaryColorDark: primaryBlackColor,
  scaffoldBackgroundColor: primaryWhiteColor,
  disabledColor: primaryGreyColor.shade300,
  inputDecorationTheme: primaryInputDecorationTheme,
  appBarTheme: const AppBarTheme(
    color: primaryGreenColor,
    actionsIconTheme: IconThemeData(color: primaryWhiteColor),
    titleTextStyle: TextStyle(
      color: primaryWhiteColor,
      fontFamily: primaryFontFamily,
      fontSize: 24,
    ),
    centerTitle: false,
  ),
  actionIconTheme: ActionIconThemeData(
    backButtonIconBuilder: (context) => const Center(
      child: Icon(
        Icons.arrow_back_ios,
        color: primaryWhiteColor,
        size: 20,
      ),
    ),
  ),
  primaryIconTheme: const IconThemeData(color: Colors.white, size: 12),
  iconTheme: const IconThemeData(color: Colors.white, size: 12),
  primaryTextTheme: primaryTextTheme,
);

final darkTheme = ThemeData();
