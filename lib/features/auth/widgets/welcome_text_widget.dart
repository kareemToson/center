import 'package:center/core/extensions/responsive.dart';
import 'package:center/core/localization/app_locale.dart';
import 'package:center/core/styles/styels_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocale.welcomeBackDetails.getString(context),
      style: StylessManager.welcomeTextStyle(context),
      textAlign: TextAlign.center,
    );
  }
}
