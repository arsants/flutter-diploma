import 'package:katai/features/profile/domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required username,
    required firstName,
    required lastName,
    required telegram,
    required isSuperuser,
    required isPublic,
    required totalMeters,
    required finishedRides,
  }) : super(
          username: username,
          firstName: firstName,
          lastName: lastName,
          telegram: telegram,
          totalMeters: totalMeters,
          finishedRides: finishedRides,
          isSuperuser: isSuperuser,
          isPublic: isPublic,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      firstName: json['firstName'],
      lastName: json['lastName'],
      username: json['username'],
      finishedRides: json['finishedRides'],
      totalMeters: json['totalMeters'],
      isSuperuser: json['isSuperuser'],
      telegram: json['profile']['telegram'],
      isPublic: json['profile']['isPublic'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "username": username,
      "firstName": firstName,
      "lastName": lastName,
      "telegram": telegram,
      "totalMeters": totalMeters,
      "finishedRides": finishedRides,
      "isSuperuser": isSuperuser,
      "isPublic": isPublic,
    };
  }

  @override
  List<Object> get props => [username, firstName, lastName];
}
