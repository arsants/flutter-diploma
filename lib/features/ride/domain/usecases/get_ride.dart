import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/ride/domain/entities/ride.dart';
import 'package:katai/features/ride/domain/repositories/ride_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetRide implements UseCaseStream<Ride, GetRideParams> {
  final RideRepository repository;

  GetRide({required this.repository});

  @override
  Stream<Either<Failure, Ride>> call(GetRideParams params) =>
      repository.getRide(params.ride);
}

class GetRideParams extends Equatable {
  final Ride ride;

  const GetRideParams({
    required this.ride,
  });

  @override
  List<Object> get props => [ride];
}
