import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme customTextThemeFromColor(Color color) {
  return TextTheme(
    displayLarge:  GoogleFonts.unbounded(textStyle: TextStyle(color: color, fontSize: 48, fontWeight: FontWeight.w400),),
    displayMedium: GoogleFonts.unbounded(textStyle: TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.w600),),
    displaySmall: GoogleFonts.unbounded(textStyle: TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.w500),),
    headlineLarge:  GoogleFonts.montserrat(textStyle: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w500),),
    headlineMedium: GoogleFonts.montserrat(textStyle: TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.w600),),
    headlineSmall: GoogleFonts.unbounded(textStyle: TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.w500),),
    bodyLarge:  GoogleFonts.montserrat(textStyle: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w400),), //???
    bodyMedium: GoogleFonts.montserrat(textStyle: TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.w400),), //???
    bodySmall: GoogleFonts.montserrat(textStyle: TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.w400),),
    labelLarge:  GoogleFonts.montserrat(textStyle: TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.w300),),
    labelMedium: GoogleFonts.montserrat(textStyle: TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.w300),),
    labelSmall: GoogleFonts.montserrat(textStyle: TextStyle(color: color, fontSize: 10, fontWeight: FontWeight.w300),),
  );
} //todo: save offline fonts, add license, const TextStyles and aplly color function?/in-theme color add