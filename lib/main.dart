import 'package:center/centerix.dart';
import 'package:center/core/localization/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final localization = FlutterLocalization.instance;
  await localization.ensureInitialized();

  // Initialize localization before running the app
  localization.init(
    mapLocales: [
      MapLocale('en', await AppLocale.loadLocale('en')),
      MapLocale('ar', await AppLocale.loadLocale('ar')),
    ],
    initLanguageCode: 'ar',
  );

  runApp(const Centerix());
}
