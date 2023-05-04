import 'dart:convert';
import 'package:bicycle_riders_app_v2/core/error/exceptions.dart';
import 'package:bicycle_riders_app_v2/features/login/data/datasources/auth_local_data_source.dart';
import 'package:bicycle_riders_app_v2/features/login/data/models/auth_model.dart';
import 'package:hive/hive.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../../fixtures/fixture_reader.dart';

class MockHiveBox extends Mock implements Box<String> {}

Future<void> main() async {
  late AuthLocalDataSourceImpl dataSource;
  late MockHiveBox mockHiveBox;

  setUp(() async {
    mockHiveBox = MockHiveBox();
    dataSource = AuthLocalDataSourceImpl(hiveBox: mockHiveBox);
  });

  group('getLastAuth', () {
    final tAuthModel = AuthModel.fromJson(json.decode(fixture('auth.json')));

    test('should return Auth from HiveBox when there is one in the cache',
        () async {
      // arrange
      when(mockHiveBox.get(any)).thenReturn(fixture('auth.json'));
      // act
      final result = await dataSource.getLastAuth();
      // assert
      verify(mockHiveBox.get('auth'));
      expect(result, tAuthModel);
    });

    test(
        'should throw CacheException from HiveBox when there is not cached value',
        () async {
      // arrange
      when(mockHiveBox.get(any)).thenReturn(null);
      // act
      final call = dataSource.getLastAuth;
      // assert
      expect(() => call(), throwsA(isA<CacheException>()));
    });
  });

  group('cacheAuth', () {
    const tAuthModel = AuthModel(accessToken: '', refreshToken: '');

    test('should call Hive to cache the data', () async {
      // act
      dataSource.cacheAuth(tAuthModel);
      // assert
      verify(mockHiveBox.put(any, "any"));
    });
  });

  group('clearCache', () {
    test('should remove cached AuthModel from Hive to LogOut', () async {
      // act
      dataSource.clearCache();
      // assert
      verify(mockHiveBox.delete(any));
    });
  });
}
