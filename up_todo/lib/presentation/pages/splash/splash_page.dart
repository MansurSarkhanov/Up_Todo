import 'package:flutter/material.dart';
import 'package:up_todo/core/constants/path/image_path.dart';
import 'package:up_todo/core/constants/strings.dart';
import 'package:up_todo/core/utility/extension/image_ext.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

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
              width: 90,
              height: 90,
            ),
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
