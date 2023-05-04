import 'dart:async';

import 'package:katai/core/error/failuremap.dart';
import 'package:katai/core/error/failures.dart';
import 'package:katai/features/profile/domain/entities/track.dart';
import 'package:katai/features/profile/domain/usecases/user_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katai/features/profile/presentation/bloc/track_state.dart';
import 'package:katai/graphql/schema.schema.gql.dart';

class TrackCubit extends Cubit<TrackState> {
  StreamSubscription? _sub;
  final GetMyTracks getMyTracks;

  TrackCubit({
    required this.getMyTracks,
  }) : super(TrackInitial());

  Future<void> get(Duration duration, GTrackOrderEnum orderBy) async {
    emit(TrackLoading());
    final getResult =
        getMyTracks(GetMyTracksParams(duration: duration, orderBy: orderBy));

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
