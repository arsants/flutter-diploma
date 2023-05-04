import 'package:katai/features/profile/domain/entities/track.dart';
import 'package:equatable/equatable.dart';

abstract class TrackState extends Equatable {
  const TrackState();
}

class TrackInitial extends TrackState {
  @override
  List<Object> get props => [];
}

class TrackLoading extends TrackState {
  @override
  List<Object> get props => [];
}

class TrackError extends TrackState {
  final String message;

  const TrackError({required this.message});

  @override
  List<Object> get props => [message];
}

class TrackGot extends TrackState {
  final List<Track> tracks;

  const TrackGot({required this.tracks});

  @override
  List<Object> get props => [tracks];
}