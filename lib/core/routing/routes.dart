// Route names and constants for the application

class Routes {
  // App Entry & Auth Routes
  static const String initial = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String otpVerification = '/otp-verification';

  // HomeScreen Routes
  static const String home = '/home';
  static const String dashboard = '/dashboard';
  static const String services = '/services';
  static const String search = '/search';

  // Profile & Settings Routes
  static const String profile = '/profile';
  static const String editProfile = '/edit-profile';
  static const String settings = '/settings';
  static const String privacyPolicy = '/privacy-policy';
  static const String termsOfService = '/terms-of-service';

  // Schedule & Bookings Routes
  static const String schedule = '/schedule';
  static const String booking = '/booking';
  static const String appointments = '/appointments';
  static const String calendar = '/calendar';
  static const String bookingConfirmation = '/booking-confirmation';

  // Bottom Navigation Tabs Routes
  static const String tabHome = '/tab-home';
  static const String tabSchedule = '/tab-schedule';
  static const String tabProfile = '/tab-profile';
  static const String tabBookings = '/tab-bookings';
}
