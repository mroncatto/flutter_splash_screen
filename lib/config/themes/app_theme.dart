import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color backGroundSplashColor = Color(0xff1840bc);
  static const Color componentsSplashColor = Color.fromARGB(205, 22, 60, 175);
  static const Color secondComponentsSplashColor =
      Color.fromARGB(255, 19, 65, 203);
}

class AppTheme {
  static final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: const Color(0xff5b50e2),
    cardColor: const Color.fromARGB(240, 251, 251, 251),
    unselectedWidgetColor: const Color.fromARGB(255, 225, 225, 225),
    hintColor: Colors.black,

    /// Highlight Color For Shimmer
    highlightColor: const Color.fromARGB(157, 204, 204, 204),

    /// Base Color For Shimmer
    canvasColor: const Color.fromARGB(205, 235, 235, 235),

    textTheme: TextTheme(
      displayLarge: GoogleFonts.ubuntu(
        fontSize: 35,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: GoogleFonts.ubuntu(
        fontSize: 16,
        color: Colors.grey,
        fontWeight: FontWeight.w300,
      ),
      displayMedium: GoogleFonts.ubuntu(
        color: Colors.deepPurpleAccent,
        fontSize: 16,
      ),
      displaySmall: GoogleFonts.ubuntu(
          fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
      titleSmall: GoogleFonts.ubuntu(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: const Color.fromARGB(255, 39, 39, 39)),
      headlineMedium: GoogleFonts.ubuntu(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: const Color(0xff787580),
      ),
      headlineSmall: GoogleFonts.ubuntu(
        fontSize: 22,
        color: Colors.black,
      ),
    ),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(0xff1d1b29),
    primaryColor: const Color(0xff5b50e2),
    cardColor: const Color(0xff272f3d),
    unselectedWidgetColor: const Color(0xff17161e),
    hintColor: Colors.white,

    /// Highlight Color For Shimmer
    highlightColor: const Color.fromARGB(157, 142, 141, 207),

    /// Base Color For Shimmer
    canvasColor: const Color.fromARGB(205, 143, 159, 223),

    textTheme: TextTheme(
      displayLarge: GoogleFonts.ubuntu(
        fontSize: 38,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: GoogleFonts.ubuntu(
        fontSize: 16,
        color: const Color.fromARGB(255, 193, 193, 193),
        fontWeight: FontWeight.w300,
      ),
      displayMedium: GoogleFonts.ubuntu(
        color: Colors.deepPurpleAccent,
        fontSize: 16,
      ),
      displaySmall: GoogleFonts.ubuntu(
          fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
      titleSmall: GoogleFonts.ubuntu(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: const Color.fromARGB(255, 192, 192, 192)),
      headlineMedium: GoogleFonts.ubuntu(
        fontWeight: FontWeight.bold,
        fontSize: 14,
        color: const Color(0xff787580),
      ),
      headlineSmall: GoogleFonts.ubuntu(fontSize: 22, color: Colors.white),
    ),
  );
}
