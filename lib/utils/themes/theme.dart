import 'package:ariareads/constants/constant_theme.dart';
import 'package:ariareads/utils/themes/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

/***
 * A class to define the Theme of the app.
 */
class DALAppTheme {
  // Making the constructor private (as per the end of this video https://www.youtube.com/watch?v=Q9FosAdX2U4&t=0s
  //DALAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: DALTextTheme.lightTextTheme,
    primarySwatch: Colors.amber,
    //primaryColor: dalColorPrimaryLight,
    //primaryColorLight: dalColorPrimaryLight,
    //secondaryHeaderColor: dalColorSecondaryLight,
    //scaffoldBackgroundColor: dalColorBackgroundLight,
    fontFamily: 'Schoolbell',
    appBarTheme: const AppBarTheme(
      color: dalColorPrimaryLight,
      elevation: 10,
      iconTheme: IconThemeData(
        color: dalColorForegroundLight,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: dalColorSecondaryLight,
        foregroundColor: dalColorForegroundLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: dalColorPrimaryLight,
      secondary: dalColorPrimaryLight,
      tertiary: dalColorTertiaryLight,
      //brightness: Brightness.dark,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: DALTextTheme.darkTextTheme,
    primaryColor: dalColorPrimaryDark,
    primaryColorLight: dalColorPrimaryDark,
    secondaryHeaderColor: dalColorSecondaryDark,
    scaffoldBackgroundColor: dalColorBackgroundDark,
    fontFamily: 'Schoolbell',
    appBarTheme: const AppBarTheme(
      color: dalColorPrimaryDark,
      elevation: 0,
      iconTheme: IconThemeData(
        color: dalColorForegroundDark,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: dalColorPrimaryLight,
        foregroundColor: dalColorForegroundDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.0),
        ),
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: dalColorPrimaryDark,
      secondary: dalColorPrimaryDark,
      tertiary: dalColorTertiaryDark,
      //brightness: Brightness.dark,
    ),
  );
}
