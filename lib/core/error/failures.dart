import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

class ServerFailure extends Failure {
  final List<dynamic> errors;

  ServerFailure({required this.errors});

  @override
  List<Object> get props => [];
}

class CacheFailure extends Failure {
  @override
  List<Object> get props => [];
}

class OfflineFailure extends Failure {
  @override
  List<Object> get props => [];
}

class AuthFailure extends Failure {
  @override
  List<Object> get props => [];
}

class CustomFailure extends Failure {
  final String message;

  CustomFailure({required this.message});

  @override
  List<Object> get props => [];
}
