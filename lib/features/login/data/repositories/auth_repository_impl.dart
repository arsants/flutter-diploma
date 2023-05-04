import 'package:katai/core/error/exceptions.dart';
import 'package:katai/core/error/failures.dart';
import 'package:katai/core/network/network_info.dart';
import 'package:katai/features/login/data/datasources/auth_local_data_source.dart';
import 'package:katai/features/login/data/datasources/auth_remote_data_source.dart';
import 'package:katai/features/login/data/models/auth_model.dart';
import 'package:katai/features/login/domain/entities/auth.dart';
import 'package:katai/features/login/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lumberdash/lumberdash.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

mixin AuthRepositoryHelper {
  Future<AppleStruct> getAppleCred() async {
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );
    return AppleStruct(
        idToken: credential.identityToken!, code: credential.authorizationCode);
  }

  Future<GoogleStruct> getGoogleCred() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'profile',
      ],
    );
    final googleUser = await _googleSignIn.signIn();
    final googleAuth = await googleUser!.authentication;
    return GoogleStruct(accessToken: googleAuth.accessToken!);
  }

  Future<UsernameStruct> Function() getInputUsername(
          UsernameStruct credential) =>
      () => Future.value(credential);

  Future<RegistrationStruct> Function() getInputRegistration(
      RegistrationStruct credential) {
    return () => Future.value(credential);
  }
}

class AuthRepositoryImpl with AuthRepositoryHelper implements AuthRepository {
  final AuthLocalDataSource localDataSource;
  final AuthRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl(
      {required this.localDataSource,
      required this.remoteDataSource,
      required this.networkInfo});

  Future<Either<Failure, Auth>> _authMethod<T>(
      Future<AuthModel> Function(T credential) f,
      Future<T> Function() getCredential) async {
    if (await networkInfo.isConnected) {
      try {
        final model = await localDataSource.getLastAuth();
        logMessage('Model ${model.toJson()}');
        return Right(model);
      } on CacheException {
        try {
          final remoteAuthModel = await f(await getCredential());
          logMessage('Remote Model ${remoteAuthModel.toJson()}');
          await localDataSource.cacheAuth(remoteAuthModel);
          return Right(remoteAuthModel);
        } on GraphQLException catch (e) {
          return Left(ServerFailure(errors: e.errors));
        }
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, Auth>> appleAuth() =>
      _authMethod(remoteDataSource.appleAuth, getAppleCred);

  @override
  Future<Either<Failure, Auth>> usernameAuth(UsernameStruct credential) =>
      _authMethod(remoteDataSource.usernameAuth, getInputUsername(credential));

  @override
  Future<Either<Failure, Auth>> googleAuth() =>
      _authMethod(remoteDataSource.googleAuth, getGoogleCred);

  @override
  Future<Either<Failure, Auth>> registration(RegistrationStruct credential) =>
      _authMethod(
          remoteDataSource.registration, getInputRegistration(credential));

  @override
  Future<Either<Failure, Auth>> clearCache() async {
    try {
      await localDataSource.clearCache();
      return const Right(Auth(accessToken: ""));
    } catch (e) {
      logError(e);
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Auth>> getAuth() async {
    try {
      final model = await localDataSource.getLastAuth();
      return Right(model);
    } catch (e) {
      logError(e);
      return Left(CacheFailure());
    }
  }
}
