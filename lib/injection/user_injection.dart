import 'package:katai/features/profile/data/datasources/user_remote_data_source.dart';
import 'package:katai/features/profile/data/repositories/user_repository_impl.dart';
import 'package:katai/features/profile/domain/repositories/user_repository.dart';
import 'package:katai/features/profile/domain/usecases/user_usecases.dart';
import 'package:katai/features/profile/presentation/bloc/cubit.dart';
import 'package:hive/hive.dart';

import 'injection_container.dart';

Future<void> initUserFeature() async {
  //Bloc
  sl.registerFactory(
    () => UserCubit(
      updateUser: sl(),
      getMyProfile: sl(),
      updatePublic: sl(),
    ),
  );
  sl.registerFactory(
        () => OtherUserCubit(getUserProfile: sl()),
  );

  // Use cases
  sl.registerLazySingleton(() => GetUserProfile(sl()));
  sl.registerLazySingleton(() => GetMyProfile(sl()));
  sl.registerLazySingleton(() => UpdatePublic(sl()));
  sl.registerLazySingleton(() => UpdateUser(sl()));


  // Repository
  sl.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<UserRemoteDataSource>(
      () => UserRemoteDataSourceImpl(client: sl()));
}
