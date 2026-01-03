import 'package:center/core/localization/app_locale.dart';
import 'package:center/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocale.home.getString(context)),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, Routes.settings);
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocale.welcome.getString(context),
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                'Current Language: ${FlutterLocalization.instance.currentLocale?.languageCode ?? 'en'}',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.settings);
                },
                child: Text(AppLocale.settings.getString(context)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
