import 'package:ariareads/utils/themes/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

/***
 * A class to define the Theme of the app.
 */
class DAL_AppTheme {
  // Making the constructor private (as per the end of this video https://www.youtube.com/watch?v=Q9FosAdX2U4&t=0s
  DAL_AppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: DAL_TextTheme.lightTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: DAL_TextTheme.darkTextTheme,
  );
}
