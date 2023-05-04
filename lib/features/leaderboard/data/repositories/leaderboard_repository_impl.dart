import 'package:katai/core/error/failures.dart';
import 'package:katai/features/leaderboard/data/datasources/leaderboard_remote_data_source.dart';
import 'package:katai/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:katai/features/leaderboard/domain/repositories/leaderboard_repository.dart';
import 'package:dartz/dartz.dart';

class LeaderBoardRepositoryImpl implements LeaderBoardRepository {
  final LeaderBoardRemoteDataSource remoteDataSource;

  const LeaderBoardRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Stream<Either<Failure, LeaderBoard>> getLeaderBoard(Duration duration) {
    return remoteDataSource.getLeaderBoard(duration);
  }
}
