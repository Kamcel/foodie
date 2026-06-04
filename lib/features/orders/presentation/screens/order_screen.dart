import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie/core/router/routes.dart';
import 'package:foodie/core/widgets/app_nav_bar.dart';
import 'package:foodie/core/widgets/custom_app_bar.dart';
import 'package:foodie/features/orders/data/models/order_state.dart';
import 'package:foodie/features/orders/data/presentation/providers/order_notifier.dart';
import 'package:foodie/features/orders/presentation/widgets/order_empty.dart';
import 'package:foodie/features/orders/presentation/widgets/order_error.dart';
import 'package:foodie/features/orders/presentation/widgets/order_loading.dart';
import 'package:foodie/features/orders/presentation/widgets/order_success.dart';
import 'package:go_router/go_router.dart';

class OrderScreen extends ConsumerStatefulWidget {
  const OrderScreen({super.key});

  @override
  ConsumerState<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends ConsumerState<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final state = ref.watch(orderProvider);
    //final notifier = ref.read(orderProvider.notifier);

    return Scaffold(
        backgroundColor: colors.surface,
        appBar: const CustomAppBar(title: 'Your Orders'),
        bottomNavigationBar: AppNavBar(
          currentIndex: 3,
          onTap: (index) {
            if (index == 3) return; // already here
            if (index == 0) return context.go(Routes.restaurantScreen);
            if (index == 1) return context.go(Routes.restaurantScreen);
            if (index == 2) return context.go(Routes.cart);
            if (index == 4) return context.go(Routes.profileSetup);
          },
        ),
        body: state.map(
          loading: (_) => const OrderLoading(),
          empty: (_) => const OrderEmpty(),
          error: (e) => OrderError(
            message: e.message,
            onRetry: () => ref.read(orderProvider.notifier).loadOrders(),
          ),
          success: (s) => OrderSuccess(orders: s.orders),
        ));
  }
}
