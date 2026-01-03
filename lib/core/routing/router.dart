import 'package:center/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

// Simple router implementation with switch-case logic
class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
    throw Exception('Invalid route');
  }
}
