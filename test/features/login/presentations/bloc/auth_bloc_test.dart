import 'package:bicycle_riders_app_v2/core/error/failures.dart';
import 'package:bicycle_riders_app_v2/features/login/data/models/auth_model.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/entities/auth.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/usecases/apple_auth.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/usecases/get_auth.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/usecases/log_out.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/usecases/registration.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/usecases/update_auth.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/usecases/username_auth.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/usecases/google_auth.dart';
import 'package:bicycle_riders_app_v2/features/login/presentation/bloc/auth_bloc.dart';
import 'package:bicycle_riders_app_v2/features/login/presentation/bloc/bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockAppleAuth extends Mock implements AppleAuth {}

class MockGoogleAuth extends Mock implements GoogleAuth {}

class MockCredAuth extends Mock implements UsernameAuth {}

class MockRegistration extends Mock implements Registration {}

class MockLogOut extends Mock implements LogOut {}
class MockGetAuth extends Mock implements GetAuth {}
class MockUpdateAuth extends Mock implements UpdateAuth {}

void main() {
  late AuthBloc bloc;
  late MockAppleAuth mockAppleAuth;
  late MockGoogleAuth mockGoogleAuth;
  late MockCredAuth mockCredAuth;
  late MockRegistration mockRegistration;
  late MockLogOut mockLogOut;
  late MockGetAuth mockGetAuth;
  late MockUpdateAuth mockUpdateAuth;

  setUp(() {
    mockAppleAuth = MockAppleAuth();
    mockGoogleAuth = MockGoogleAuth();
    mockCredAuth = MockCredAuth();
    mockRegistration = MockRegistration();
    mockLogOut = MockLogOut();
    mockGetAuth = MockGetAuth();
    mockUpdateAuth = MockUpdateAuth();

    bloc = AuthBloc(
      logOut: mockLogOut,
      registration: mockRegistration,
      appleAuth: mockAppleAuth,
      googleAuth: mockGoogleAuth,
      usernameAuth: mockCredAuth,
      getAuth: mockGetAuth,
      updateAuth: mockUpdateAuth,
    );
  });

  test(
    'initialState should be Empty',
    () {
      expect(bloc.state, equals(Empty()));
    },
  );

  group('AuthWithApple', () {
    const tAuth = Auth(accessToken: 'qweqwe', refreshToken: 'qweqwe');

    test(
      'should get data from AppleAuth',
      () async {
        // arrange
        when(mockAppleAuth(any)).thenAnswer((_) async => const Right(tAuth));
        // act
        bloc.add(AuthWithApple());
        await untilCalled(mockAppleAuth(any));
        // assert
        verify(mockAppleAuth(any));
      },
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [Loading, Loaded] when data is gotten successfully',
      build: () => bloc,
      act: (bloc) async {
        // arrange
        when(mockAppleAuth(any)).thenAnswer((_) async => const Right(tAuth));
        // assert
        bloc.add(AuthWithApple());
      },
      expect: [Loading(), Loaded(auth: tAuth)],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [Loading, Error] when getting data fails',
      build: () => bloc,
      act: (bloc) async {
        // arrange
        when(mockAppleAuth(any)).thenAnswer((_) async => Left(ServerFailure()));
        // assert
        bloc.add(AuthWithApple());
      },
      expect: [Loading(), Error(message: serverFailureMessage)],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [Loading, Error] when getting data fails with CacheFailure',
      build: () => bloc,
      act: (bloc) async {
        // arrange
        when(mockAppleAuth(any)).thenAnswer((_) async => Left(CacheFailure()));
        // assert
        bloc.add(AuthWithApple());
      },
      expect: [Loading(), Error(message: cacheFailureMessage)],
    );
  });

  group('AuthWithGoogle', () {
    const tAuth = Auth(accessToken: 'qweqwe', refreshToken: 'qweqwe');

    test(
      'should get data from GoogleAuth',
      () async {
        // arrange
        when(mockGoogleAuth(any)).thenAnswer((_) async => const Right(tAuth));
        // act
        bloc.add(AuthWithGoogle());
        await untilCalled(mockGoogleAuth(any));
        // assert
        verify(mockGoogleAuth(any));
      },
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [Loading, Loaded] when data is gotten successfully',
      build: () => bloc,
      act: (bloc) async {
        // arrange
        when(mockGoogleAuth(any)).thenAnswer((_) async => const Right(tAuth));
        // assert
        bloc.add(AuthWithGoogle());
      },
      expect: [Loading(), Loaded(auth: tAuth)],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [Loading, Error] when getting data fails',
      build: () => bloc,
      act: (bloc) async {
        // arrange
        when(mockGoogleAuth(any))
            .thenAnswer((_) async => Left(ServerFailure()));
        // assert
        bloc.add(AuthWithGoogle());
      },
      expect: [Loading(), Error(message: serverFailureMessage)],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [Loading, Error] when getting data fails with CacheFailure',
      build: () => bloc,
      act: (bloc) async {
        // arrange
        when(mockGoogleAuth(any)).thenAnswer((_) async => Left(CacheFailure()));
        // assert
        bloc.add(AuthWithGoogle());
      },
      expect: [Loading(), Error(message: cacheFailureMessage)],
    );
  });

  group('AuthWithUsername', () {
    const tMapConverted =
        UsernameStruct(username: 'qweqwe', password: 'qweqwe');
    const tAuth = Auth(accessToken: 'qweqwe', refreshToken: 'qweqwe');

    test(
      'should get data from UsernameAuth',
      () async {
        // arrange
        when(mockCredAuth(any)).thenAnswer((_) async => const Right(tAuth));
        // act
        bloc.add(const AuthWithUsername(usernameStruct: tMapConverted));
        await untilCalled(mockCredAuth(any));
        // assert
        verify(mockCredAuth(any));
      },
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [Loading, Loaded] when data is gotten successfully',
      build: () => bloc,
      act: (bloc) async {
        // arrange
        when(mockCredAuth(any)).thenAnswer((_) async => const Right(tAuth));
        // assert
        bloc.add(const AuthWithUsername(usernameStruct: tMapConverted));
      },
      expect: [Loading(), Loaded(auth: tAuth)],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [Loading, Error] when getting data fails',
      build: () => bloc,
      act: (bloc) async {
        // arrange
        when(mockCredAuth(any)).thenAnswer((_) async => Left(ServerFailure()));
        // assert
        bloc.add(const AuthWithUsername(usernameStruct: tMapConverted));
      },
      expect: [Loading(), Error(message: serverFailureMessage)],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [Loading, Error] when getting data fails with CacheFailure',
      build: () => bloc,
      act: (bloc) async {
        // arrange
        when(mockCredAuth(any)).thenAnswer((_) async => Left(CacheFailure()));
        // assert
        bloc.add(const AuthWithUsername(usernameStruct: tMapConverted));
      },
      expect: [Loading(), Error(message: cacheFailureMessage)],
    );
  });

  group('UserLogOut', () {
    const tAuth = Auth(accessToken: null, refreshToken: null);

    test(
      'should get data from UserLogOut',
      () async {
        // arrange
        when(mockLogOut(any)).thenAnswer((_) async => const Right(tAuth));
        // act
        bloc.add(UserLogOut());
        await untilCalled(mockLogOut(any));
        // assert
        verify(mockLogOut(any));
      },
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [Loading, Loaded] when data is gotten successfully',
      build: () => bloc,
      act: (bloc) async {
        // arrange
        when(mockLogOut(any)).thenAnswer((_) async => const Right(tAuth));
        // assert
        bloc.add(UserLogOut());
      },
      expect: [Loading(), Loaded(auth: tAuth)],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [Loading, Error] when getting data fails',
      build: () => bloc,
      act: (bloc) async {
        // arrange
        when(mockLogOut(any)).thenAnswer((_) async => Left(ServerFailure()));
        // assert
        bloc.add(UserLogOut());
      },
      expect: [Loading(), Error(message: serverFailureMessage)],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [Loading, Error] when getting data fails with CacheFailure',
      build: () => bloc,
      act: (bloc) async {
        // arrange
        when(mockLogOut(any)).thenAnswer((_) async => Left(CacheFailure()));
        // assert
        bloc.add(UserLogOut());
      },
      expect: [Loading(), Error(message: cacheFailureMessage)],
    );
  });

  group('UserRegistration', () {
    const tMapConverted = RegistrationStruct(
        username: 'qweqwe',
        email: 'qweqwe',
        password1: 'qweqwe',
        password2: 'qweqwe');
    const tAuth = Auth(accessToken: 'qweqwe', refreshToken: 'qweqwe');

    test(
      'should get data from UsernameAuth',
      () async {
        // arrange
        when(mockRegistration(any)).thenAnswer((_) async => const Right(tAuth));
        // act
        bloc.add(const UserRegistration(registrationStruct: tMapConverted));
        await untilCalled(mockRegistration(any));
        // assert
        verify(mockRegistration(any));
      },
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [Loading, Loaded] when data is gotten successfully',
      build: () => bloc,
      act: (bloc) async {
        // arrange
        when(mockRegistration(any)).thenAnswer((_) async => const Right(tAuth));
        // assert
        bloc.add(const UserRegistration(registrationStruct: tMapConverted));
      },
      expect: [Loading(), Loaded(auth: tAuth)],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [Loading, Error] when getting data fails',
      build: () => bloc,
      act: (bloc) async {
        // arrange
        when(mockRegistration(any))
            .thenAnswer((_) async => Left(ServerFailure()));
        // assert
        bloc.add(const UserRegistration(registrationStruct: tMapConverted));
      },
      expect: [Loading(), Error(message: serverFailureMessage)],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [Loading, Error] when getting data fails with CacheFailure',
      build: () => bloc,
      act: (bloc) async {
        // arrange
        when(mockRegistration(any))
            .thenAnswer((_) async => Left(CacheFailure()));
        // assert
        bloc.add(const UserRegistration(registrationStruct: tMapConverted));
      },
      expect: [Loading(), Error(message: cacheFailureMessage)],
    );
  });
}
