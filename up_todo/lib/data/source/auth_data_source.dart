import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

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

  Future<User?> googleLogin() async {
    final GoogleSignInAccount? user = await GoogleSignIn().signIn();
    if (user != null) {
      final authUser = await user.authentication;
      final credential = GoogleAuthProvider.credential(accessToken: authUser.accessToken, idToken: authUser.idToken);
      final UserCredential userCredential = await _firebaseAuth.signInWithCredential(credential);
      final User? resultUser = userCredential.user;
      return resultUser;
    }
    return null;
  }
}
