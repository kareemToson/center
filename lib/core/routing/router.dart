import 'package:flutter/material.dart';
import 'routes.dart';

// Simple router implementation with switch-case logic
class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // App Entry & Auth Routes
      case Routes.initial:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Initial Screen'))),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Login Screen'))),
        );
      case Routes.register:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Register Screen'))),
        );
      case Routes.forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Forgot Password Screen')),
          ),
        );
      case Routes.otpVerification:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('OTP Verification Screen')),
          ),
        );

      // HomeScreen Routes
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Home Screen'))),
        );
      case Routes.dashboard:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Dashboard Screen'))),
        );
      case Routes.services:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Services Screen'))),
        );
      case Routes.search:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Search Screen'))),
        );

      // Profile & Settings Routes
      case Routes.profile:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Profile Screen'))),
        );
      case Routes.editProfile:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Edit Profile Screen'))),
        );
      case Routes.settings:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Settings Screen'))),
        );
      case Routes.privacyPolicy:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Privacy Policy Screen')),
          ),
        );
      case Routes.termsOfService:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Terms of Service Screen')),
          ),
        );

      // Schedule & Bookings Routes
      case Routes.schedule:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Schedule Screen'))),
        );
      case Routes.booking:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Booking Screen'))),
        );
      case Routes.appointments:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Appointments Screen'))),
        );
      case Routes.calendar:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Calendar Screen'))),
        );
      case Routes.bookingConfirmation:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Booking Confirmation Screen')),
          ),
        );

      // Bottom Navigation Tabs Routes
      case Routes.tabHome:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Tab Home Screen'))),
        );
      case Routes.tabSchedule:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Tab Schedule Screen'))),
        );
      case Routes.tabProfile:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Tab Profile Screen'))),
        );
      case Routes.tabBookings:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Tab Bookings Screen'))),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('404 - Screen Not Found')),
          ),
        );
    }
  }
}
