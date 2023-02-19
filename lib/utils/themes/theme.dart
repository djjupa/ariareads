import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/***
 * A class to define the Theme of the app.
 */
class DAL_AppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.ubuntu(
          color: Colors.black87,
        ),
        displayMedium: GoogleFonts.ubuntu(
          color: Colors.red[600],
        ),
        displaySmall: GoogleFonts.ubuntu(
          color: Colors.black38,
        ),
      )
  );

  static  ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.ubuntu(
          color: Colors.white70,
        ),
        displayMedium: GoogleFonts.ubuntu(
          color: Colors.red[600],
        ),
        displaySmall: GoogleFonts.ubuntu(
          color: Colors.white38,
        ),
      )
  );
}
