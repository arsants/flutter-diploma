import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/ride/domain/entities/ride.dart';
import 'package:katai/features/ride/domain/repositories/ride_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class JoinRide implements UseCase<Ride, JoinRideParams> {
  final RideRepository repository;

  JoinRide({required this.repository});

  @override
  Future<Either<Failure, Ride>> call(JoinRideParams params) =>
      repository.joinRide(params.code);
}

class JoinRideParams extends Equatable {
  final String code;

  const JoinRideParams({
    required this.code,
  });

  @override
  List<Object> get props => [code];
}
