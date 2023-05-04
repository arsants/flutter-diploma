void main(){
  return;
}
//
// import 'package:bicycle_riders_app_v2/core/error/exceptions.dart';
// import 'package:bicycle_riders_app_v2/core/error/failures.dart';
// import 'package:bicycle_riders_app_v2/core/network/network_info.dart';
// import 'package:bicycle_riders_app_v2/features/login/data/datasources/auth_local_data_source.dart';
// import 'package:bicycle_riders_app_v2/features/login/data/datasources/auth_remote_data_source.dart';
// import 'package:bicycle_riders_app_v2/features/login/data/models/auth_model.dart';
// import 'package:bicycle_riders_app_v2/features/login/data/repositories/auth_repository_impl.dart';
// import 'package:bicycle_riders_app_v2/features/login/domain/entities/auth.dart';
// import 'package:dartz/dartz.dart';
// import 'package:mockito/mockito.dart';
// import 'package:flutter_test/flutter_test.dart';
//
// class MockLocalDataSource extends Mock implements AuthLocalDataSource {}
//
// class MockRemoteDataSource extends Mock implements AuthRemoteDataSource {}
//
// class MockNetworkInfo extends Mock implements NetworkInfo {}
//
//
// void main() {
//   AuthRepositoryImpl repository;
//   MockLocalDataSource mockLocalDataSource;
//   MockRemoteDataSource mockRemoteDataSource;
//   MockNetworkInfo mockNetworkInfo;
//
//   setUp(() {
//     mockLocalDataSource = MockLocalDataSource();
//     mockRemoteDataSource = MockRemoteDataSource();
//     mockNetworkInfo = MockNetworkInfo();
//     repository = AuthRepositoryImpl(
//         localDataSource: mockLocalDataSource,
//         remoteDataSource: mockRemoteDataSource,
//         networkInfo: mockNetworkInfo);
//   });
//
//   void runTestsOffline(Function body) {
//     group("device is offline", () {
//       setUp(() {
//         when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
//       });
//       body();
//     });
//   }
//
//   void runTestsOnline(Function body) {
//     group("device is online", () {
//       setUp(() {
//         when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
//       });
//       body();
//     });
//   }
//
//   group("appleAuth", () {
//     const tAuthModel = AuthModel(
//         accessToken: '5PW1hBwiASa7jihYtn5r1iXUdZ62',
//         refreshToken: '5PW1hBwiASa7jihYtn5r1iXUdZ62');
//     const Auth tAuth = tAuthModel;
//     const AppleStruct credential = AppleStruct(
//         code: '5PW1hBwiASa7jihYtn5r1iXUdZ62',
//         idToken: '5PW1hBwiASa7jihYtn5r1iXUdZ62');
//
//     test('should checked if the device is online', () async {
//       //arrange
//       when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
//       //act
//       repository.appleAuth();
//       // assert
//       verify(mockNetworkInfo.isConnected);
//     });
//
//     runTestsOnline(() {
//       test(
//           'should cache data locally when the call to remote data source is successful',
//           () async {
//         //arrange
//             when(mockRemoteDataSource.appleAuth(credential))
//                 .thenAnswer((_) async => tAuthModel);
//         when(repository.getAppleCred()).thenAnswer(
//             (_) => Future.value(const AppleStruct(idToken: '', code: '')));
//         when(mockLocalDataSource.getLastAuth()).thenThrow(CacheException());
//         //act
//         final result = await repository.appleAuth();
//         // assert
//         verify(repository.getAppleCred());
//         verify(mockRemoteDataSource.appleAuth(credential));
//         verify(mockLocalDataSource.getLastAuth());
//         expect(result, equals(const Right(tAuth)));
//       });
//       test('should return cache data when cache is not null', () async {
//         //arrange
//         when(mockLocalDataSource.getLastAuth())
//             .thenAnswer((_) async => tAuthModel);
//         //act
//         final result = await repository.appleAuth();
//         // assert
//         verifyZeroInteractions(mockRemoteDataSource);
//         verify(mockLocalDataSource.getLastAuth());
//         expect(result, equals(const Right(tAuth)));
//       });
//
//       test(
//           'should return server failure when there is no cache and server unavailable',
//           () async {
//         //arrange
//         when(mockRemoteDataSource.appleAuth(credential))
//             .thenThrow(ServerException());
//         //act
//         final result = await repository.appleAuth();
//         // assert
//         verify(mockRemoteDataSource.appleAuth(credential));
//         verifyZeroInteractions(mockLocalDataSource);
//         expect(result, equals(Left(ServerFailure())));
//       });
//     });
//
//     runTestsOffline(() {
//       test(
//           'should return last locally cached data when the cached data is present',
//           () async {
//         //arrange
//         when(mockLocalDataSource.getLastAuth())
//             .thenAnswer((_) async => tAuthModel);
//         //act
//         final result = await repository.appleAuth();
//         // assert
//         verifyZeroInteractions(mockRemoteDataSource);
//         expect(result, equals(Left(OfflineFailure())));
//       });
//     });
//   });
// }
