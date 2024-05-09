import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:up_todo/core/constants/path/image_path.dart';
import 'package:up_todo/core/constants/routes.dart';
import 'package:up_todo/core/constants/strings.dart';
import 'package:up_todo/core/constants/theme/theme_ext.dart';
import 'package:up_todo/core/utility/extension/image_ext.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      context.goNamed(AppRoutes.onboarding.name);
    });
  }
 
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagePath.logo.toPathPng(),
              height: 90,
            ),
            const SizedBox(height: 20),
            Text(
              OnboardingStrings.splashTitle,
              style: context.typography.bodyLarge,
            )
          ],
        ),
      ),
    );
  }
}
