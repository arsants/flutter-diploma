import 'package:katai/core/error/failures.dart';
import 'package:katai/features/profile/data/models/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:katai/features/profile/domain/entities/track.dart';
import 'package:katai/graphql/schema.schema.gql.dart';

import '../entities/user.dart';

abstract class UserRepository {
  Stream<Either<Failure, User>> getMe();

  Stream<Either<Failure, User>> getUser(String username);

  Future<Either<Failure, User>> updateMe(
      String firstName, String lastName, String username, String telegram);

  Future<Either<Failure, void>> updatePublic(bool isPublic);

  Stream<Either<Failure, List<Track>>> getMyTracks(
      Duration duration, GTrackOrderEnum orderBy);

  Stream<Either<Failure, List<Track>>> getUserTracks(
      String username, Duration duration, GTrackOrderEnum orderBy);
}
