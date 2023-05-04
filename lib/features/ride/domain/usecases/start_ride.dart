import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/ride/domain/entities/ride.dart';
import 'package:katai/features/ride/domain/repositories/ride_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class StartRide implements UseCase<void, StartRideParams> {
  final RideRepository repository;

  StartRide({required this.repository});

  @override
  Future<Either<Failure, void>> call(StartRideParams params) =>
      repository.startRide(params.ride, params.duration);
}

class StartRideParams extends Equatable {
  final Ride ride;
  final Duration duration;

  const StartRideParams({
    required this.ride,
    required this.duration,
  });

  @override
  List<Object> get props => [ride];
}
