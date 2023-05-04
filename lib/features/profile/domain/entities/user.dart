import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String firstName;
  final String lastName;
  final String username;
  final String? telegram;
  final double totalMeters;
  final int finishedRides;
  final bool isSuperuser;
  final bool isPublic;

  const User({
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.telegram,
    required this.totalMeters,
    required this.finishedRides,
    required this.isSuperuser,
    required this.isPublic,
  });

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        username,
        telegram,
        totalMeters,
        finishedRides,
        isSuperuser,
        isPublic
      ];
}
