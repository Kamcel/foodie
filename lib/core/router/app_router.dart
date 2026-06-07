import 'package:foodie/core/router/routes.dart';
import 'package:foodie/features/auth/data/models/otp_args.dart';
import 'package:foodie/features/auth/data/storage/auth_storage.dart';
import 'package:foodie/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:foodie/features/auth/presentation/screens/otp_verification_screen.dart';
import 'package:foodie/features/auth/presentation/screens/login_screen.dart';
import 'package:foodie/features/auth/presentation/screens/reset_password_screen.dart';
import 'package:foodie/features/auth/presentation/screens/sign_up_email_screen.dart';
import 'package:foodie/features/auth/presentation/screens/upcoming_screen.dart';
import 'package:foodie/features/auth/presentation/screens/register_screen.dart';
import 'package:foodie/features/cart/presentation/screens/cart_screen.dart';
import 'package:foodie/features/dish/data/models/dish.dart';
import 'package:foodie/features/dish/presentation/screens/dish_detail_screen.dart';
import 'package:foodie/features/home/presentation/screens/home_screen.dart';
import 'package:foodie/features/onboarding/presentation/screens/splash_screen.dart';
import 'package:foodie/features/onboarding/presentation/screens/welcome_screen.dart';
import 'package:foodie/features/orders/data/models/order.dart';
import 'package:foodie/features/orders/presentation/screens/order_screen.dart';
import 'package:foodie/features/profile/presentation/screens/profile_setup_screen.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:foodie/features/restaurant/data/models/review.dart';
import 'package:foodie/features/restaurant/presentation/screens/restaurant_detail_screen.dart';
import 'package:foodie/features/restaurant/presentation/screens/restaurant_review_screen.dart';
import 'package:foodie/features/restaurant/presentation/screens/restaurant_screen.dart';
import 'package:foodie/features/tracking/presentation/screens/tracking_screen.dart';
import 'package:go_router/go_router.dart';

//profileSetup- start here for profile
GoRouter createRouter({String? initialLocation}) {
  return GoRouter(
    initialLocation: initialLocation ?? Routes.home,
    redirect: (context, state) {
      final isLoggedIn = AuthStorage.instance.hasTokens;
      final location = state.uri.toString();

      //All Auth Screens
      final authPath = [
        Routes.login,
        Routes.signup,
        Routes.register,
        Routes.welcome,
        Routes.forgotPassword,
        Routes.splash,
        Routes.otpVerify,
        Routes.onboarding,
      ];

      final isOnAuthScreen = authPath.any((p) => location.startsWith(p));

      // Only redirect unauthenticated users when they try to access protected pages.
      // This allows the app to start at the public `restaurantScreen` even when
      // the user is not logged in.
      final protectedPaths = [
        Routes.profileSetup,
        Routes.profile,
        Routes.checkout,
      ];

      if (!isLoggedIn && protectedPaths.any((p) => location.startsWith(p))) {
        return Routes.login;
      }

      if (isLoggedIn && isOnAuthScreen) return Routes.home;
      return null;
    },
    routes: [
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/welcome',
        name: 'welcome',
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: '/register',
        name: 'register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
          path: '/login',
          name: 'login',
          builder: (context, state) => const LoginScreen()),
      GoRoute(
          path: '/signup',
          name: 'signup',
          builder: (context, state) => const SignUpEmailScreen()),
      GoRoute(
        path: '/otp-verify',
        name: 'otp-verify',
        builder: (context, state) {
          final args = state.extra as OtpArgs;
          return OtpVerificationScreen(args: args);
        },
      ),
      GoRoute(
          path: '/reset-password',
          name: 'reset-password',
          builder: (context, state) => const ResetPasswordScreen()),
      GoRoute(
          path: '/forgot-password',
          name: 'forgot-password',
          builder: (context, state) => const ForgotPasswordScreen()),
      GoRoute(
          path: '/upcoming',
          name: 'upcoming',
          builder: (context, state) => const UpcomingScreen()),
      GoRoute(
          path: '/profile-setup',
          name: 'profile-setup',
          builder: (context, state) => const ProfileSetupScreen()),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
          path: '/restaurant',
          name: 'restaurant',
          builder: (context, state) => const RestaurantScreen()),
      GoRoute(
        path: '/restaurants',
        name: 'restaurantScreen',
        builder: (context, state) => const RestaurantScreen(),
      ),
      GoRoute(
        path: '/restaurant-detail',
        name: 'restaurantDetailScreen',
        builder: (context, state) {
          final restaurant = state.extra as Restaurant;
          return RestaurantDetailScreen(restaurant: restaurant);
        },
      ),
      GoRoute(
          path: '/restaurant-review',
          name: 'restaurantReviewScreen',
          builder: (context, state) {
            final extra = state.extra as Map<String, dynamic>;
            return RestaurantReviewScreen(
                restaurant: extra['restaurant'] as Restaurant,
                reviews: extra['reviews'] as List<Review>);
          }),
      GoRoute(
          path: '/dish-detail',
          name: 'dishDetailScreen',
          builder: (context, state) {
            final dish = state.extra as Dish;
            return DishDetailScreen(dish: dish);
          }),
      GoRoute(
        path: '/cart',
        name: 'cart',
        builder: (context, state) => const CartScreen(),
      ),
      GoRoute(
        path: '/order-screen',
        name: 'orderScreen',
        builder: (context, state) => const OrderScreen(),
      ),
      GoRoute(
        path: '/tracking-screen',
        name: 'trackingScreen',
        builder: (context, state) {
          final order = state.extra as Order;
          return TrackingScreen(order: order);
        },
      )
    ],
  );
}
