import 'package:bicycle_riders_app_v2/core/usecases/usecase.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/repositories/auth_repository.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/usecases/log_out.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late LogOut usecase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    usecase = LogOut(mockAuthRepository);
  });

  test(
    'should logout user',
        () async {
      //arrange
      when(mockAuthRepository.clearCache())
          .thenAnswer((_) async => const Right(null));
      //act
      final result = await usecase(NoParams());
      // assert
      expect(result, const Right(null));
      verify(mockAuthRepository.clearCache());
      verifyNoMoreInteractions(mockAuthRepository);
    },
  );
}
