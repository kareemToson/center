import 'package:center/core/extensions/responsive.dart';
import 'package:center/core/localization/app_locale.dart';
import 'package:center/core/routing/routes.dart';
import 'package:center/core/styles/colors_manager.dart';
import 'package:center/core/styles/styels_manager.dart';
import 'package:center/core/widgets/header_widget.dart';

import 'package:center/features/auth/widgets/auth_button.dart';
import 'package:center/features/auth/widgets/divider.dart';
import 'package:center/features/auth/widgets/guest.dart';
import 'package:center/features/auth/widgets/input_field.dart';
import 'package:center/features/auth/widgets/signin_google_ios.dart';

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
              padding: const EdgeInsets.all(10.0),
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
                  SizedBox(height: context.heightPercent(3)),
                  //forget password button
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.forgetPassword);
                      },
                      child: Text(
                        AppLocale.forgetPassword.getString(context),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: context.heightPercent(2)),
                  // login button
                  AppButton(
                    onPressed: () {},
                    title: AppLocale.signIn.getString(context),
                  ),

                  SizedBox(height: context.heightPercent(2)),
                  guestWidget(),

                  // browse as guest button
                  SizedBox(height: context.heightPercent(3)),
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
                        AppLocale.dontHaveAccount.getString(context),
                        style: StylessManager.blackFont4(context),
                      ),

                      //textButton
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.signUp);
                        },
                        child: Text(
                          AppLocale.signUp.getString(context),
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
