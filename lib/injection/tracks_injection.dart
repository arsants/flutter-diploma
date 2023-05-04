import 'package:katai/features/profile/domain/usecases/user_usecases.dart';
import 'package:katai/features/profile/presentation/bloc/other_track_cubit.dart';
import 'package:katai/features/profile/presentation/bloc/track_cubit.dart';

import 'injection_container.dart';

Future<void> initTrackFeature() async {
  //Bloc
  sl.registerFactory(
    () => TrackCubit(getMyTracks: sl()),
  );
  sl.registerFactory(
    () => OtherTrackCubit(getUserTracks: sl()),
  );

  // Use cases
  sl.registerLazySingleton(() => GetMyTracks(sl()));
  sl.registerLazySingleton(() => GetUserTracks(sl()));
}
