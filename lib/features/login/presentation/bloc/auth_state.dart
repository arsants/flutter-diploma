import 'package:katai/features/login/domain/entities/auth.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class AuthState extends Equatable {
  final List p;

  const AuthState([this.p = const <dynamic>[]]);

  @override
  List<Object> get props => [p];
}

class AuthFailureState extends AuthState {}

class Empty extends AuthState {}

class Loading extends AuthState {}

class Loaded extends AuthState {
  final Auth auth;

  Loaded({required this.auth}) : super([auth]);
}

class Error extends AuthState {
  final String message;

  Error({required this.message}) : super([message]);
}
