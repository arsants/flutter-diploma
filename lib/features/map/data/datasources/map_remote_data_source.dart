import 'package:katai/core/error/exceptions.dart';
import 'package:katai/graphql/Map.req.gql.dart';
import 'package:ferry/ferry.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class MapRemoteDataSource {
  Future<void> updateLocation(LatLng currentLocation);
}

class MapRemoteDataSourceImpl implements MapRemoteDataSource {
  final Client client;

  MapRemoteDataSourceImpl({required this.client});

  @override
  Future<void> updateLocation(LatLng currentLocation) async {
    final updateCurrentLocationReq = GupdateCurrentLocationReq((b) => b
      ..vars.currentLocation.location.latitude = currentLocation.latitude
      ..vars.currentLocation.location.longitude = currentLocation.longitude);

    final response = await client.request(updateCurrentLocationReq).first;

    if (response.hasErrors) {
      throw GraphQLException(errors: response.graphqlErrors!);
    }
  }
}
