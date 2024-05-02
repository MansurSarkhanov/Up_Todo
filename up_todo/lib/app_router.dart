import 'package:go_router/go_router.dart';
import 'package:up_todo/core/constants/routes.dart';
import 'package:up_todo/presentation/pages/splash/splash_page.dart';

import 'presentation/pages/login/login_page.dart';
import 'presentation/pages/onboarding/onboarding_page.dart';
import 'presentation/pages/register/register_page.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.splash.path,
      name: 'splash',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: AppRoutes.onboarding.path,
      name: 'onboarding',
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(
      path: AppRoutes.login.path,
      name: 'login',
      builder: (context, state) => const LoginPage(),

    ),
    GoRoute(
      path: AppRoutes.register.path,
      name: 'register',
      builder: (context, state) => const RegisterPage(),
    ),
  ],
);
