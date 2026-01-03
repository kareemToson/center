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
  static const String email = 'email';
  static const String forgetPassword = 'forget_password';
  static const String forgetPasswordSubtitle = 'forget_password_subtitle';

  // Button and action related strings
  static const String submit = 'submit';
  static const String backToSignIn = 'back_to_sign_in';
  //signIn
  static const String signIn = 'sign_in';

  // Divider related strings
  static const String orContinueWith = 'or_continue_with';

  // Button related strings
  static const String logIn = 'log_in';
  static const String browseAsGuest = 'browse_as_guest';
  static const String dontHaveAccount = 'dont_have_account';
  static const String signUp = 'sign_up';

  static Future<Map<String, dynamic>> loadLocale(String localeCode) async {
    String jsonString = await rootBundle.loadString(
      'lib/core/localization/$localeCode.json',
    );
    return json.decode(jsonString);
  }
}
