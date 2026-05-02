import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie/core/network/api_service.dart';
import 'package:foodie/core/router/app_router.dart';
import 'package:foodie/core/storage/hive_registrar.dart';
import 'package:foodie/core/utils/size_utils.dart';
import 'package:foodie/core/theme/app_theme.dart' as app_theme;
import 'package:hive_ce_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ApiService.instance.init(baseUrl: 'https://placeholder.foodie.com');

  await Hive.initFlutter();
  HiveRegistrar.registerAdapters();
  await Hive.openBox('app_settings');
  await Hive.openBox('auth_box');
  await Hive.openBox('user_box');
  await Hive.openBox('profile_box');
  runApp(ProviderScope(child: const FoodieApp()));
}

class FoodieApp extends ConsumerWidget {
  const FoodieApp({super.key});

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
