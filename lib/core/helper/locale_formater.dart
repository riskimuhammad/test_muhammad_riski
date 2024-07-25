import 'package:shared_preferences/shared_preferences.dart';

class LocaleFormater {
  static Future<String?> getGessionLanguages() async {
    final pref = await SharedPreferences.getInstance();
    final ln = pref.getString('languagesKey');
    return ln;
  }
}
