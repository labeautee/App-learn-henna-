import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  primarySwatch: Colors.brown,
  textTheme: GoogleFonts.poppinsTextTheme(),
  scaffoldBackgroundColor: const Color(0xFFFDF6F0),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF8B5E3C),
    foregroundColor: Colors.white,
    elevation: 2,
  ),
);
