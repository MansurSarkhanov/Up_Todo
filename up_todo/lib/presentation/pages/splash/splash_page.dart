import 'package:flutter/material.dart';
import 'package:up_todo/core/constants/path/image_path.dart';
import 'package:up_todo/core/constants/strings.dart';
import 'package:up_todo/core/utility/extension/image_ext.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImagePath.logo.toPathPng()),
            const Text(
              OnboardingStrings.splashTitle,
            )
          ],
        ),
      ),
    );
  }
}
