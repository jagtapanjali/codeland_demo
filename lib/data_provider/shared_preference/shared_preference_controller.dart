import 'package:codeland_demo/constants/constants.dart';

class SharedPreferenceKeys {

  static const String themeMode = "themeMode";
  static const String isLogin = "isLogin";
  static const String token = "token";
  static const String refreshToken = "refreshToken";
  static const String tokenDate = "tokenDate";
  static const String country = "country";
  static const String phone = "phone";
  static const String user = "user";

  static const String userId = 'userId';
  static const String userTypeId = 'userTypeId';
  static const String userName = 'userName';
  static const String userEmail = 'userEmail';
  static const String password = 'password';
  static const String isActive = 'isActive';
  static const String createdAt = 'createdAt';
  static const String createdBy = 'createdBy';
  static const String modifiedAt = 'modifiedAt';
  static const String modifiedBy = 'modifiedBy';

}

class SharedPreferenceController {

  static SharedPreferenceController shared = SharedPreferenceController();

  Future<String> getString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? "";
  }

  setString(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  Future<int> getInt(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key) ?? 1;
  }

  setInt(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(key, value);
  }

  Future<double> getDouble(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key) ?? 0;
  }

  setDouble(String key, double value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(key, value);
  }

  Future<bool> getBool(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? false;
  }

  setBool(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  clearPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  // method for get preference
  getThemeMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(SharedPreferenceKeys.themeMode) ?? false;
  }

  setThemeMode(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(SharedPreferenceKeys.themeMode, value);
  }

  getIsLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(SharedPreferenceKeys.isLogin) ?? false;
  }

  setIsLogin(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(SharedPreferenceKeys.isLogin, value);
  }

  getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(SharedPreferenceKeys.token) ?? false;
  }

  setToken(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(SharedPreferenceKeys.token, value);
  }

  getRefreshToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(SharedPreferenceKeys.refreshToken) ?? false;
  }

  setRefreshToken(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(SharedPreferenceKeys.refreshToken, value);
  }

}
