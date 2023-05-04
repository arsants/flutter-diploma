class GraphQLException implements Exception {
  final List<dynamic> errors;

  GraphQLException({required this.errors});
}

class CacheException implements Exception {}

class AuthException implements Exception {}
