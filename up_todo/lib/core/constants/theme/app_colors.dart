import 'package:flutter/material.dart';

abstract interface class AppThemeColor {
  AppThemeColor._(
      {required this.bgColor,
      required this.primaryColor,
      required this.primaryColor50,
      required this.unLinerColor,
      required this.linerColor,
      required this.inputColor});

  final Color inputColor;
  final Color bgColor;
  final Color primaryColor;
  final Color primaryColor50;
  final Color unLinerColor;
  final Color linerColor;
}

class AppDarkThemeColor implements AppThemeColor {
  @override
  Color get bgColor => const Color(0xFF121212);

  @override
  Color get inputColor => const Color(0xFF1D1D1D);

  @override
  Color get linerColor => const Color(0xFF8875FF);

  @override
  Color get primaryColor => const Color(0xFF8875FF);

  @override
  Color get primaryColor50 => const Color(0xFF8687E7);

  @override
  Color get unLinerColor => const Color(0xFFAFAFAF);
}

class AppLightThemeColor implements AppThemeColor {
  @override
  Color get bgColor => const Color(0xFFFFFFFF);

  @override
  Color get inputColor => const Color(0xFF1D1D1D);

  @override
  Color get linerColor => const Color(0xFF8875FF);

  @override
  Color get primaryColor => const Color(0xFF8875FF);

  @override
  Color get primaryColor50 => const Color(0xFF8687E7);

  @override
  Color get unLinerColor => Colors.grey.shade400;
}
