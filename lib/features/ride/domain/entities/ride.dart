import 'package:katai/graphql/schema.schema.gql.dart';
import 'package:equatable/equatable.dart';

class Ride extends Equatable {
  final String id;
  final GRideStatusEnum status;
  final List<RideUser> users;
  final List<RideResult> results;
  final DateTime? dateTime;
  final bool isCreator;
  final bool isFinished;
  final String inviteCode;
  final Duration timeLimit;

  const Ride({
    required this.id,
    required this.status,
    required this.users,
    required this.results,
    required this.dateTime,
    required this.isCreator,
    required this.isFinished,
    required this.inviteCode,
    required this.timeLimit,
  });

  @override
  List<Object?> get props => [
        id,
        status,
        users,
        results,
        dateTime,
        isCreator,
        isFinished,
        inviteCode,
        timeLimit
      ];
}

class RideUser extends Equatable {
  final String username;

  const RideUser({required this.username});

  @override
  List<Object?> get props => [username];
}

class RideResult extends Equatable {
  final String id;
  final String username;
  final double currentRideMeters;
  final bool isHistoric;
  final bool isMe;

  const RideResult({
    required this.id,
    required this.username,
    required this.currentRideMeters,
    required this.isHistoric,
    required this.isMe,
  });

  @override
  List<Object?> get props =>
      [id, username, currentRideMeters, isHistoric, isMe];
}
