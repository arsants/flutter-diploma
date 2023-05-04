import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/login/domain/entities/auth.dart';
import 'package:katai/features/login/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class AppleAuth implements UseCase<Auth, NoParams> {
  final AuthRepository repository;

  AppleAuth(this.repository);

  @override
  Future<Either<Failure, Auth>> call(NoParams params) =>
      repository.appleAuth();
}