import 'package:center/core/extensions/responsive.dart';
import 'package:center/core/localization/app_locale.dart';
import 'package:center/core/styles/colors_manager.dart';
import 'package:center/core/styles/styels_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Image.asset(
          'assets/app_icon.png',
          width: context.widthPercent(6),
          height: context.heightPercent(4),
          color: ColorsManager.primaryColor,
        ),
        const SizedBox(width: 8),
        Text(
          AppLocale.title.getString(context),
          style: StylessManager.blackFont20,
        ),
      ],
    );
  }
}
