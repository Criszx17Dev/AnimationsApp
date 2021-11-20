import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static TextStyle _myLightFont(double size,
      {FontWeight? fontWeight, Color? color}) {
    return GoogleFonts.kaushanScript(
      fontSize: size,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color ?? Colors.black,
    );
  }

  static TextStyle _myDarkFont(double size,
      {FontWeight? fontWeight, Color? color}) {
    return GoogleFonts.kaushanScript(
      fontSize: size,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color ?? Colors.white,
    );
  }

  static final TextTheme _lightTextTheme = TextTheme(
    bodyText1: _myLightFont(14),
    headline1: _myLightFont(32),
    headline2: _myLightFont(21),
    headline3: _myLightFont(16),
    headline4: _myLightFont(12),
  );
  static final TextTheme _darkTextTheme = TextTheme(
    bodyText1: _myDarkFont(14),
    headline1: _myDarkFont(32),
    headline2: _myDarkFont(21),
    headline3: _myDarkFont(16),
    headline4: _myDarkFont(12),
  );

  static lightTheme() {
    return ThemeData.light().copyWith(
      textTheme: _lightTextTheme,
    );
  }

  static darkTheme() {
    return ThemeData.dark().copyWith(
      textTheme: _darkTextTheme,
    );
  }
}
