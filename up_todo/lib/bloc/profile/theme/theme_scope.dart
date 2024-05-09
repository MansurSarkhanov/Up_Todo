import 'package:flutter/material.dart';
import 'package:up_todo/core/constants/theme/app_colors.dart';
import 'package:up_todo/core/constants/theme/app_typography.dart';

class ThemeScope extends InheritedWidget {
  const ThemeScope({
    super.key,
    required super.child,
    required this.appColors,
    required this.themeMode,
    required this.appTypography,
  });

  final ThemeMode themeMode;
  final AppColors appColors;
  final AppTypography appTypography;

  static ThemeScope of(BuildContext context) {
    final ThemeScope? result = context.dependOnInheritedWidgetOfExactType<ThemeScope>();
    assert(result != null, 'No ThemeScope found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
