import 'package:katai/core/error/exceptions.dart';
import 'package:katai/features/login/data/models/auth_model.dart';
import 'package:ferry/ferry.dart';

abstract class AuthLocalDataSource {
  /// Gets the cached [AuthModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.
  Future<AuthModel> getLastAuth();

  Future<void> cacheAuth(AuthModel modelToCache);

  Future<void> clearCache();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final Client client;

  AuthLocalDataSourceImpl({required this.client});

  @override
  Future<AuthModel> getLastAuth() {
    try {
      final json = client.cache.store.get('auth');
      if (json == null) {
        throw CacheException();
      }
      return Future.value(AuthModel.fromJson(json));
    } catch (_) {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheAuth(AuthModel modelToCache) async {
    try {
      client.cache.store.put('auth', modelToCache.toJson());
    } catch (_) {
      throw CacheException();
    }
  }

  @override
  Future<void> clearCache() async => client.cache.store.clear();
}
