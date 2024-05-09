import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:up_todo/data/source/auth_data_source.dart';
import 'package:up_todo/data/source/local_auth_data_source.dart';

final getIt = GetIt.instance;

Future<void> setUp() async {
  getIt.registerLazySingleton(() => AuthDataSource());

  final preferences = await SharedPreferences.getInstance();
  getIt.registerSingleton(preferences);
  //Cache injection
  getIt.registerFactory<FlutterSecureStorage>(
    () => const FlutterSecureStorage(),
    instanceName: 'secureStorage',
  );
  getIt.registerLazySingleton<ILocalAuthDataSource>(
    () => LocalAuthDataSource(
      secureStorage: getIt(instanceName: 'secureStorage'),
    ),
  );
}
