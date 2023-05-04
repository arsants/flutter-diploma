import 'dart:async';

import 'package:katai/core/error/failuremap.dart';
import 'package:katai/core/error/failures.dart';
import 'package:katai/features/ride/domain/entities/ride.dart';
import 'package:katai/features/ride/domain/usecases/ride_usecases.dart';
import 'package:katai/features/ride/presentation/bloc/ride_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ride_state.dart';

class RideCubit extends Cubit<RideState> {
  StreamSubscription? _subscription;
  final GetRide getRide;
  final JoinRide joinRide;
  final LeaveRide leaveRide;
  final CreateRide createRide;
  final StartRide startRide;
  final CreateHistoricRide createHistoricRide;

  RideCubit({
    required this.getRide,
    required this.joinRide,
    required this.leaveRide,
    required this.createRide,
    required this.startRide,
    required this.createHistoricRide,
  }) : super(RideInitial());

  Future<void> get(Ride ride) async {
    final getResult = getRide(GetRideParams(ride: ride));

    await _subscription?.cancel();

    _subscription = getResult.listen((event) {
      event.fold(
          (Failure failure) =>
              emit(RideError(message: mapFailureToMessage(failure))),
          (Ride ride) => emit(RideGot(ride: ride)));
    });
  }

  Future<void> join(String code) async {
    final joinResult = await joinRide(JoinRideParams(code: code));

    return joinResult.fold(
      (Failure failure) =>
          emit(RideError(message: mapFailureToMessage(failure))),
      (Ride ride) => emit(RideJoined(ride: ride)),
    );
  }

  Future<void> create(Duration duration) async {
    final createResult = await createRide(CreateRideParams(duration: duration));

    return createResult.fold(
      (Failure failure) =>
          emit(RideError(message: mapFailureToMessage(failure))),
      (Ride ride) => emit(RideCreated(ride: ride)),
    );
  }

  Future<void> create_historic(String trackId) async {
    final createHistoricResult = await createHistoricRide(CreateHistoricRideParams(trackId: trackId));

    return createHistoricResult.fold(
          (Failure failure) =>
          emit(RideError(message: mapFailureToMessage(failure))),
          (Ride ride) => emit(RideCreated(ride: ride)),
    );
  }

  Future<void> start(Ride ride,Duration duration) async {
    final startResult = await startRide(StartRideParams(ride: ride, duration: duration));

    return startResult.fold(
      (Failure failure) =>
          emit(RideError(message: mapFailureToMessage(failure))),
      (r) => emit(const RideStarted()),
    );
  }

  Future<void> leave(Ride ride) async {
    final leaveResult = await leaveRide(LeaveRideParams(ride: ride));

    return leaveResult.fold(
      (Failure failure) =>
          emit(RideError(message: mapFailureToMessage(failure))),
      (r) => emit(const RideLeft()),
    );
  }

  Future<void> cancel() async {
    await _subscription?.cancel();
  }
}
