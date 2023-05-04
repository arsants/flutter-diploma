import 'package:equatable/equatable.dart';

class Auth extends Equatable {
  final String accessToken;

  const Auth({
    required this.accessToken,
  });

  @override
  List<Object> get props => [accessToken];
}
