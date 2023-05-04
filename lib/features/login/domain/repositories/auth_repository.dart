import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/login/data/models/auth_model.dart';
import 'package:katai/features/login/domain/entities/auth.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, Auth>> appleAuth();

  Future<Either<Failure, Auth>> googleAuth();

  Future<Either<Failure, Auth>> usernameAuth(UsernameStruct credential);

  Future<Either<Failure, Auth>> registration(RegistrationStruct credential);

  Future<Either<Failure, Auth>> getAuth();

  Future<Either<Failure, Auth>> clearCache();
}


