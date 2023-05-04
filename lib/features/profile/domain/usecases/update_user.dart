import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/profile/data/models/user_model.dart';
import 'package:katai/features/profile/domain/entities/user.dart';
import 'package:katai/features/profile/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class UpdateUser implements UseCase<User, UpdateUserParams> {
  final UserRepository repository;

  UpdateUser(this.repository);

  @override
  Future<Either<Failure, User>> call(UpdateUserParams params) =>
      repository.updateMe(
          params.firstName, params.lastName, params.username, params.telegram);
}

class UpdateUserParams extends Equatable {
  final String firstName;
  final String lastName;
  final String username;
  final String telegram;

  const UpdateUserParams({
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.telegram,
  });

  @override
  List<Object> get props => [firstName, lastName, username, telegram];
}
