import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static const String _themeKey = 'theme_key';
  static const String _accessToken = 'access_token';
  static const String _refreshToken = 'refresh_token';
  static const String _lang = 'language';
  static const String _userPhone = '_userPhone';
  static const String _userName = '_userName';

  static const String lightTheme = 'light_theme';
  static const String darkTheme = 'dark_theme';
  static const String systemTheme = 'system_theme';

  static late SharedPreferences _preference;
  static SharedPrefService? _instance;

  const SharedPrefService._();

  static Future<SharedPrefService> initialize() async {
    if (_instance == null) {
      _preference = await SharedPreferences.getInstance();
      _instance = const SharedPrefService._(); // Create the instance only once
    }
    return _instance!;
  }

  void setTheme(String value) {
    _preference.setString(_themeKey, value);
  }

  void setAccessToken(String token) {
    _preference.setString(_accessToken, token);
  }

  void setRefreshToken(String token) {
    _preference.setString(_refreshToken, token);
  }

  void setUserPhone(String phone) {
    _preference.setString(_userPhone, phone);
  }

  void setUserName(String userName) {
    _preference.setString(_userName, userName);
  }

  void setLang(String language) {
    _preference.setString(_lang, language);
  }

  void logOut() {
    _preference.remove(_accessToken);
    _preference.remove(_refreshToken);
    _preference.remove(_userName);
    _preference.remove(_userPhone);
  }

  String get getTheme => _preference.getString(_themeKey) ?? lightTheme;

  String get getLanguage => _preference.getString(_lang) ?? '';

  String get getAccessToken => _preference.getString(_accessToken) ?? '';

  String get getRefreshToken => _preference.getString(_refreshToken) ?? '';

  String get getUserPhone => _preference.getString(_userPhone) ?? '';

  String get getUserName => _preference.getString(_userName) ?? '';
}
