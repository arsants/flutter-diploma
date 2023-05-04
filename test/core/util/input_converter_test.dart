import 'dart:convert';

import 'package:bicycle_riders_app_v2/core/util/input_converter.dart';
import 'package:bicycle_riders_app_v2/features/login/data/models/auth_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late InputConverter inputConverter;
  setUp(() {
    inputConverter = InputConverter();
  });

  const AppleStruct appleStruct =
      AppleStruct(idToken: 'blablabla', code: 'blablabla');
  const GoogleStruct googleStruct = GoogleStruct(accessToken: 'blablabla');
  const UsernameStruct credStruct =
      UsernameStruct(username: 'blablabla', password: 'blablabla');

  group("stringToAppleStruct", () {
    test(
      'should return an AppleStruct when the data represents String',
      () async {
        // arrange
        final string =
            json.encode({'id_token': 'blablabla', 'code': 'blablabla'});
        // act
        final result = await inputConverter.stringToAppleStruct(string);
        // assert
        expect(result, const Right(appleStruct));
      },
    );

    test(
      'should return a Failure when the data represents wrong String',
      () async {
        // arrange
        final string = json.encode({'asd': 'blablabla', 'qwe': 'blablabla'});
        // act
        final result = await inputConverter.stringToAppleStruct(string);
        // assert
        expect(result, Left(InvalidInputFailure()));
      },
    );
  });

  group("stringToGoogleStruct", () {
    test(
      'should return an GoogleStruct when the data represents String',
      () async {
        // arrange
        final string = json.encode({'access_token': 'blablabla'});
        // act
        final result = await inputConverter.stringToGoogleStruct(string);
        // assert
        expect(result, const Right(googleStruct));
      },
    );

    test(
      'should return a Failure when the data represents wrong String',
      () async {
        // arrange
        final string = json.encode({'asd': 'blablabla'});
        // act
        final result = await inputConverter.stringToGoogleStruct(string);
        // assert
        expect(result, Left(InvalidInputFailure()));
      },
    );
  });

  group("stringToCredStruct", () {
    test(
      'should return an CredStruct when the data represents String',
      () async {
        // arrange
        final string =
            json.encode({'username': 'blablabla', 'password': 'blablabla'});
        // act
        final result = await inputConverter.stringToCredStruct(string);
        // assert
        expect(result, const Right(credStruct));
      },
    );

    test(
      'should return a Failure when the data represents wrong String',
      () async {
        // arrange
        final string = json.encode({'asd': 'blablabla', 'qwe': 'blablabla'});
        // act
        final result = await inputConverter.stringToCredStruct(string);
        // assert
        expect(result, Left(InvalidInputFailure()));
      },
    );
  });
}
