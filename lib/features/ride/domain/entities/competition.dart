import 'package:katai/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:equatable/equatable.dart';

enum Status {
  PENDING,
  STARTED,
  FINISHED,
}

class Competition extends Equatable {
  final List<LeaderBoardUser> users;
  final Status status;

  const Competition({
    required this.users,
    required this.status,
  });

  @override
  List<Object> get props => [users, status];
}
