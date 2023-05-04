import 'package:katai/core/error/failures.dart';
import 'package:katai/features/ride/domain/entities/ride.dart';
import 'package:dartz/dartz.dart';

abstract class RideRepository {
  Stream<Either<Failure, Ride>> getRide(Ride ride);

  Future<Either<Failure, Ride>> createRide(Duration duration);

  Future<Either<Failure, Ride>> createHistoricRide(String trackId);

  Future<Either<Failure, Ride>> joinRide(String code);

  Future<Either<Failure, void>> leaveRide(Ride ride);

  Future<Either<Failure, void>> startRide(Ride ride, Duration duration);
}
