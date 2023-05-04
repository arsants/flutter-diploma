import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/login/data/models/auth_model.dart';
import 'package:katai/features/login/domain/entities/auth.dart';
import 'package:katai/features/login/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class UsernameAuth implements UseCase<Auth, UsernameParams> {
  final AuthRepository repository;

  UsernameAuth(this.repository);

  @override
  Future<Either<Failure, Auth>> call(UsernameParams params) =>
      repository.usernameAuth(params.credential);
}

class UsernameParams extends Equatable {
  final UsernameStruct credential;

  const UsernameParams({
    required this.credential,
  });

  @override
  List<Object> get props => [credential];
}
