import 'package:center/core/localization/app_locale.dart';
import 'package:center/core/styles/styels_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class CreateAccountTextWidget extends StatelessWidget {
  const CreateAccountTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocale.createAccountDetails.getString(context),
      style: StylessManager.welcomeTextStyle(context),
      textAlign: TextAlign.center,
    );
  }
}
