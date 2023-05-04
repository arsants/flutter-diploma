import 'package:katai/core/error/exceptions.dart';
import 'package:katai/core/error/failures.dart';
import 'package:katai/core/network/network_info.dart';
import 'package:katai/features/ride/data/datasources/ride_remote_data_source.dart';
import 'package:katai/features/ride/domain/entities/ride.dart';
import 'package:katai/features/ride/domain/repositories/ride_repository.dart';
import 'package:dartz/dartz.dart';

class RideRepositoryImpl implements RideRepository {
  final RideRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  const RideRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Stream<Either<Failure, Ride>> getRide(Ride ride) {
    return remoteDataSource.getRide(ride.id);
  }

  @override
  Future<Either<Failure, Ride>> createRide(Duration duration) async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await remoteDataSource.createRide(duration));
      } on GraphQLException catch (e) {
        return Left(ServerFailure(errors: e.errors));
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, Ride>> joinRide(String code) async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await remoteDataSource.joinRide(code));
      } on GraphQLException catch (e) {
        return Left(ServerFailure(errors: e.errors));
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, void>> leaveRide(Ride ride) async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await remoteDataSource.leaveRide(ride.id));
      } on GraphQLException catch (e) {
        return Left(ServerFailure(errors: e.errors));
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, void>> startRide(Ride ride, Duration duration) async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await remoteDataSource.startRide(ride.id, duration));
      } on GraphQLException catch (e) {
        return Left(ServerFailure(errors: e.errors));
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, Ride>> createHistoricRide(String trackId) async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await remoteDataSource.createHistoricRide(trackId));
      } on GraphQLException catch (e) {
        return Left(ServerFailure(errors: e.errors));
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
