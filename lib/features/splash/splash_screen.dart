import 'package:center/core/extensions/responsive.dart';
import 'package:center/core/localization/app_locale.dart';
import 'package:center/core/routing/routes.dart';
import 'package:center/core/styles/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //navigate to auth screen
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, Routes.signIn);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: context.heightPercent(20),
              width: context.widthPercent(30),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Image.asset(
                  'assets/app_icon.png',
                  width: context.widthPercent(30),
                  height: context.heightPercent(8),
                  fit: BoxFit.contain,
                  color: ColorsManager.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
