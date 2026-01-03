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

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
