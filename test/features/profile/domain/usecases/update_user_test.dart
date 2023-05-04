import 'package:bicycle_riders_app_v2/features/profile/domain/entities/user.dart';
import 'package:bicycle_riders_app_v2/features/profile/domain/repositories/user_repository.dart';
import 'package:bicycle_riders_app_v2/features/profile/domain/usecases/update_user.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  UpdateUser usecase;
  MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    usecase = UpdateUser(mockUserRepository);
  });

  const tUpdate = User(
    username: null,
    firstName: null,
    lastName: null,
    email: null,
    avatar: null,
  );

  const tUser = User(
    username: "test",
    firstName: "test",
    lastName: "test",
    email: "arseniy.anciferov@gmail.com",
    avatar:
        "https://lh3.googleusercontent.com/a-/AOh14GiE8rTrhFxw5GsdPLGL_W3Gf8iQXtil9_et4e9Y6g=s96-c",
  );

  test(
    'should get user from the repository',
    () async {
      //arrange
      when(mockUserRepository.updateUser(any))
          .thenAnswer((_) async => const Right(tUser));
      //act
      final result = await usecase(UpdateParams(userModel: tUpdate));
      // assert
      expect(result, const Right(tUser));
      verify(mockUserRepository.updateUser(any));
      verifyNoMoreInteractions(mockUserRepository);
    },
  );
}
