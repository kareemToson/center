import 'package:center/core/extensions/responsive.dart';
import 'package:center/core/localization/app_locale.dart';
import 'package:center/core/routing/routes.dart';

import 'package:center/core/styles/colors_manager.dart';
import 'package:center/core/styles/styels_manager.dart';
import 'package:center/core/widgets/header_widget.dart';

import 'package:center/features/auth/widgets/auth_button.dart';
import 'package:center/features/auth/widgets/divider.dart';

import 'package:center/features/auth/widgets/input_field.dart';
import 'package:center/features/auth/widgets/signin_google_ios.dart';
import 'package:center/features/auth/widgets/welecom_text_for_SignUp.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late TextEditingController nameController;
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  @override
  void initState() {
    nameController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
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
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  // header
                  Header(),
                  SizedBox(height: context.heightPercent(5)),
                  const CreateAccountTextWidget(),
                  SizedBox(height: context.heightPercent(5)),
                  //name filed
                  AppInputField(
                    hint: AppLocale.name.getString(context),
                    prefixIcon: Icons.person,
                    controller: nameController,
                  ),
                  SizedBox(height: context.heightPercent(3)),

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
                  SizedBox(height: context.heightPercent(3)),
                  AppInputField(
                    hint: AppLocale.confirmPassword.getString(context),
                    prefixIcon: Icons.lock,
                    controller: confirmPasswordController,
                    isPassword: true,
                  ),
                  SizedBox(height: context.heightPercent(3)),

                  // login button
                  AppButton(
                    onPressed: () {},
                    title: AppLocale.signUp.getString(context),
                  ),

                  SizedBox(height: context.heightPercent(2)),

                  //divider widget
                  const OrContinueWith(),
                  SizedBox(height: context.heightPercent(3)),
                  //sign in with google or apple
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      SocialButton(
                        title: 'Google',
                        assetPath: 'assets/google_image.png',
                        onPressed: () {},
                      ),
                      SizedBox(width: context.widthPercent(2)),
                      SizedBox(height: context.heightPercent(2)),
                      SocialButton(
                        title: 'Apple',
                        assetPath: 'assets/ios_image.png',
                        onPressed: () {},
                      ),
                      SizedBox(height: context.heightPercent(2)),

                      //signup
                    ],
                  ),
                  SizedBox(height: context.heightPercent(4)),
                  Row(
                    children: [
                      Text(
                        AppLocale.alreadyHaveAccount.getString(context),
                        style: StylessManager.blackFont4(context),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.signIn);
                        },
                        child: Text(
                          AppLocale.signIn.getString(context),
                          style: StylessManager.welcomeTextStylewhite(context),
                        ),
                      ),
                    ],
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
