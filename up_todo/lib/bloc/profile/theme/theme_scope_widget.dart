import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants/app_keys.dart';
import '../../../core/constants/theme/app_colors.dart';
import '../../../core/constants/theme/app_typography.dart';
import 'theme_scope.dart';

class ThemeScopeWidget extends StatefulWidget {
  const ThemeScopeWidget({
    super.key,
    required this.child,
    required this.preferences,
  });
  final Widget child;
  final SharedPreferences preferences;

  static ThemeScopeWidgetState? of(BuildContext context) {
    return context.findRootAncestorStateOfType<ThemeScopeWidgetState>();
  }

  @override
  State<ThemeScopeWidget> createState() => ThemeScopeWidgetState();
}

class ThemeScopeWidgetState extends State<ThemeScopeWidget> {
  ThemeMode? _themeMode;

  void changeTo(ThemeMode themeMode) async {
    if (_themeMode == themeMode) return;

    try {
      final index = ThemeMode.values.indexOf(themeMode);
      await widget.preferences.setInt(AppKeys.themeMode, index);

      setState(() {
        _themeMode = themeMode;
      });
    } catch (_) {}
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    try {
      final themeModeIndex = widget.preferences.getInt(AppKeys.themeMode) ?? 0;
      final themeMode = ThemeMode.values[themeModeIndex];

      _themeMode = themeMode;
    } catch (_) {
      _themeMode = ThemeMode.system;
    }
  }

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.platformBrightnessOf(context);
    final colors = switch (_themeMode!) {
      ThemeMode.light => AppColors.light(),
      ThemeMode.dark => AppColors.dark(),
      ThemeMode.system => brightness == Brightness.dark ? AppColors.dark() : AppColors.light(),
    };
    final typography = AppTypography(
      bodyLarge: GoogleFonts.lato(
        fontSize: 40,
        height: 48 / 40,
        fontWeight: FontWeight.bold,
        color: colors.textColor,
      ),
      bodyMedium: GoogleFonts.lato(
        fontSize: 32,
        height: 40 / 32,
        fontWeight: FontWeight.w500,
        color: colors.textColor,
      ),
      bodySmall: GoogleFonts.lato(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w300,
        color: colors.textColor,
      ),
    );
    return ThemeScope(
      themeMode: _themeMode!,
      appColors: colors,
      appTypography: typography,
      child: widget.child,
    );
  }
}
