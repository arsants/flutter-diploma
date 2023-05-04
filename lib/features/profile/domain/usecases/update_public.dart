import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/profile/data/models/user_model.dart';
import 'package:katai/features/profile/domain/entities/user.dart';
import 'package:katai/features/profile/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class UpdatePublic implements UseCase<void, UpdatePublicParams> {
  final UserRepository repository;

  UpdatePublic(this.repository);

  @override
  Future<Either<Failure, void>> call(UpdatePublicParams params) =>
      repository.updatePublic(params.isPublic);
}

class UpdatePublicParams extends Equatable {
  final bool isPublic;

  const UpdatePublicParams({
    required this.isPublic,
  });

  @override
  List<Object> get props => [isPublic];
}
