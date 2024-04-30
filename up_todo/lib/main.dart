import 'package:flutter/material.dart';
import 'package:up_todo/app_router.dart';
import 'package:up_todo/core/config/app_config.dart';
import 'package:up_todo/core/constants/theme/app_theme.dart';

void main() {
  AppConfig.initial();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: appRouter, title: 'Up todo', theme: AppTheme().darkTheme());
  }
}
