import 'package:flutter/material.dart';

interface class AppColors extends ThemeExtension<AppColors> {
  AppColors(
      {required this.bgColor,
      required this.primaryColor,
      required this.primaryColor50,
      required this.unLinerColor,
      required this.linerColor,
      required this.textColor,
      required this.inputColor});

  factory AppColors.light() => AppLightColors();
  factory AppColors.dark() => AppDarkColors();

  final Color inputColor;
  final Color textColor;

  final Color bgColor;
  final Color primaryColor;
  final Color primaryColor50;
  final Color unLinerColor;
  final Color linerColor;

  @override
  ThemeExtension<AppColors> copyWith({
    final Color? inputColor,
    final Color? bgColor,
    final Color? primaryColor,
    final Color? primaryColor50,
    final Color? unLinerColor,
    final Color? linerColor,
    final Color? textColor,
  }) {
    return AppColors(
      textColor: textColor ?? this.textColor,
      bgColor: bgColor ?? this.bgColor,
      inputColor: inputColor ?? this.inputColor,
      primaryColor: primaryColor ?? this.primaryColor,
      primaryColor50: primaryColor50 ?? this.primaryColor50,
      unLinerColor: unLinerColor ?? this.unLinerColor,
      linerColor: linerColor ?? this.linerColor,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      textColor: Color.lerp(textColor, other.textColor, t)!,
      bgColor: Color.lerp(bgColor, other.bgColor, t)!,
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      inputColor: Color.lerp(inputColor, other.inputColor, t)!,
      linerColor: Color.lerp(linerColor, other.linerColor, t)!,
      primaryColor50: Color.lerp(primaryColor50, other.primaryColor50, t)!,
      unLinerColor: Color.lerp(unLinerColor, other.unLinerColor, t)!,
    );
  }
}

@protected
class AppDarkColors extends AppColors {
  AppDarkColors({
    super.textColor = Colors.white,
    super.bgColor = const Color(0xFF121212),
    super.primaryColor = const Color(0xFF8875FF),
    super.primaryColor50 = const Color(0xFF8687E7),
    super.unLinerColor = Colors.white,
    super.linerColor = const Color(0xFF8875FF),
    super.inputColor = const Color(0xFF1D1D1D),
  });
}

class AppLightColors extends AppColors {
  AppLightColors({
    super.textColor = Colors.black,
    super.bgColor = const Color(0xFFFFFFFF),
    super.primaryColor = const Color(0xFF8875FF),
    super.primaryColor50 = const Color(0xFF8687E7),
    super.unLinerColor = const Color(0xFFAFAFAF),
    super.linerColor = const Color(0xFF8875FF),
    super.inputColor = const Color(0xFF1D1D1D),
  });
}

