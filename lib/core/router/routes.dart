class Routes {
  Routes._();

  //Auth flow
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String resetPassword = '/reset-password';
  static const String emailVerification = '/email-verification';
  static const String profileSetup = '/profile-setup';
  static const String welcome = '/welcome';
  static const String otp = '/otp';
  static const String practice = '/practice';
  static const String upcoming = '/upcoming';
  static const String otpVerify = '/otp-verify';

  //Main App (with bottom nav)
  static const String home = '/home';
  static const String search = '/search';
  static const String favorites = '/favorites';
  static const String profile = '/profile';
  static const String cart = '/cart';
  static const String restaurant = '/restaurant';
  static const String restaurantScreen = '/restaurants';

  //Nested Routes
  static const String restaurantDetails = '/restaurant/:id';
  static const String foodDetails = '/food/:id';
  static const String checkout = '/checkout';
  static const String orderConfirmation = '/order-confirmation';
  static const String orderTracking = '/order/id';
}
