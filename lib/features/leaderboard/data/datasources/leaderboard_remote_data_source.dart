import 'package:katai/core/error/failures.dart';
import 'package:katai/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:katai/graphql/LeaderBoard.req.gql.dart';
import 'package:dartz/dartz.dart';
import 'package:ferry/ferry.dart';
import 'package:katai/graphql/schema.schema.gql.dart';

abstract class LeaderBoardRemoteDataSource {
  Stream<Either<Failure, LeaderBoard>> getLeaderBoard(Duration duration);
}

class LeaderBoardRemoteDataSourceImpl implements LeaderBoardRemoteDataSource {
  final Client client;

  const LeaderBoardRemoteDataSourceImpl({
    required this.client,
  });

  @override
  Stream<Either<Failure, LeaderBoard>> getLeaderBoard(Duration duration) {
    final getLeaderBoard =
        GGetLeaderBoardReq((b) => b
          ..vars.time = duration.inMinutes
          ..fetchPolicy = FetchPolicy.CacheAndNetwork
        );

    final response = client
        .request(getLeaderBoard)
        .map<Either<Failure, LeaderBoard>>((event) {
      if (event.hasErrors) {
        return Left(ServerFailure(errors: event.graphqlErrors!));
      }
      return Right(LeaderBoard(
        users: event.data!.timeLimitLeaderboard
            .map((f) => LeaderBoardUser(
                trackId: f.id.toString(),
                fistname: f.user.firstName,
                lastname: f.user.lastName,
                username: f.user.username,
                isPublic: f.user.profile.isPublic,
                distanceMeters: f.distanceMeters.toDouble()))
            .toList(),
      ));
    });

    return response;
  }
}
