import 'dart:convert';
import 'package:bicycle_riders_app_v2/features/login/data/models/auth_model.dart';
import 'package:bicycle_riders_app_v2/features/login/domain/entities/auth.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
   const tAuthModel = AuthModel(
      accessToken: "5PW1hBwiASa7jihYtn5r1iXUdZ62",
      refreshToken: "5PW1hBwiASa7jihYtn5r1iXUdZ62");

  test('should be a subclass of BicycleUser entity', () async {
    // assert
    expect(tAuthModel, isA<Auth>());
  });

  group("fromJson", () {
    test('should return a valid model from JSON', () async {
      //arrange
      final Map<String, dynamic> jsonMap = json.decode(fixture('auth.json'));
      //act
      final result = AuthModel.fromJson(jsonMap);
      // assert
      expect(result, tAuthModel);
    });
  });

  group("toJson", () {
    test('should return a JSON map from Model entity', () async {
      //act
      final result = tAuthModel.toJson();
      // assert
      final expectedMap = {
        "access_token": "5PW1hBwiASa7jihYtn5r1iXUdZ62",
        "refresh_token": "5PW1hBwiASa7jihYtn5r1iXUdZ62",
      };
      expect(result, expectedMap);
    });
  });
}
