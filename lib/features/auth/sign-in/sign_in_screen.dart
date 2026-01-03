import 'package:center/core/extensions/responsive.dart';
import 'package:center/core/localization/app_locale.dart';
import 'package:center/core/styles/colors_manager.dart';
import 'package:center/core/widgets/header_widget.dart';
import 'package:center/features/auth/widgets/input_field.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../widgets/welcome_text_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  @override
  void initState() {
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFEEF4FF), ColorsManager.primaryColor],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  // header
                  Header(),
                  SizedBox(height: context.heightPercent(5)),
                  const WelcomeTextWidget(),
                  SizedBox(height: context.heightPercent(5)),
                  // phone filed
                  AppInputField(
                    hint: AppLocale.phone.getString(context),
                    prefixIcon: Icons.phone,
                    controller: phoneController,
                  ),
                  SizedBox(height: context.heightPercent(3)),
                  // password filed
                  AppInputField(
                    hint: AppLocale.password.getString(context),
                    prefixIcon: Icons.lock,
                    controller: passwordController,
                    isPassword: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
