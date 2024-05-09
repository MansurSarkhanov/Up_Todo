import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:up_todo/app_router.dart';
import 'package:up_todo/core/config/app_config.dart';

import 'bloc/profile/theme/theme_scope.dart';
import 'bloc/profile/theme/theme_scope_widget.dart';

Future<void> main() async {
  await AppConfig.initial();
  runApp(
    ThemeScopeWidget(
    preferences: GetIt.instance<SharedPreferences>(),
    child: const MyApp(),
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeScope.of(context);
    final extensions = <ThemeExtension<dynamic>>[
      theme.appColors,
      theme.appTypography,
    ];

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      title: 'Up Todo',
      themeMode: theme.themeMode,
      themeAnimationCurve: Curves.fastOutSlowIn,
      theme: ThemeData(
        brightness: Brightness.light,
        extensions: extensions,
        scaffoldBackgroundColor: theme.appColors.bgColor,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        extensions: extensions,
        scaffoldBackgroundColor: theme.appColors.bgColor,
      ),
      
    );
  }
}
