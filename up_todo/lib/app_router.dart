import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'presentation/pages/splash/splash_page.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'splash',
      pageBuilder: (context, state) => const MaterialPage(
        child: SplashPage(),
      ),
    ),
  ],
);
