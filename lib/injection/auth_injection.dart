import 'package:katai/features/login/data/datasources/auth_local_data_source.dart';
import 'package:katai/features/login/data/datasources/auth_remote_data_source.dart';
import 'package:katai/features/login/data/repositories/auth_repository_impl.dart';
import 'package:katai/features/login/domain/repositories/auth_repository.dart';
import 'package:katai/features/login/domain/usecases/auth_usecases.dart';
import 'package:katai/features/login/presentation/bloc/auth_bloc.dart';

import 'injection_container.dart';

Future<void> initAuthFeature() async {
  //Bloc
  sl.registerFactory(
        () => AuthBloc(
      registration: sl(),
      logOut: sl(),
      appleAuth: sl(),
      googleAuth: sl(),
      usernameAuth: sl(),
      getAuth: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => AppleAuth(sl()));
  sl.registerLazySingleton(() => GoogleAuth(sl()));
  sl.registerLazySingleton(() => UsernameAuth(sl()));
  sl.registerLazySingleton(() => LogOut(sl()));
  sl.registerLazySingleton(() => Registration(sl()));
  sl.registerLazySingleton(() => GetAuth(sl()));

  // Repository
  sl.registerLazySingleton<AuthRepository>(
        () => AuthRepositoryImpl(
      localDataSource: sl(),
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<AuthRemoteDataSource>(
          () => AuthRemoteDataSourceImpl(client: sl()));


  sl.registerLazySingleton<AuthLocalDataSource>(
          () => AuthLocalDataSourceImpl(client: sl()));
}