import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/map/domain/repositories/map_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UpdateLocation extends UseCase<void, UpdateParams> {
  final MapRepository mapRepository;

  UpdateLocation({
    required this.mapRepository,
  });

  @override
  Future<Either<Failure, void>> call(UpdateParams params) =>
      mapRepository.updateLocation(params.currentLocation);
}

class UpdateParams extends Equatable {
  final LatLng currentLocation;

  const UpdateParams({
    required this.currentLocation,
  });

  @override
  List<Object> get props => [currentLocation];
}
