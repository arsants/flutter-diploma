import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/ride/domain/entities/ride.dart';
import 'package:katai/features/ride/domain/repositories/ride_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class CreateHistoricRide implements UseCase<Ride, CreateHistoricRideParams> {
  final RideRepository repository;

  CreateHistoricRide({required this.repository});

  @override
  Future<Either<Failure, Ride>> call(CreateHistoricRideParams params) =>
      repository.createHistoricRide(params.trackId);
}

class CreateHistoricRideParams extends Equatable {
  final String trackId;

  const CreateHistoricRideParams({
    required this.trackId,
  });

  @override
  List<Object> get props => [trackId];
}
