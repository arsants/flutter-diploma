import 'package:katai/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:equatable/equatable.dart';

abstract class LeaderBoardState extends Equatable {
  const LeaderBoardState();
}

class LeaderBoardInitial extends LeaderBoardState {
  @override
  List<Object> get props => [];
}

class LeaderBoardError extends LeaderBoardState {
  final String message;

  const LeaderBoardError({required this.message});

  @override
  List<Object> get props => [];
}

class LeaderBoardLoading extends LeaderBoardState {
  @override
  List<Object> get props => [];
}

class LeaderBoardGot extends LeaderBoardState {
  final LeaderBoard leaderBoard;

  const LeaderBoardGot({required this.leaderBoard});

  @override
  List<Object> get props => [leaderBoard];
}
