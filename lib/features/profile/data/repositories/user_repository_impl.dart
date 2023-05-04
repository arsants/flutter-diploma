import 'package:katai/core/error/exceptions.dart';
import 'package:katai/core/error/failures.dart';
import 'package:katai/core/network/network_info.dart';
import 'package:katai/features/profile/data/datasources/user_remote_data_source.dart';
import 'package:katai/features/profile/data/models/user_model.dart';
import 'package:katai/features/profile/domain/entities/track.dart';
import 'package:katai/features/profile/domain/entities/user.dart';
import 'package:katai/features/profile/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:katai/graphql/schema.schema.gql.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  UserRepositoryImpl(
      {required this.remoteDataSource, required this.networkInfo});

  @override
  Stream<Either<Failure, User>> getMe() {
    return remoteDataSource.getMyProfile();
  }

  @override
  Future<Either<Failure, User>> updateMe(String firstName, String lastName,
      String username, String telegram) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteUserModel = await remoteDataSource.updateMe(
            firstName, lastName, username, telegram);
        return Right(remoteUserModel);
      } on GraphQLException catch (e) {
        return Left(ServerFailure(errors: e.errors));
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Stream<Either<Failure, User>> getUser(String username) {
    return remoteDataSource.getUserProfile(username);
  }

  @override
  Future<Either<Failure, void>> updatePublic(bool isPublic) async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await remoteDataSource.updatePublic(isPublic));
      } on GraphQLException catch (e) {
        return Left(ServerFailure(errors: e.errors));
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Stream<Either<Failure, List<Track>>> getMyTracks(Duration duration, GTrackOrderEnum orderBy) {
    return remoteDataSource.getMyTracks(duration,orderBy);
  }

  @override
  Stream<Either<Failure, List<Track>>> getUserTracks(String username, Duration duration, GTrackOrderEnum orderBy) {
    return remoteDataSource.getUserTracks(username, duration, orderBy);
  }
}
