import 'package:equatable/equatable.dart';
import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/profile/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';

import '../entities/user.dart';

class GetUserProfile implements UseCaseStream<User, GetUserProfileParams> {
  final UserRepository repository;

  GetUserProfile(this.repository);

  @override
  Stream<Either<Failure, User>> call(GetUserProfileParams params) =>
      repository.getUser(params.username);
}

class GetUserProfileParams extends Equatable {
  final String username;

  const GetUserProfileParams({
    required this.username,
  });

  @override
  List<Object> get props => [username];
}
