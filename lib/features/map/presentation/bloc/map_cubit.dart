import 'package:katai/features/map/domain/usecases/map/update_location.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lumberdash/lumberdash.dart';

part 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  final UpdateLocation updateLocation;

  MapCubit({required this.updateLocation}) : super(MapInitial());

  Future<void> updateCurrentLocation(LatLng currentLocation) async {
    logMessage('update Location $currentLocation');
    final result =
        await updateLocation(UpdateParams(currentLocation: currentLocation));
    result.fold(
      (l) => emit(const UserPositionError()),
      (r) => emit(const UserPositionUpdated()),
    );
  }
}
