import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class AppLocale {
  // Common app strings
  static const String title = 'title';
  static const String welcome = 'welcome';
  static const String settings = 'settings';
  static const String home = 'home';
  static const String about = 'about';

  static Future<Map<String, dynamic>> loadLocale(String localeCode) async {
    String jsonString = await rootBundle.loadString(
      'lib/core/localization/$localeCode.json',
    );
    return json.decode(jsonString);
  }
}
