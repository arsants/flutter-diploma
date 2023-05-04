import 'dart:async';

import 'package:katai/core/error/failuremap.dart';
import 'package:katai/core/error/failures.dart';
import 'package:katai/features/profile/domain/entities/track.dart';
import 'package:katai/features/profile/domain/usecases/user_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katai/features/profile/presentation/bloc/track_state.dart';
import 'package:katai/graphql/schema.schema.gql.dart';

class OtherTrackCubit extends Cubit<TrackState> {
  StreamSubscription? _sub;
  final GetUserTracks getUserTracks;

  OtherTrackCubit({
    required this.getUserTracks,
  }) : super(TrackInitial());



  Future<void> get(
      String username, Duration duration, GTrackOrderEnum orderBy) async {
    emit(TrackLoading());
    final getResult = getUserTracks(GetUserTracksParams(
        username: username, duration: duration, orderBy: orderBy));

    await _sub?.cancel();

    _sub = getResult.listen((event) {
      event.fold(
              (Failure failure) =>
              emit(TrackError(message: mapFailureToMessage(failure))),
              (List<Track> tracks) {
            emit(TrackGot(tracks: tracks));
          });
    });
  }
}
