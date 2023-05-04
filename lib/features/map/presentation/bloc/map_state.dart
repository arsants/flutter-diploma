part of 'map_cubit.dart';

abstract class MapState extends Equatable {
  const MapState();
}

class MapInitial extends MapState {
  @override
  List<Object> get props => [];
}

class UserPositionUpdated extends MapState {
  const UserPositionUpdated();

  @override
  List<Object?> get props => [];
}

class UserPositionError extends MapState {
  const UserPositionError();

  @override
  List<Object?> get props => [];
}
