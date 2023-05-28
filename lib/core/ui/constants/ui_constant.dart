import 'package:flutter/material.dart';

// Images

const String logo = 'assets/images/logo/logo.svg';
const String logoText = 'assets/images/logo/logo_text.svg';

// Paddings

const double primaryPaddingHorizontal = 16.0;

// Borders

final InputDecoration primaryInputDecoration = InputDecoration(
  labelStyle: primaryInputLabelTextStyle,
  floatingLabelBehavior: primaryInputFloatingLabelBehavior,
  contentPadding: primaryInputPadding,
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
          width: primaryInputBorderWidth,
          color: primaryInputEnabledBorderColor),
      borderRadius: primaryInputBorderRadius),
  focusedBorder: const OutlineInputBorder(
      borderSide:
          BorderSide(width: primaryInputBorderWidth, color: primaryGreenColor),
      borderRadius: primaryInputBorderRadius),
);

final InputDecorationTheme primaryInputDecorationTheme = InputDecorationTheme(
  labelStyle: primaryInputLabelTextStyle,
  floatingLabelBehavior: primaryInputFloatingLabelBehavior,
  contentPadding: primaryInputPadding,
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
          width: primaryInputBorderWidth,
          color: primaryInputEnabledBorderColor),
      borderRadius: primaryInputBorderRadius),
  focusedBorder: const OutlineInputBorder(
      borderSide:
          BorderSide(width: primaryInputBorderWidth, color: primaryGreenColor),
      borderRadius: primaryInputBorderRadius),
);

const Radius primaryInputBorderRadiusCircular = Radius.circular(10);
const BorderRadius primaryInputBorderRadius =
    BorderRadius.all(primaryInputBorderRadiusCircular);
const double primaryInputBorderWidth = 1.0;
const EdgeInsetsGeometry primaryInputPadding = EdgeInsets.symmetric(
  vertical: 12,
  horizontal: 16,
);
Color primaryInputEnabledBorderColor = primaryGreyColor.shade300;

const FloatingLabelBehavior primaryInputFloatingLabelBehavior =
    FloatingLabelBehavior.never;

const TextStyle primaryInputLabelTextStyle = TextStyle(
    fontWeight: FontWeight.w400, fontSize: 16, color: primaryGreyColor);

Color primaryInputCursorColor = primaryGreyColor.shade300;
const double primaryInputCursorWidth = 1.5;

// Divider

// Fonst

const String primaryFontFamily = 'DeeDee';

// TextStyles

const TextTheme primaryTextTheme = TextTheme(
  headlineLarge: TextStyle(
    color: primaryBlackColor,
    fontFamily: primaryFontFamily,
    fontSize: 32,
  ),
  headlineMedium: TextStyle(
    color: primaryBlackColor,
    fontFamily: primaryFontFamily,
    fontSize: 20,
  ),
  headlineSmall: TextStyle(
    color: primaryBlackColor,
    fontFamily: primaryFontFamily,
    fontSize: 15,
  ),
  labelLarge: TextStyle(
    color: primaryWhiteColor,
    fontFamily: primaryFontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w300,
  ),
  titleSmall: TextStyle(
    color: primaryBlackColor,
    fontFamily: primaryFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
  bodySmall: TextStyle(
    color: primaryBlackColor,
    fontFamily: primaryFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w300,
  ),
  labelMedium: TextStyle(
    color: primaryGreenColor,
    fontFamily: primaryFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w300,
  ),
);

// White Color

const MaterialColor primaryWhiteColor = MaterialColor(0xFFFFFFFF, <int, Color>{
  50: Color(0xFFFFFFFF),
  100: Color(0xFFFFFFFF),
  200: Color(0xFFFFFFFF),
  300: Color(0xFFFFFFFF),
  400: Color(0xFFFFFFFF),
  500: Color(0xFFFFFFFF),
  600: Color(0xFFFFFFFF),
  700: Color(0xFFFFFFFF),
  800: Color(0xFFFFFFFF),
  900: Color(0xFFFFFFFF),
});

// Black Color

const MaterialColor primaryBlackColor = MaterialColor(0xFF404041, <int, Color>{
  50: Color(0xFF404041),
  100: Color(0xFF404041),
  200: Color(0xFF404041),
  300: Color(0xFF404041),
  400: Color(0xFF404041),
  500: Color(0xFF404041),
  600: Color(0xFF404041),
  700: Color(0xFF404041),
  800: Color(0xFF404041),
  900: Color(0xFF404041),
});

// Green Shades Colors

const MaterialColor primaryGreenColor = MaterialColor(0xFFA4CE57, <int, Color>{
  50: Color(0xFFA4CE57),
  100: Color(0xFF6D8367),
  200: Color(0xFF6EB17E),
  300: Color(0xFF8EB04D),
  400: Color(0xFFBBD86A),
  500: Color(0xFFD0E4A4),
  600: Color(0xFFF3F4C1),
  700: Color(0xFFA4CE57),
  800: Color(0xFFA4CE57),
  900: Color(0xFFA4CE57),
});

// Grey Shades Colors

const MaterialColor primaryGreyColor = MaterialColor(0xFF76787A, <int, Color>{
  50: Color(0xFF76787A),
  100: Color(0xFF76787A),
  200: Color(0xFFA7A9AB),
  300: Color(0xFFC6C8CA),
  400: Color(0xFFE6E7E8),
  500: Color(0xFFF8F8F8),
  600: Color(0xFF76787A),
  700: Color(0xFF76787A),
  800: Color(0xFF76787A),
  900: Color(0xFF76787A),
});

// Purple Shades Color

const MaterialColor primaryPurpleColor = MaterialColor(0xFF4E3760, <int, Color>{
  50: Color(0xFF4E3760),
  100: Color(0xFF4E3760),
  200: Color(0xFF8B72AB),
  300: Color(0xFFC7BBDC),
  400: Color(0xFF4E3760),
  500: Color(0xFF4E3760),
  600: Color(0xFF4E3760),
  700: Color(0xFF4E3760),
  800: Color(0xFF4E3760),
  900: Color(0xFF4E3760),
});

// Pink Shades Color

const MaterialColor primaryPinkColor = MaterialColor(0xFFC07290, <int, Color>{
  50: Color(0xFFC07290),
  100: Color(0xFFC07290),
  200: Color(0xFFDEA5BA),
  300: Color(0xFFC07290),
  400: Color(0xFFC07290),
  500: Color(0xFFC07290),
  600: Color(0xFFC07290),
  700: Color(0xFFC07290),
  800: Color(0xFFC07290),
  900: Color(0xFFC07290),
});

// Blue Shades Color

const MaterialColor primaryBlueColor = MaterialColor(0xFF354863, <int, Color>{
  50: Color(0xFF354863),
  100: Color(0xFF354863),
  200: Color(0xFFA3C8D8),
  300: Color(0xFF354863),
  400: Color(0xFF354863),
  500: Color(0xFF354863),
  600: Color(0xFF354863),
  700: Color(0xFF354863),
  800: Color(0xFF354863),
  900: Color(0xFF354863),
});

// Box Shadows

List<BoxShadow> primaryBoxShadow = [
  BoxShadow(
    color: Colors.black.withOpacity(0.25),
    spreadRadius: 0,
    blurRadius: 1,
    offset: const Offset(0, 1.0), // changes position of shadow
  ),
];
