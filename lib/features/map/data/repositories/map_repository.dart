import 'package:katai/core/error/exceptions.dart';
import 'package:katai/core/error/failures.dart';
import 'package:katai/core/network/network_info.dart';
import 'package:katai/features/map/data/datasources/map_remote_data_source.dart';
import 'package:katai/features/map/domain/repositories/map_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter_platform_interface/src/types/location.dart';

class MapRepositoryImpl implements MapRepository {
  final MapRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  const MapRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, void>> updateLocation(LatLng currentLocation) async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await remoteDataSource.updateLocation(currentLocation));
      } on GraphQLException catch (e) {
        return Left(ServerFailure(errors: e.errors));
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
