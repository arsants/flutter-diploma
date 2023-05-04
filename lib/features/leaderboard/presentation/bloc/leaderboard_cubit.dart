import 'dart:async';

import 'package:katai/core/error/failuremap.dart';
import 'package:katai/core/error/failures.dart';
import 'package:katai/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:katai/features/leaderboard/domain/usecases/get_leaderboard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'leaderboard_state.dart';

class LeaderBoardCubit extends Cubit<LeaderBoardState> {

  StreamSubscription? _subscription;
  final GetLeaderBoard getLeaderBoard;

  LeaderBoardCubit({
    required this.getLeaderBoard,
  }) : super(LeaderBoardInitial());

  Future<void> get(Duration duration) async {
    emit(LeaderBoardLoading());
    final getResult = getLeaderBoard(GetLeaderBoardParams(duration: duration));

    await _subscription?.cancel();

    _subscription = getResult.listen((event) {
      event.fold(
          (Failure failure) =>
              emit(LeaderBoardError(message: mapFailureToMessage(failure))),
          (LeaderBoard leaderBoard) =>
              emit(LeaderBoardGot(leaderBoard: leaderBoard)));
    });
  }
}
