

import 'package:katai/features/ride/domain/entities/ride.dart';
import 'package:equatable/equatable.dart';

abstract class RideState extends Equatable {
  const RideState();
}

class RideInitial extends RideState {
  @override
  List<Object> get props => [];
}

class RideError extends RideState {
  final String message;

  const RideError({required this.message});

  @override
  List<Object> get props => [message];
}

class RideCreated extends RideState {
  final Ride ride;

  const RideCreated({required this.ride});

  @override
  List<Object> get props => [ride];
}

class RideJoined extends RideState {
  final Ride ride;

  const RideJoined({required this.ride});

  @override
  List<Object> get props => [ride];
}

class RideStarted extends RideState {
  const RideStarted();

  @override
  List<Object> get props => [];
}

class RideLeft extends RideState {
  const RideLeft();

  @override
  List<Object> get props => [];
}

class RideGot extends RideState {
  final Ride ride;

  const RideGot({required this.ride});

  @override
  List<Object> get props => [ride];
}
