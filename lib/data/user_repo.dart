import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class UserRepository {
  UserRepository(this._prefs);

  static const _operator = 'operator';
  static const _userId = 'userId';
  static const _deviceClass = 'device_class';

  final SharedPreferences _prefs;

  Future<void> setOperator(String? operatorUid) async {
    if (operatorUid != null) {
      await _prefs.setString(_operator, operatorUid);
    } else {
      await _prefs.remove(_operator);
    }
  }

  Future<String?> getOperator() async => _prefs.getString(_operator);

  Future<void> setUserId(int? userId) async {
    if (userId != null) {
      await _prefs.setInt(_userId, userId);
    } else {
      await _prefs.remove(_userId);
    }
  }

  Future<int?> getUserId() async => _prefs.getInt(_userId);

  Future<void> setDeviceClass(String? deviceClass) async {
    if (deviceClass != null) {
      await _prefs.setString(_deviceClass, deviceClass);
    } else {
      await _prefs.remove(_deviceClass);
    }
  }

  Future<String?> getDeviceClass() async => _prefs.getString(_deviceClass);
}
