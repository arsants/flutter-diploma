import 'package:katai/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class MapRepository {
  Future<Either<Failure, void>> updateLocation(LatLng currentLocation);
}
