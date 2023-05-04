// import 'dart:convert';
//
// import 'package:bicycle_riders_app_v2/features/profile/data/datasources/user_local_data_source.dart';
// import 'package:bicycle_riders_app_v2/features/profile/data/models/user_model.dart';
// import 'package:mockito/mockito.dart';
// import 'package:flutter_test/flutter_test.dart';
//
// import '../../../../fixtures/fixture_reader.dart';
//
// class MockSharedPreferences extends Mock implements SharedPreferences {}
//
// void main() {
//    UserLocalDataSourceImpl dataSource;
//    MockSharedPreferences mockSharedPreferences;
//
//   setUp(() {
//     mockSharedPreferences = MockSharedPreferences();
//     dataSource =
//         UserLocalDataSourceImpl(sharedPreferences: mockSharedPreferences);
//   });
//
//   group('user cached', () {
//     final tUserModel =
//         UserModel.fromJson(json.decode(fixture('user_cached.json')));
//
//     test(
//       'should return User from SharedPreferences when there is one in the cache',
//       () async {
//         // arrange
//         when(mockSharedPreferences.getString(any))
//             .thenReturn(fixture('user_cached.json'));
//         // act
//         final result = await dataSource.getLastUser();
//         // assert
//         verify(mockSharedPreferences.getString(CACHED_USER));
//         expect(result, tUserModel);
//       },
//     );
//
//     // test(
//     //   'should throw a CacheException when there is not a cached value',
//     //   () async {
//     //     // arrange
//     //     when(mockSharedPreferences.getString(any)).thenReturn(null);
//     //     // act
//     //     final call = dataSource.getLastUser;
//     //     // assert
//     //     expect(() => call(), throwsA(isA<CacheException>()));
//     //   },
//     // );
//
//     group('cacheUser', () {
//       final tUserModel = UserModel(
//           uid: "5PW1hBwiASa7jihYtn5r1iXUdZ62",
//           name: "Арсений Анциферов",
//           email: "arseniy.anciferov@gmail.com",
//           avatar:
//               "https://lh3.googleusercontent.com/a-/AOh14GiE8rTrhFxw5GsdPLGL_W3Gf8iQXtil9_et4e9Y6g=s96-c",
//           provider: "google.com",
//           createdAt: "2021-01-26T18:22:45.949000Z");
//
//       test(
//         'should call SharedPreferences to cache the data',
//         () async {
//           // act
//           dataSource.cacheUser(tUserModel);
//           // assert
//           final expectedJsonString = json.encode(tUserModel.toJson());
//           verify(
//               mockSharedPreferences.setString(CACHED_USER, expectedJsonString));
//         },
//       );
//     });
//   });
// }
