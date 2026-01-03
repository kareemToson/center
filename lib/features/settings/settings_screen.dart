import 'package:center/core/localization/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final FlutterLocalization localization = FlutterLocalization.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocale.settings.getString(context))),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocale.settings.getString(context),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            Text(
              '${AppLocale.title.getString(context)}: ${localization.currentLocale?.languageCode.toUpperCase() ?? 'en'}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
            ListTile(
              title: Text(localization.getLanguageName(languageCode: 'en') ?? 'English'),
              trailing: Radio<String>(
                value: 'en',
                groupValue: localization.currentLocale?.languageCode ?? 'en',
                onChanged: (String? value) {
                  if (value != null) {
                    localization.translate(value);
                  }
                },
              ),
            ),
            ListTile(
              title: Text(localization.getLanguageName(languageCode: 'ar') ?? 'العربية'),
              trailing: Radio<String>(
                value: 'ar',
                groupValue: localization.currentLocale?.languageCode ?? 'en',
                onChanged: (String? value) {
                  if (value != null) {
                    localization.translate(value);
                  }
                },
              ),
            ),
            ListTile(
              title: Text(localization.getLanguageName(languageCode: 'es') ?? 'Español'),
              trailing: Radio<String>(
                value: 'es',
                groupValue: localization.currentLocale?.languageCode ?? 'en',
                onChanged: (String? value) {
                  if (value != null) {
                    localization.translate(value);
                  }
                },
              ),
            ),
            ListTile(
              title: Text(localization.getLanguageName(languageCode: 'fr') ?? 'Français'),
              trailing: Radio<String>(
                value: 'fr',
                groupValue: localization.currentLocale?.languageCode ?? 'en',
                onChanged: (String? value) {
                  if (value != null) {
                    localization.translate(value);
                  }
                },
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Current Language Name: ${localization.getLanguageName()}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
