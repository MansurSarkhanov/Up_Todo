enum AppRoutes {
  splash(path: '/', name: 'splash'),
  onboarding(path: '/onboarding', name: 'onboarding'),
  login(path: '/login', name: 'login'),
  register(path: '/register', name: 'register'),
  ;

  const AppRoutes({required this.path, required this.name});
  final String path;
  final String name;

}
