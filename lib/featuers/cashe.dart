import 'package:shared_preferences/shared_preferences.dart';

class CountryModel {
  final String name;
  final String dialCode;
  final String flag;

  const CountryModel({
    required this.name,
    required this.dialCode,
    required this.flag,
  });
}

const List<CountryModel> countryList = [
  CountryModel(name: 'Egypt', dialCode: '+20', flag: '🇪🇬'),
  CountryModel(name: 'Saudi Arabia', dialCode: '+966', flag: '🇸🇦'),
];

class CacheHelper {
  static late SharedPreferences _prefs;

  static const String _kToken = 'USER_TOKEN';
  static const String _kUserName = 'USER_NAME';

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> saveToken(String token) async =>
      _prefs.setString(_kToken, token);

  static String? getToken() => _prefs.getString(_kToken);

  static Future<bool> saveUserName(String name) async =>
      _prefs.setString(_kUserName, name);

  static String getUserName() => _prefs.getString(_kUserName) ?? 'Omar';

  static Future<bool> clearAll() async => _prefs.clear();
}
