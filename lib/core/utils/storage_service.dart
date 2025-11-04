import 'package:shared_preferences/shared_preferences.dart';
import '../constants/app_constants.dart';

class StorageService {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static SharedPreferences get prefs {
    if (_prefs == null) {
      throw Exception('StorageService not initialized. Call init() first.');
    }
    return _prefs!;
  }

  // Token operations
  static Future<bool> saveToken(String token) async {
    return await prefs.setString(AppConstants.tokenKey, token);
  }

  static String? getToken() {
    return prefs.getString(AppConstants.tokenKey);
  }

  static Future<bool> clearToken() async {
    return await prefs.remove(AppConstants.tokenKey);
  }

  // User data operations
  static Future<bool> saveUserData(String userData) async {
    return await prefs.setString(AppConstants.userKey, userData);
  }

  static String? getUserData() {
    return prefs.getString(AppConstants.userKey);
  }

  // Generic operations
  static Future<bool> setString(String key, String value) async {
    return await prefs.setString(key, value);
  }

  static String? getString(String key) {
    return prefs.getString(key);
  }

  static Future<bool> setBool(String key, bool value) async {
    return await prefs.setBool(key, value);
  }

  static bool? getBool(String key) {
    return prefs.getBool(key);
  }

  static Future<bool> setInt(String key, int value) async {
    return await prefs.setInt(key, value);
  }

  static int? getInt(String key) {
    return prefs.getInt(key);
  }

  static Future<bool> clear() async {
    return await prefs.clear();
  }
}
