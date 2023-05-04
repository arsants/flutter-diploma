import 'package:katai/features/leaderboard/data/datasources/leaderboard_remote_data_source.dart';
import 'package:katai/features/leaderboard/data/repositories/leaderboard_repository_impl.dart';
import 'package:katai/features/leaderboard/domain/repositories/leaderboard_repository.dart';
import 'package:katai/features/leaderboard/domain/usecases/get_leaderboard.dart';
import 'package:katai/features/leaderboard/presentation/bloc/leaderboard_cubit.dart';
import 'package:katai/injection/injection_container.dart';

Future<void> initLeaderBoardFeature() async {
  sl.registerFactory(() => LeaderBoardCubit(getLeaderBoard: sl()));

  //use case
  sl.registerLazySingleton(() => GetLeaderBoard(repository: sl()));

  //repo
  sl.registerLazySingleton<LeaderBoardRepository>(
      () => LeaderBoardRepositoryImpl(remoteDataSource: sl()));

  //data source
  sl.registerLazySingleton<LeaderBoardRemoteDataSource>(
      () => LeaderBoardRemoteDataSourceImpl(client: sl()));
}
