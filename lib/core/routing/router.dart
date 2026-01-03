import 'package:center/features/auth/forget_password/forget_password_screen.dart';
import 'package:center/features/auth/sign-in/sign_in_screen.dart';
import 'package:center/features/auth/sign-up/signup_screen.dart';
import 'package:center/features/home/home_screen.dart';
import 'package:center/features/splash/splash_screen.dart';
import 'package:center/features/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

// Simple router implementation with switch-case logic
class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.settings:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case Routes.signIn:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case Routes.forgetPassword:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignupScreen());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
