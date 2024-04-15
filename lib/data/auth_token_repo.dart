import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

abstract class _Keys {
  static const token = 'token';

  static const refreshToken = 'refreshToken';
}

@injectable
class AuthTokenRepository {
  AuthTokenRepository({required this.secureStorage});
  final FlutterSecureStorage secureStorage;

  Future<String?> getToken() async => secureStorage.read(key: _Keys.token);

  Future<void> setToken(String? token) async {
    if (token != null) {
      await secureStorage.write(key: _Keys.token, value: token);
    } else {
      await secureStorage.delete(key: _Keys.token);
    }
  }

  Future<String?> getRefreshToken() async =>
      secureStorage.read(key: _Keys.refreshToken);

  Future<void> setRefreshToken(String? refreshToken) async {
    if (refreshToken != null) {
      await secureStorage.write(key: _Keys.refreshToken, value: refreshToken);
    } else {
      await secureStorage.delete(key: _Keys.refreshToken);
    }
  }
}
