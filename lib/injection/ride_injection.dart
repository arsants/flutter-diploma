import 'package:katai/features/ride/data/datasources/ride_remote_data_source.dart';
import 'package:katai/features/ride/data/repositories/ride_repository_impl.dart';
import 'package:katai/features/ride/domain/repositories/ride_repository.dart';
import 'package:katai/features/ride/domain/usecases/ride_usecases.dart';
import 'package:katai/features/ride/presentation/bloc/ride_cubit.dart';
import 'package:katai/injection/injection_container.dart';

Future<void> initRideFeature() async {
  sl.registerFactory(() => RideCubit(
        createRide: sl(),
        getRide: sl(),
        leaveRide: sl(),
        joinRide: sl(),
        startRide: sl(),
        createHistoricRide: sl(),
      ));

  //use case
  sl.registerLazySingleton(() => CreateRide(repository: sl()));
  sl.registerLazySingleton(() => JoinRide(repository: sl()));
  sl.registerLazySingleton(() => LeaveRide(repository: sl()));
  sl.registerLazySingleton(() => StartRide(repository: sl()));
  sl.registerLazySingleton(() => GetRide(repository: sl()));
  sl.registerLazySingleton(() => CreateHistoricRide(repository: sl()));

  //repo
  sl.registerLazySingleton<RideRepository>(
      () => RideRepositoryImpl(remoteDataSource: sl(), networkInfo: sl()));

  //data source
  sl.registerLazySingleton<RideRemoteDataSource>(
      () => RideRemoteDataSourceImpl(client: sl()));
}
