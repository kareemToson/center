import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class AppLocale {
  // Common app strings
  static const String title = 'title';
  static const String welcome = 'welcome';
  static const String settings = 'settings';
  static const String home = 'home';
  static const String about = 'about';

  // Auth related strings
  static const String unlockYour = 'unlock_your';
  static const String academic = 'academic';
  static const String potential = 'potential';

  // Welcome related strings
  static const String welcomeCenterix = 'welcome_centerix';
  static const String welcomeBackDetails = 'welcome_back_details';

  // Input field related strings
  static const String phone = 'phone';
  static const String password = 'password';
  static const String forgetPassword = 'forget_password';

  static Future<Map<String, dynamic>> loadLocale(String localeCode) async {
    String jsonString = await rootBundle.loadString(
      'lib/core/localization/$localeCode.json',
    );
    return json.decode(jsonString);
  }
}
