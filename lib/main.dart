import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie/core/network/api_service.dart';
import 'package:foodie/core/router/app_router.dart';
import 'package:foodie/core/router/routes.dart';
import 'package:foodie/core/storage/hive_registrar.dart';
import 'package:foodie/core/utils/size_utils.dart';
import 'package:foodie/core/theme/app_theme.dart' as app_theme;
import 'package:go_router/go_router.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ApiService.instance.init(
      baseUrl: 'https://6a03b7d22afe8349b4b571b3.mockapi.io/api/v1/dishes');

  await Hive.initFlutter();
  HiveRegistrar.registerAdapters();
  await Hive.openBox('app_settings');
  await Hive.openBox('auth_box');
  await Hive.openBox('user_box');
  await Hive.openBox('profile_box');
  await Hive.openBox('favorites');
  await Hive.openBox('recent_searches');
  await Hive.openBox('dishes');
  await Hive.openBox('carts');
  await Hive.openBox('orders');
  await Hive.openBox('tracking');

  // Allow overriding start route for testing via `--dart-define=START_ROUTE=/path`
  final startRoute = const String.fromEnvironment('START_ROUTE',
      defaultValue: Routes.restaurantScreen);
  final router = createRouter(initialLocation: startRoute);

  runApp(ProviderScope(child: FoodieApp(router: router)));
}

class FoodieApp extends ConsumerWidget {
  final GoRouter router;
  const FoodieApp({super.key, required this.router});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Builder(
          builder: (context) {
            SizeUtils.init(context);

            return MaterialApp.router(
              title: 'Foodie',
              theme: app_theme.lightTheme,
              darkTheme: app_theme.darkTheme,
              themeMode: ThemeMode.system,
              routerConfig: router,
              debugShowCheckedModeBanner: false,
            );
          },
        );
      },
    );
  }
}
