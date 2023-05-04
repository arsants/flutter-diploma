import 'package:equatable/equatable.dart';

class LeaderBoard extends Equatable {
  final List<LeaderBoardUser> users;

  const LeaderBoard({
    required this.users,
  });

  @override
  List<Object> get props => [users];
}

class LeaderBoardUser extends Equatable {
  final String trackId;
  final String fistname;
  final String lastname;
  final String username;
  final bool isPublic;
  final double distanceMeters;

  const LeaderBoardUser({
    required this.trackId,
    required this.fistname,
    required this.lastname,
    required this.username,
    required this.isPublic,
    required this.distanceMeters,
  });

  @override
  List<Object> get props => [trackId, fistname, lastname, username, isPublic, distanceMeters];
}
