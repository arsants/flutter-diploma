import 'package:bicycle_riders_app_v2/core/usecases/usecase.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/entities/auth.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/repositories/auth_repository.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/usecases/google_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
   late GoogleAuth usecase;
   late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    usecase = GoogleAuth(mockAuthRepository);
  });

  const tAuth = Auth(
      accessToken: "5PW1hBwiASa7jihYtn5r1iXUdZ62",
      refreshToken: "5PW1hBwiASa7jihYtn5r1iXUdZ62");


  test(
    'should auth with google',
    () async {
      //arrange
      when(mockAuthRepository.googleAuth())
          .thenAnswer((_) async => const Right(tAuth));
      //act
      final result = await usecase(NoParams());
      // assert
      expect(result, const Right(tAuth));
      verify(mockAuthRepository.googleAuth());
      verifyNoMoreInteractions(mockAuthRepository);
    },
  );
}
