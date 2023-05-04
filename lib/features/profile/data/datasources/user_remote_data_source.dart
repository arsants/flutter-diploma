import 'package:built_collection/src/list.dart';
import 'package:katai/core/error/exceptions.dart';
import 'package:katai/core/error/failures.dart';
import 'package:katai/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:katai/features/profile/data/models/user_model.dart';
import 'package:katai/features/profile/domain/entities/track.dart';
import 'package:katai/features/profile/domain/entities/user.dart';
import 'package:katai/graphql/Profile.req.gql.dart';
import 'package:dartz/dartz.dart';
import 'package:ferry/ferry.dart';
import 'package:katai/graphql/schema.schema.gql.dart';

abstract class UserRemoteDataSource {
  Stream<Either<Failure, User>> getMyProfile();

  Stream<Either<Failure, User>> getUserProfile(String username);

  Future<UserModel> updateMe(
      String firstName, String lastName, String username, String telegram);

  // ignore: avoid_positional_boolean_parameters
  Future<void> updatePublic(bool isPublic);

  Stream<Either<Failure, List<Track>>> getMyTracks(
      Duration duration, GTrackOrderEnum orderBy);

  Stream<Either<Failure, List<Track>>> getUserTracks(String username,
      Duration duration, GTrackOrderEnum orderBy);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Client client;

  UserRemoteDataSourceImpl({
    required this.client,
  });

  @override
  Stream<Either<Failure, User>> getMyProfile() {
    final getProfileReq =
        GGetMyProfileReq((b) => b..fetchPolicy = FetchPolicy.CacheAndNetwork);

    final response =
        client.request(getProfileReq).map<Either<Failure, User>>((event) {
      if (event.hasErrors) {
        return Left(ServerFailure(errors: event.graphqlErrors!));
      }
      return Right(UserModel.fromJson(event.data!.me.toJson()));
    });

    return response;
  }

  @override
  Stream<Either<Failure, User>> getUserProfile(String username) {
    final getUserProfileReq = GGetUserProfileReq((b) => b
      ..vars.username = username
      ..fetchPolicy = FetchPolicy.CacheAndNetwork);

    final response =
        client.request(getUserProfileReq).map<Either<Failure, User>>((event) {
      if (event.hasErrors) {
        return Left(ServerFailure(errors: event.graphqlErrors!));
      }
      return Right(UserModel.fromJson(event.data!.userByUsername.toJson()));
    });

    return response;
  }

  @override
  Future<UserModel> updateMe(String firstName, String lastName, String username,
      String telegram) async {
    final updateProfile = GUpdateProfileReq((b) => b
      ..vars.firstName = firstName
      ..vars.lastName = lastName
      ..vars.username = username
      ..vars.telegram = telegram);
    final response = await client.request(updateProfile).first;

    if (response.hasErrors) {
      throw GraphQLException(errors: response.graphqlErrors!);
    } else {
      return Future.value(
          UserModel.fromJson(response.data!.updateProfile!.user.toJson()));
    }
  }

  @override
  Future<void> updatePublic(bool isPublic) async {
    final updateProfile = GUpdatePublicReq((b) => b..vars.isPublic = isPublic);
    final response = await client.request(updateProfile).first;

    if (response.hasErrors) {
      throw GraphQLException(errors: response.graphqlErrors!);
    }
  }

  @override
  Stream<Either<Failure, List<Track>>> getMyTracks(
      Duration duration, GTrackOrderEnum orderBy) {
    final getMyTracksReq = GGetMyTracksReq((b) => b
      ..vars.timeLimitMinutes = duration.inMinutes
      ..vars.orderBy = orderBy
      ..fetchPolicy = FetchPolicy.CacheAndNetwork);

    final response = client
        .request(getMyTracksReq)
        .map<Either<Failure, List<Track>>>((event) {
      if (event.hasErrors) {
        return Left(ServerFailure(errors: event.graphqlErrors!));
      }
      return Right(event.data!.me.tracks.tracks
          .map((f) => Track(
              trackId: f.id,
              endTime: f.endTime!,
              distanceMeters: f.distanceMeters))
          .toList());
    });

    return response;
  }

  @override
  Stream<Either<Failure, List<Track>>> getUserTracks(String username,
      Duration duration, GTrackOrderEnum orderBy) {
    final getUserTracksReq = GGetUserTracksReq((b) => b
      ..vars.username = username
      ..vars.timeLimitMinutes = duration.inMinutes
      ..vars.orderBy = orderBy
      ..fetchPolicy = FetchPolicy.CacheAndNetwork);

    final response = client
        .request(getUserTracksReq)
        .map<Either<Failure, List<Track>>>((event) {
      if (event.hasErrors) {
        return Left(ServerFailure(errors: event.graphqlErrors!));
      }
      return Right(event.data!.userByUsername.tracks.tracks
          .map((f) => Track(
              trackId: f.id,
              endTime: f.endTime!,
              distanceMeters: f.distanceMeters))
          .toList());
    });

    return response;
  }
}
