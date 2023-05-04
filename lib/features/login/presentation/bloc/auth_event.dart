import 'package:katai/features/login/data/models/auth_model.dart';
import 'package:katai/features/login/domain/entities/auth.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class AuthEvent extends Equatable {
  final List p;

  const AuthEvent([this.p = const <dynamic>[]]);

  @override
  List<Object> get props => [p];
}

class AuthWithApple extends AuthEvent {
  @override
  List<Object> get props => [];
}

class AuthWithGoogle extends AuthEvent {
  @override
  List<Object> get props => [];
}

class UserLogOut extends AuthEvent {
  @override
  List<Object> get props => [];
}

class GetAuthEvent extends AuthEvent {
  @override
  List<Object> get props => [];
}

class UpdateAuthEvent extends AuthEvent {
  final Auth auth;

  const UpdateAuthEvent({required this.auth});

  @override
  List<Object> get props => [auth];
}

class AuthWithUsername extends AuthEvent {
  final UsernameStruct usernameStruct;

  const AuthWithUsername({required this.usernameStruct});

  @override
  List<Object> get props => [usernameStruct];
}

class UserRegistration extends AuthEvent {
  final RegistrationStruct registrationStruct;

  const UserRegistration({required this.registrationStruct});

  @override
  List<Object> get props => [registrationStruct];
}
