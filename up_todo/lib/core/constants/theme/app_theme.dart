import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:up_todo/core/constants/colors.dart';

abstract class AppMode {
  ThemeData darkTheme();
  ThemeData lightTheme();
}

class AppTheme implements AppMode {
  @override
  ThemeData darkTheme() {
    return ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.pressed)) {
                return AppColors.primaryColor50;
              } else {
                return AppColors.primaryColor;
              }
            },
          ),
        ),
      ),
      scaffoldBackgroundColor: AppColors.bgColor,
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.lato(
            textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 40,
        )),
        bodyMedium: GoogleFonts.lato(
            textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 32,
        )),
        bodySmall: GoogleFonts.lato(
            textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w300,
          fontSize: 16,
        )),
      ),
    );
  }

  @override
  ThemeData lightTheme() {
    // TODO: implement lightTheme
    throw UnimplementedError();
  }
}
