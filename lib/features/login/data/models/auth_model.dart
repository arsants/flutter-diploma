import 'package:katai/features/login/domain/entities/auth.dart';
import 'package:equatable/equatable.dart';

class GoogleStruct extends Equatable {
  final String accessToken;

  const GoogleStruct({required this.accessToken});

  factory GoogleStruct.fromJson(Map<String, dynamic> json) {
    return GoogleStruct(accessToken: json['access_token']);
  }

  Map<String, dynamic> toJson() {
    return {
      "access_token": accessToken,
    };
  }

  @override
  List<Object> get props => [accessToken];
}

class AppleStruct extends Equatable {
  final String idToken;
  final String code;

  const AppleStruct({required this.idToken, required this.code});

  factory AppleStruct.fromJson(Map<String, dynamic> json) {
    return AppleStruct(idToken: json['id_token'], code: json['code']);
  }

  Map<String, dynamic> toJson() {
    return {
      "id_token": idToken,
      "code": code,
    };
  }

  @override
  List<Object> get props => [idToken, code];
}

class UsernameStruct extends Equatable {
  final String username;
  final String password;

  const UsernameStruct({required this.username, required this.password});

  factory UsernameStruct.fromJson(Map<String, dynamic> json) {
    return UsernameStruct(
        username: json['username'], password: json['password']);
  }

  Map<String, dynamic> toJson() {
    return {
      "username": username,
      "password": password,
    };
  }

  @override
  List<Object> get props => [username, password];
}

class RegistrationStruct extends Equatable {
  final String username;
  final String password1;
  final String password2;

  const RegistrationStruct(
      {required this.username,
      required this.password1,
      required this.password2});

  factory RegistrationStruct.fromJson(Map<String, dynamic> json) {
    return RegistrationStruct(
      username: json['username'],
      password1: json['password1'],
      password2: json['password2'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "username": username,
      "password1": password1,
      "password2": password2,
    };
  }

  @override
  List<Object> get props => [username, password1, password2];
}

class AuthModel extends Auth {
  const AuthModel({
    required accessToken,
  }) : super(accessToken: accessToken);

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      accessToken: json['token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "token": accessToken,
    };
  }

  @override
  List<Object> get props => [accessToken];
}
