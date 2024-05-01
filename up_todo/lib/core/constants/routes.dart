enum AppRoutes {
  splash(path: '/'),
  onboarding(path: '/onboarding'),
  login(path: '/login'),
  register(path: '/register');

  const AppRoutes({required this.path});
  final String path;
}
