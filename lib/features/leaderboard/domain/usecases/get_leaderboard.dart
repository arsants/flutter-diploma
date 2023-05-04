import 'package:equatable/equatable.dart';
import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:katai/features/leaderboard/domain/repositories/leaderboard_repository.dart';
import 'package:dartz/dartz.dart';

class GetLeaderBoard
    implements UseCaseStream<LeaderBoard, GetLeaderBoardParams> {
  final LeaderBoardRepository repository;

  GetLeaderBoard({required this.repository});

  @override
  Stream<Either<Failure, LeaderBoard>> call(GetLeaderBoardParams params) =>
      repository.getLeaderBoard(params.duration);
}

class GetLeaderBoardParams extends Equatable {
  final Duration duration;

  const GetLeaderBoardParams({
    required this.duration,
  });

  @override
  List<Object> get props => [duration];
}
