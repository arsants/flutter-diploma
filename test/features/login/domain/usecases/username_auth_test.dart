import 'package:bicycle_riders_app_v2/features/login/data/models/auth_model.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/entities/auth.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/repositories/auth_repository.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/usecases/username_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
   late UsernameAuth usecase;
   late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    usecase = UsernameAuth(mockAuthRepository);
  });

  const tAuth = Auth(
      accessToken: "5PW1hBwiASa7jihYtn5r1iXUdZ62",
      refreshToken: "5PW1hBwiASa7jihYtn5r1iXUdZ62");

  const UsernameStruct creds = UsernameStruct(username: '5PW1hBwiASa7jihYtn5r1iXUdZ62', password: "5PW1hBwiASa7jihYtn5r1iXUdZ62");

  test(
    'should auth with username',
        () async {
      //arrange
      when(mockAuthRepository.usernameAuth(creds))
          .thenAnswer((_) async => const Right(tAuth));
      //act
      final result = await usecase(const UsernameParams(credential: creds));
      // assert
      expect(result, const Right(tAuth));
      verify(mockAuthRepository.usernameAuth(creds));
      verifyNoMoreInteractions(mockAuthRepository);
    },
  );
}
