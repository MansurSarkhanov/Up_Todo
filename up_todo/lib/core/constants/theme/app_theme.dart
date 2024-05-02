import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

abstract class AppMode extends Equatable {
  ThemeData get darkTheme;
  ThemeData get lightTheme;

  @override
  List<Object?> get props => [];
}

class AppTheme extends AppMode {
  @override
  ThemeData get darkTheme => ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
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
          fontWeight: FontWeight.w400,
          fontSize: 16,
        )),
      ),
      );

  @override
  ThemeData get lightTheme => ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
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
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.lato(
              textStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 40,
          )),
          bodyMedium: GoogleFonts.lato(
              textStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 32,
          )),
          bodySmall: GoogleFonts.lato(
              textStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          )),
        ),
      );
  
}

