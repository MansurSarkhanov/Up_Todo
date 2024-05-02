import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/app_router.dart';
import 'package:up_todo/bloc/profile/profile_notifier.dart';
import 'package:up_todo/core/config/app_config.dart';
import 'package:up_todo/core/constants/theme/app_theme.dart';

void main() {
  AppConfig.initial();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProfileNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      title: 'Up todo',
      theme: context.watch<ProfileNotifier>().isDarkMode ? AppTheme().darkTheme : AppTheme().lightTheme,
    );
  }
}
