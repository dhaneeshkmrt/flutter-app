import 'package:get_it/get_it.dart';
import 'package:notes_app/services/sqlite_service.dart';
import 'package:notes_app/services/storage_service.dart';

final getIt = GetIt.instance;

setupServiceLocator() {
  getIt.registerLazySingleton(() => StorageService());
  getIt.registerLazySingleton<SqliteService>(() => SqliteService());
}
