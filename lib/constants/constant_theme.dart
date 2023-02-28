import 'package:flutter/material.dart';

// Define the colors for the Light theme
const Color dalColorPrimaryLight = Color(0xFFFFC300);
const Color dalColorSecondaryLight = Color(0xFFFD7342);
const Color dalColorTertiaryLight = Color(0xFF6E7F80);
const Color dalColorBackgroundLight = Color(0xFFF9F9F9);
const Color dalColorForegroundLight = Color(0xFF202020);

// Define the colors for the Dark theme
const Color dalColorPrimaryDark = Color(0xFFFFC300);
const Color dalColorSecondaryDark = Color(0xFF5F5F5F);
const Color dalColorTertiaryDark = Color(0xFFC3E6E7);
const Color dalColorBackgroundDark = Colors.black;
const Color dalColorForegroundDark = Color(0xFFF9F9F9);

// Fonts
/* Options for fonts from ChatGPT
  Schoolbell (display) + Nunito (body)
  Fredoka One (display) + Montserrat (body)
  Architects Daughter (display) + Open Sans (body)
  Kalam (display) + Hind (body)
  Lobster (display) + Lato (body)
*/
// Define the font styles for the theme Light
const TextStyle displayLargeTextStyleLight = TextStyle(
  fontFamily: 'Schoolbell',
  fontWeight: FontWeight.bold,
  fontSize: 48,
);
const TextStyle displayMediumTextStyleLight = TextStyle(
  fontFamily: 'Schoolbell',
  fontWeight: FontWeight.bold,
  fontSize: 32,
  color: dalColorTertiaryLight,
);
const TextStyle displaySmallTextStyleLight = TextStyle(
  fontFamily: 'Schoolbell',
  fontWeight: FontWeight.normal,
  fontSize: 18,
);
const TextStyle bodyLargeStyleLight = TextStyle(
  fontFamily: 'Nunito',
  fontWeight: FontWeight.bold,
  fontSize: 18,
);

const TextStyle bodyMediumStyleLight = TextStyle(
  fontFamily: 'Nunito',
  fontWeight: FontWeight.normal,
  fontSize: 16,
);

const TextStyle bodySmallStyleLight = TextStyle(
  fontFamily: 'Nunito',
  fontWeight: FontWeight.normal,
  fontSize: 34,
);
