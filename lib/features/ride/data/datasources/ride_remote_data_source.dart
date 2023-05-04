import 'package:katai/core/error/exceptions.dart';
import 'package:katai/core/error/failures.dart';
import 'package:katai/features/ride/domain/entities/ride.dart';
import 'package:katai/graphql/Competition.req.gql.dart';
import 'package:dartz/dartz.dart';
import 'package:ferry/ferry.dart';

abstract class RideRemoteDataSource {
  Stream<Either<Failure, Ride>> getRide(String id);

  Future<Ride> createRide(Duration duration);

  Future<Ride> createHistoricRide(String trackId);

  Future<void> leaveRide(String id);

  Future<void> startRide(String id, Duration duration);

  Future<Ride> joinRide(String code);
}

class RideRemoteDataSourceImpl implements RideRemoteDataSource {
  final Client client;

  const RideRemoteDataSourceImpl({
    required this.client,
  });

  @override
  Future<Ride> createRide(Duration duration) async {
    final createRideReq =
        GCreateRideReq((b) => b..vars.duration = duration.inMinutes);

    final response = await client.request(createRideReq).first;
    if (response.hasErrors) {
      throw GraphQLException(errors: response.graphqlErrors!);
    } else {
      return Future.value(Ride(
        id: response.data!.createRide!.ride.id,
        status: response.data!.createRide!.ride.status,
        users: [],
        results: [],
        inviteCode: response.data!.createRide!.ride.inviteCode,
        dateTime: response.data!.createRide!.ride.startTime,
        isCreator: response.data!.createRide!.ride.isCreator,
        isFinished: response.data!.createRide!.ride.isFinished,
        timeLimit:
            Duration(minutes: response.data!.createRide!.ride.timeLimitMinutes),
      ));
    }
  }

  @override
  Stream<Either<Failure, Ride>> getRide(String id) {
    final getLeaderBoard = GGetRideReq((b) => b
      ..vars.id = id
      ..fetchPolicy = FetchPolicy.CacheAndNetwork);

    final response =
        client.request(getLeaderBoard).map<Either<Failure, Ride>>((event) {
      if (event.hasErrors) {
        return Left(ServerFailure(errors: event.graphqlErrors!));
      }
      return Right(Ride(
        id: event.data!.ride.id,
        status: event.data!.ride.status,
        users: event.data!.ride.results
            .map((f) => RideUser(username: f.user.username))
            .toList(),
        results: event.data!.ride.results
            .map((f) => RideResult(
                id: f.id,
                username: f.user.username,
                currentRideMeters: f.distanceMeters,
                isHistoric: f.isHistoric,
                isMe: f.isMe))
            .toList(),
        inviteCode: event.data!.ride.inviteCode,
        dateTime: event.data!.ride.startTime,
        isCreator: event.data!.ride.isCreator,
        isFinished: event.data!.ride.isFinished,
        timeLimit: Duration(minutes: event.data!.ride.timeLimitMinutes),
      ));
    });

    return response;
  }

  @override
  Future<Ride> joinRide(String code) async {
    final joinRideReq = GJoinRideReq((b) => b..vars.code = code);

    final response = await client.request(joinRideReq).first;
    if (response.hasErrors) {
      throw GraphQLException(errors: response.graphqlErrors!);
    } else {
      return Future.value(Ride(
        id: response.data!.joinRide!.ride.id,
        status: response.data!.joinRide!.ride.status,
        users: [],
        results: [],
        inviteCode: response.data!.joinRide!.ride.inviteCode,
        dateTime: response.data!.joinRide!.ride.startTime,
        isCreator: response.data!.joinRide!.ride.isCreator,
        isFinished: response.data!.joinRide!.ride.isFinished,
        timeLimit:
            Duration(minutes: response.data!.joinRide!.ride.timeLimitMinutes),
      ));
    }
  }

  @override
  Future<void> leaveRide(String id) async {
    final leaveRideReq = GLeaveRideReq((b) => b..vars.id = id);

    final response = await client.request(leaveRideReq).first;
    if (response.hasErrors) {
      throw GraphQLException(errors: response.graphqlErrors!);
    }
  }

  @override
  Future<void> startRide(String id, Duration duration) async {
    final startRideReq = GStartRideReq((b) => b
      ..vars.id = id
      ..vars.sec = duration.inSeconds);

    final response = await client.request(startRideReq).first;
    if (response.hasErrors) {
      throw GraphQLException(errors: response.graphqlErrors!);
    }
  }

  @override
  Future<Ride> createHistoricRide(String trackId) async {
    final createHistoricRideReq =
        GCreateHistoricRideReq((b) => b..vars.historicTrackId = trackId);

    final response = await client.request(createHistoricRideReq).first;
    if (response.hasErrors) {
      throw GraphQLException(errors: response.graphqlErrors!);
    } else {
      return Future.value(Ride(
        id: response.data!.createRide!.ride.id,
        status: response.data!.createRide!.ride.status,
        users: [],
        results: [],
        inviteCode: response.data!.createRide!.ride.inviteCode,
        dateTime: response.data!.createRide!.ride.startTime,
        isCreator: response.data!.createRide!.ride.isCreator,
        isFinished: response.data!.createRide!.ride.isFinished,
        timeLimit:
            Duration(minutes: response.data!.createRide!.ride.timeLimitMinutes),
      ));
    }
  }
}
