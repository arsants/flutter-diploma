import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/ride/domain/entities/ride.dart';
import 'package:katai/features/ride/domain/repositories/ride_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class CreateRide implements UseCase<Ride, CreateRideParams> {
  final RideRepository repository;

  CreateRide({required this.repository});

  @override
  Future<Either<Failure, Ride>> call(CreateRideParams params) =>
      repository.createRide(params.duration);
}

class CreateRideParams extends Equatable {
  final Duration duration;

  const CreateRideParams({
    required this.duration,
  });

  @override
  List<Object> get props => [duration];
}
