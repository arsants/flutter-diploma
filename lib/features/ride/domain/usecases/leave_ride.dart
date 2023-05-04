import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/ride/domain/entities/ride.dart';
import 'package:katai/features/ride/domain/repositories/ride_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class LeaveRide implements UseCase<void, LeaveRideParams> {
  final RideRepository repository;

  LeaveRide({required this.repository});

  @override
  Future<Either<Failure, void>> call(LeaveRideParams params) =>
      repository.leaveRide(params.ride);
}

class LeaveRideParams extends Equatable {
  final Ride ride;

  const LeaveRideParams({
    required this.ride,
  });

  @override
  List<Object> get props => [ride];
}
