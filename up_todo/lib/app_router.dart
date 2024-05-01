import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:up_todo/presentation/pages/splash/splash_page.dart';

import 'presentation/pages/login/login_page.dart';
import 'presentation/pages/onboarding/onboarding_page.dart';
import 'presentation/pages/register/register_page.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'splash',
      pageBuilder: (context, state) => const MaterialPage(
        child: SplashPage(),
      ),
    ),
    GoRoute(
      path: '/onboarding',
      name: 'onboarding',
      pageBuilder: (context, state) => const MaterialPage(
        child: OnboardingPage(),
      ),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      pageBuilder: (context, state) => MaterialPage(
        child: LoginPage(),
      ),
    ),
    GoRoute(
      path: '/register',
      name: 'register',
      pageBuilder: (context, state) => MaterialPage(
        child: RegisterPage(),
      ),
    ),
  ],
);
