import 'package:firebase_auth/firebase_auth.dart';

final class AuthDataSource {
  final _firebaseAuth = FirebaseAuth.instance;
  Future<User?> loginUser({required String email, required String password}) async {
    final request = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    if (request.user != null) {
      final user = request.user;
      return user;
    }
    return null;
  }

  Future<User?> registerUser({required String email, required String password}) async {
    final request = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    if (request.user != null) {
      final user = request.user;
      return user;
    }
    return null;
  }
}
