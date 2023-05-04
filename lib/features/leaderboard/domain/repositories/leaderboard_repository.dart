import 'package:katai/core/error/failures.dart';
import 'package:katai/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:dartz/dartz.dart';

abstract class LeaderBoardRepository {
  Stream<Either<Failure, LeaderBoard>> getLeaderBoard(Duration duration);
}
