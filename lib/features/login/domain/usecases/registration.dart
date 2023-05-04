import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/login/data/models/auth_model.dart';
import 'package:katai/features/login/domain/entities/auth.dart';
import 'package:katai/features/login/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:lumberdash/lumberdash.dart';

class Registration implements UseCase<Auth, RegistrationParams> {
  final AuthRepository repository;

  Registration(this.repository);

  @override
  Future<Either<Failure, Auth>> call(RegistrationParams params) {
    logMessage(params.credential.toString());
    return repository.registration(params.credential);
  }
}

class RegistrationParams extends Equatable {
  final RegistrationStruct credential;

  const RegistrationParams({
    required this.credential,
  });

  @override
  List<Object> get props => [credential];
}
