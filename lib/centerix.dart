import 'package:center/core/localization/app_locale.dart';
import 'package:center/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'core/routing/router.dart';

class Centerix extends StatefulWidget {
  const Centerix({super.key});

  @override
  State<Centerix> createState() => _CenterixState();
}

class _CenterixState extends State<Centerix> {
  final FlutterLocalization localization = FlutterLocalization.instance;

  @override
  void initState() {
    super.initState();
    _initLocalization();
  }

  Future<void> _initLocalization() async {
    localization.init(
      mapLocales: [
        MapLocale('en', await AppLocale.loadLocale('en')),
        MapLocale('ar', await AppLocale.loadLocale('ar')),
        MapLocale('es', await AppLocale.loadLocale('es')),
        MapLocale('fr', await AppLocale.loadLocale('fr')),
      ],
      initLanguageCode: 'en',
    );
    localization.onTranslatedLanguage = _onTranslatedLanguage;
  }

  // the setState function here is a must to add
  void _onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Centerix',
      initialRoute: Routes.splash,
      onGenerateRoute: AppRouter.generateRoute,
      supportedLocales: localization.supportedLocales,
      localizationsDelegates: localization.localizationsDelegates,
      theme: ThemeData(fontFamily: localization.fontFamily),
      locale: localization.currentLocale,
      builder: (context, child) {
        return Directionality(
          textDirection: localization.currentLocale?.languageCode == 'ar'
              ? TextDirection.rtl
              : TextDirection.ltr,
          child: child ?? Container(),
        );
      },
    );
  }
}
