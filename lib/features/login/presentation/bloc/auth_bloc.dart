import 'dart:async';

import 'package:katai/core/error/failuremap.dart';
import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/login/domain/entities/auth.dart';
import 'package:katai/features/login/domain/usecases/apple_auth.dart';
import 'package:katai/features/login/domain/usecases/get_auth.dart';
import 'package:katai/features/login/domain/usecases/log_out.dart';
import 'package:katai/features/login/domain/usecases/registration.dart';
import 'package:katai/features/login/domain/usecases/username_auth.dart';
import 'package:katai/features/login/domain/usecases/google_auth.dart';
import 'package:katai/features/login/presentation/bloc/auth_event.dart';
import 'package:katai/features/login/presentation/bloc/auth_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AppleAuth appleAuth;
  final GoogleAuth googleAuth;
  final UsernameAuth usernameAuth;
  final Registration registration;
  final LogOut logOut;
  final GetAuth getAuth;

  AuthBloc({
    required this.registration,
    required this.logOut,
    required this.appleAuth,
    required this.googleAuth,
    required this.usernameAuth,
    required this.getAuth,
  }) : super(Empty());

  Stream<AuthState> _callAction<T>(
      Future<Either<Failure, Auth>> Function(T params) f, T params) async* {
    yield Loading();
    final failureOrAuth = await f(params);
    yield* failureOrAuth.fold(
        (Failure failure) => Stream.fromIterable(
            [Error(message: mapFailureToMessage(failure))]),
        (Auth auth) => Stream.fromIterable([Loaded(auth: auth)]));
  }

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is AuthWithUsername) {
      yield* _callAction(
          usernameAuth, UsernameParams(credential: event.usernameStruct));
    } else if (event is UserRegistration) {
      yield* _callAction(registration,
          RegistrationParams(credential: event.registrationStruct));
    } else if (event is AuthWithGoogle) {
      yield* _callAction(googleAuth, NoParams());
    } else if (event is AuthWithApple) {
      yield* _callAction(appleAuth, NoParams());
    } else if (event is UserLogOut) {
      yield* _callAction(logOut, NoParams());
    } else if (event is GetAuthEvent) {
      yield* _callAction(getAuth, NoParams());
    }
  }
}
