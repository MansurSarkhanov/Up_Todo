import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:up_todo/core/constants/path/image_path.dart';
import 'package:up_todo/core/constants/strings.dart';
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
      context.goNamed('onboarding');
    });
  }
  

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
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
              style: textTheme.bodyLarge,
            )
          ],
        ),
      ),
    );
  }
}
