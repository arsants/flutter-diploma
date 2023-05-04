import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/profile/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';

import '../entities/user.dart';

class GetMyProfile implements UseCaseStream<User, NoParams> {
  final UserRepository repository;

  GetMyProfile(this.repository);

  @override
  Stream<Either<Failure, User>> call(NoParams params) => repository.getMe();
}
