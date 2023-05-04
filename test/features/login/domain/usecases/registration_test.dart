import 'package:bicycle_riders_app_v2/features/login/data/models/auth_model.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/entities/auth.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/repositories/auth_repository.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/usecases/registration.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late Registration usecase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    usecase = Registration(mockAuthRepository);
  });

  const tAuth = Auth(
      accessToken: "5PW1hBwiASa7jihYtn5r1iXUdZ62",
      refreshToken: "5PW1hBwiASa7jihYtn5r1iXUdZ62");

  const RegistrationStruct creds = RegistrationStruct(
      username: "null", email: "null", password1: "null", password2: "null");

  test(
    'should register the new user and return the Auth',
    () async {
      //arrange
      when(mockAuthRepository.registration(creds))
          .thenAnswer((_) async => const Right(tAuth));
      //act
      final result = await usecase(const RegistrationParams(credential: creds));
      // assert
      expect(result, const Right(tAuth));
      verify(mockAuthRepository.registration(creds));
      verifyNoMoreInteractions(mockAuthRepository);
    },
  );
}
