import 'dart:convert';

import 'package:bicycle_riders_app_v2/features/profile/data/models/user_model.dart';
import 'package:bicycle_riders_app_v2/features/profile/domain/entities/user.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
   const tUserModel = UserModel(
      username: "test",
      firstName: "test",
      lastName: "test",
      email: "ars.ants@com",
      avatar:
          "https://lh3.googleusercontent.com/a-/AOh14GiE8rTrhFxw5GsdPLGL_W3Gf8iQXtil9_et4e9Y6g=s96-c",
);

  test('should be a subclass of BicycleUser entity', () async {
    // assert
    expect(tUserModel, isA<User>());
  });

  group("fromJson", () {
    test('should return a valid model from JSON', () async {
      //arrange
      final Map<String, dynamic> jsonMap = json.decode(fixture('user.json'));
      //act
      final result = UserModel.fromJson(jsonMap);
      // assert
      expect(result, tUserModel);
    });
  });

  group("toJson", () {
    test('should return a JSON map from Model entity', () async {
      //act
      final result = tUserModel.toJson();
      // assert
      final expectedMap = {
        "uid": "5PW1hBwiASa7jihYtn5r1iXUdZ62",
        "name": "test",
        "email": "ars.ants@com",
        "avatar":
            "https://lh3.googleusercontent.com/a-/AOh14GiE8rTrhFxw5GsdPLGL_W3Gf8iQXtil9_et4e9Y6g=s96-c",
        "provider": "google.com",
        "created_at": "2021-01-26T18:22:45.949000Z",
      };
      expect(result, expectedMap);
    });
  });
}
