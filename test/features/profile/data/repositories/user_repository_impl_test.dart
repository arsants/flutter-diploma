import 'package:bicycle_riders_app_v2/core/error/exceptions.dart';
import 'package:bicycle_riders_app_v2/core/error/failures.dart';
import 'package:bicycle_riders_app_v2/core/network/network_info.dart';
import 'package:bicycle_riders_app_v2/features/profile/data/datasources/user_local_data_source.dart';
import 'package:bicycle_riders_app_v2/features/profile/data/datasources/user_remote_data_source.dart';
import 'package:bicycle_riders_app_v2/features/profile/data/models/user_model.dart';
import 'package:bicycle_riders_app_v2/features/profile/data/repositories/user_repository_impl.dart';
import 'package:bicycle_riders_app_v2/features/profile/domain/entities/user.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockRemoteDataSource extends Mock implements UserRemoteDataSource {}

class MockLocalDataSource extends Mock implements UserLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
   UserRepositoryImpl repository;
   MockRemoteDataSource mockRemoteDataSource;
   MockLocalDataSource mockLocalDataSource;
   MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = UserRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  void runTestsOffline(Function body) {
    group("device is offline", () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });

      body();
    });
  }

  void runTestsOnline(Function body) {
    group("device is online", () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });

      body();
    });
  }

  group("getUser", () {
    const tUserModel = UserModel(
        username: 'test',
        firstName: 'test',
        lastName: 'test',
        email: "arseniy.anciferov@gmail.com",
        avatar:
            "https://lh3.googleusercontent.com/a-/AOh14GiE8rTrhFxw5GsdPLGL_W3Gf8iQXtil9_et4e9Y6g=s96-c");
    const User tUser = tUserModel;

    test('should checked if the device is online', () async {
      //arrange
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      //act
      repository.getUser();
      // assert
      verify(mockNetworkInfo.isConnected);
    });

    runTestsOnline(() {
      test(
          'should return data when the call to remote data source is successful',
          () async {
        //arrange
        when(mockRemoteDataSource.getUser())
            .thenAnswer((_) async => tUserModel);
        //act
        final result = await repository.getUser();
        // assert
        verify(mockRemoteDataSource.getUser());
        expect(result, equals(const Right(tUser)));
      });
      test(
          'should cache data locally when the call to remote data source is successful',
          () async {
        //arrange
        when(mockRemoteDataSource.getUser())
            .thenAnswer((_) async => tUserModel);
        //act
        await repository.getUser();
        // assert
        verify(mockRemoteDataSource.getUser());
        verify(mockLocalDataSource.cacheUser(tUserModel));
      });

      test(
          'should return server failure when the call to remote data source is unsuccessful',
          () async {
        //arrange
        when(mockRemoteDataSource.getUser()).thenThrow(ServerException());
        //act
        final result = await repository.getUser();
        // assert
        verify(mockRemoteDataSource.getUser());
        verifyZeroInteractions(mockLocalDataSource);
        expect(result, equals(Left(ServerFailure())));
      });
    });

    runTestsOffline(() {

      test(
          'should return last locally cached data when the cached data is present',
          () async {
        //arrange
        when(mockLocalDataSource.getLastUser())
            .thenAnswer((_) async => tUserModel);
        //act
        final result = await repository.getUser();
        // assert
        verifyZeroInteractions(mockRemoteDataSource);
        verify(mockLocalDataSource.getLastUser());
        expect(result, equals(const Right(tUser)));
      });

      test('should return CacheFailure when there is no cached data present',
          () async {
        //arrange
        when(mockLocalDataSource.getLastUser()).thenThrow(CacheException());
        //act
        final result = await repository.getUser();
        // assert
        verifyZeroInteractions(mockRemoteDataSource);
        verify(mockLocalDataSource.getLastUser());
        expect(result, equals(Left(CacheFailure())));
      });
    });
  });
}
