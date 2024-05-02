import 'package:firebase_auth/firebase_auth.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:up_todo/data/domain/endpoints/firebase_endpoints.dart';
import 'package:up_todo/data/models/auth_error_model.dart';
import 'package:up_todo/data/models/user_model.dart';
import 'package:up_todo/data/source/auth_data_source.dart';
import 'package:up_todo/injection.dart';

import '../../source/local_auth_data_source.dart';

abstract interface class IAuthRepository {
  Future<Result<User?, AuthErrorModel>> loginUser({required String email, required String password});
  Future<Result<User?, AuthErrorModel>> registerUser({required String email, required String password});
}

class AuthRepository implements IAuthRepository {
  final _localAuthDataSource = getIt.get<LocalAuthDataSource>();
  final _authDataSource = getIt.get<AuthDataSource>();
  final _firebaseEndpoint = FirebaseEndpoints.users.ref;

  @override
  Future<Result<User?, AuthErrorModel>> loginUser({required String email, required String password}) async {
    try {
      final response = await _authDataSource.loginUser(email: email, password: password);
      await _localAuthDataSource.saveToken(response!.uid);
      return Success(response);
    } catch (e) {
      return Error(AuthErrorModel(message: e.toString()));
    }
  }

  @override
  Future<Result<User?, AuthErrorModel>> registerUser({required String email, required String password}) async {
    try {
      final response = await _authDataSource.registerUser(email: email, password: password);
      await _localAuthDataSource.saveToken(response!.uid);
      final userModel = UserModel(
        email: email,
        password: password,
        image: response.photoURL,
        username: response.displayName,
        token: response.uid,
      ).toJson();
      await _firebaseEndpoint.doc(response.uid).set(userModel);
      return Success(response);
    } catch (e) {
      return Error(AuthErrorModel(message: e.toString()));
    }
  }
}
