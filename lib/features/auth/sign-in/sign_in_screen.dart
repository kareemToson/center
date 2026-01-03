import 'package:center/core/extensions/responsive.dart';
import 'package:center/core/styles/colors_manager.dart';
import 'package:center/core/widgets/header_widget.dart';

import 'package:flutter/material.dart';

import '../widgets/welcome_text_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //header
                Header(),
                SizedBox(height: context.heightPercent(2)),
                const WelcomeTextWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
