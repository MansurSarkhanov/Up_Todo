import 'package:get_it/get_it.dart';
import 'package:up_todo/data/source/auth_data_source.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerLazySingleton(() => AuthDataSource());
}
