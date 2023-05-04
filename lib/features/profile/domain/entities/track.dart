import 'package:equatable/equatable.dart';

class Track extends Equatable {
  final String trackId;
  final DateTime endTime;
  final double distanceMeters;

  const Track({
    required this.trackId,
    required this.endTime,
    required this.distanceMeters,
  });

  @override
  List<Object?> get props => [
    trackId,
    endTime,
    distanceMeters
  ];
}
