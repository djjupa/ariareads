import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DAL_TextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.ubuntu(
      color: Colors.black87,
    ),
    displayMedium: GoogleFonts.ubuntu(
      color: Colors.red[600],
    ),
    displaySmall: GoogleFonts.ubuntu(
      color: Colors.black38,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.ubuntu(
      color: Colors.white70,
    ),
    displayMedium: GoogleFonts.ubuntu(
      color: Colors.red[600],
    ),
    displaySmall: GoogleFonts.ubuntu(
      color: Colors.white38,
    ),
  );
}
