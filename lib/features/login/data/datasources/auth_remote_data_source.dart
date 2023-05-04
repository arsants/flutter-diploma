import 'package:katai/core/error/exceptions.dart';
import 'package:katai/features/login/data/models/auth_model.dart';
import 'package:katai/graphql/Auth.req.gql.dart';
import 'package:ferry/ferry.dart';
import 'package:lumberdash/lumberdash.dart';

abstract class AuthRemoteDataSource {
  Future<AuthModel> appleAuth(AppleStruct credential);

  Future<AuthModel> usernameAuth(UsernameStruct credential);

  Future<AuthModel> googleAuth(GoogleStruct credential);

  Future<AuthModel> registration(RegistrationStruct credential);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Client client;

  AuthRemoteDataSourceImpl({required this.client});

  @override
  Future<AuthModel> appleAuth(AppleStruct credential) async {
    final socialAuthReq = GSocialAuthReq((b) => b
      ..vars.accessToken = credential.idToken
      ..vars.provider = 'apple-id');
    
    final response = await client.request(socialAuthReq).first;
    
    if (response.hasErrors) {
      throw GraphQLException(errors: response.graphqlErrors!);
    } else {
      return Future.value(
          AuthModel.fromJson(response.data!.socialAuth!.toJson()));
    }
  }

  @override
  Future<AuthModel> googleAuth(GoogleStruct credential) async {
    final socialAuthReq = GSocialAuthReq((b) => b
      ..vars.accessToken = credential.accessToken
      ..vars.provider = 'google-oauth2');

    final response = await client.request(socialAuthReq).first;

    if (response.hasErrors) {
      throw GraphQLException(errors: response.graphqlErrors!);
    } else {
      return Future.value(
          AuthModel.fromJson(response.data!.socialAuth!.toJson()));
    }
  }

  @override
  Future<AuthModel> usernameAuth(UsernameStruct credential) async {
    final credAuthReq = GCredAuthReq((b) => b
      ..vars.username = credential.username
      ..vars.password = credential.password);

    final response = await client.request(credAuthReq).first;

    if (response.hasErrors) {
      throw GraphQLException(errors: response.graphqlErrors!);
    } else {
      return Future.value(
          AuthModel.fromJson(response.data!.tokenAuth!.toJson()));
    }
  }

  @override
  Future<AuthModel> registration(RegistrationStruct credential) async {
    final registrationReq = GRegistrationReq((b) => b
      ..vars.username = credential.username
      ..vars.password1 = credential.password1
      ..vars.password2 = credential.password2);

    final response = await client.request(registrationReq).first;

    if (response.hasErrors) {
      throw GraphQLException(errors: response.graphqlErrors!);
    } else {
      return Future.value(
          AuthModel.fromJson(response.data!.register!.toJson()));
    }
  }
}
