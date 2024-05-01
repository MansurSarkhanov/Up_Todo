class AuthErrorModel implements Exception {
  final String message;
  AuthErrorModel({required this.message});

  @override
  String toString() {
    return message;
  }
}
