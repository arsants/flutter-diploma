import 'package:katai/features/map/data/datasources/map_remote_data_source.dart';
import 'package:katai/features/map/data/repositories/map_repository.dart';
import 'package:katai/features/map/domain/repositories/map_repository.dart';
import 'package:katai/features/map/domain/usecases/map/update_location.dart';
import 'package:katai/features/map/presentation/bloc/map_cubit.dart';
import 'package:katai/injection/injection_container.dart';

Future<void> initMapFeature() async {
  sl.registerFactory(() => MapCubit(updateLocation: sl()));

  //use case
  sl.registerLazySingleton(() => UpdateLocation(mapRepository: sl()));

  //repo
  sl.registerLazySingleton<MapRepository>(
      () => MapRepositoryImpl(remoteDataSource: sl(), networkInfo: sl()));
  //data source
  sl.registerLazySingleton<MapRemoteDataSource>(
      () => MapRemoteDataSourceImpl(client: sl()));
}
