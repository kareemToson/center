import 'package:center/core/localization/app_locale.dart';
import 'package:center/core/styles/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class OrContinueWith extends StatelessWidget {
  const OrContinueWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(thickness: 0.5, color: Colors.black45)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            AppLocale.orContinueWith.getString(context),
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
        Expanded(child: Divider(thickness: 0.5, color: Colors.black45)),
      ],
    );
  }
}
