import 'package:center/core/styles/styels_manager.dart';
import 'package:flutter/material.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(
            text: 'Unlock your ',
            style: StylessManager.unlockYourTextStyle,
          ),
          const TextSpan(
            text: 'academic\n',
            style: StylessManager.academicPotentialTextStyle,
          ),
          const TextSpan(
            text: 'potential',
            style: StylessManager.academicPotentialTextStyle,
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
