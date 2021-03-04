import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/framework/colors.dart';

import '../styles.dart';

final appTheme = ThemeData(
  platform: TargetPlatform.iOS,
  brightness: Brightness.light,
  fontFamily: 'Gotham',
  scaffoldBackgroundColor: Colors.white,
  backgroundColor: Colors.white,
  dialogBackgroundColor: Colors.white,
  accentColor: primary,
  primaryColor: primary,
  cursorColor: primary,
  iconTheme: IconThemeData(color: Colors.black),
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(color: Colors.black),
    color: Colors.white,
    elevation: 0,
  ),
  textTheme: TextTheme(
    headline1: H1.copyWith(color: Colors.black),
    headline2: H2.copyWith(color: Colors.black),
    headline3: H3.copyWith(color: Colors.black),
    headline4: H4.copyWith(color: Colors.black),
    headline5: H5.copyWith(color: Colors.black),
    bodyText1: TextBook.copyWith(color: textSecondary),
    bodyText2: TextLight.copyWith(color: textLight),
    caption: Caption.copyWith(color: Colors.black),
  ),
  inputDecorationTheme: InputDecorationTheme(
    isCollapsed: true,
    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
    filled: true,
    fillColor: backgroundEditText,
    counterStyle: TextBook.copyWith(color: darkHint),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(
        Radius.circular(24.0),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24.0),
      borderSide: BorderSide(
        color: primary,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24.0),
      borderSide: BorderSide(
        color: Colors.red,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24.0),
      borderSide: BorderSide(
        color: Colors.red,
      ),
    ),
    labelStyle: TextBook,
    hintStyle: TextBook,
    errorStyle: TextBook.copyWith(color: Colors.red),
  ),
  bottomSheetTheme: BottomSheetThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
    ),
  ),
);

final darkTheme = ThemeData(
  platform: TargetPlatform.iOS,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  backgroundColor: darkGray,
  dialogBackgroundColor: darkGray,
  fontFamily: 'Gotham',
  accentColor: primary,
  primaryColor: primary,
  cursorColor: primary,
  iconTheme: IconThemeData(color: Colors.white),
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(color: Colors.white),
    color: Colors.transparent,
    elevation: 0,
  ),
  textTheme: TextTheme(
    headline1: H1.copyWith(color: Colors.white),
    headline2: H2.copyWith(color: Colors.white),
    headline3: H3.copyWith(color: Colors.white),
    headline4: H4.copyWith(color: Colors.white),
    headline5: H5.copyWith(color: Colors.white),
    bodyText1: TextBook.copyWith(color: Colors.white),
    bodyText2: TextLight.copyWith(color: Colors.white),
    caption: Caption.copyWith(color: Colors.white),
  ),
  inputDecorationTheme: InputDecorationTheme(
    isCollapsed: true,
    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
    filled: true,
    fillColor: fieldColor,
    counterStyle: TextBook.copyWith(color: Colors.white),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(
        Radius.circular(24.0),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24.0),
      borderSide: BorderSide(
        color: primary,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24.0),
      borderSide: BorderSide(
        color: Colors.red,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24.0),
      borderSide: BorderSide(
        color: Colors.red,
      ),
    ),
    labelStyle: TextBook.copyWith(color: Colors.white),
    hintStyle: TextBook.copyWith(color: darkHint),
    errorStyle: TextBook.copyWith(color: Colors.red),
  ),
  bottomSheetTheme: BottomSheetThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
    ),
  ),
);
