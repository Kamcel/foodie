import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie/core/router/routes.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/widgets/app_nav_bar.dart';
import 'package:foodie/core/widgets/custom_app_bar.dart';
import 'package:foodie/features/cart/presentation/providers/cart_notifier.dart';
import 'package:foodie/features/cart/presentation/widgets/cart_tile.dart';
import 'package:foodie/features/cart/presentation/widgets/promo_section.dart';
import 'package:go_router/go_router.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({
    super.key,
  });

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final state = ref.watch(cartProvider);
    final cartNotifier = ref.read(cartProvider.notifier);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Your Cart',
        showBack: true,
      ),
      bottomNavigationBar: AppNavBar(
        currentIndex: 2,
        onTap: (index) {
          if (index == 2) return;
          if (index == 0) return context.go(Routes.restaurantScreen);
          if (index == 1) return context.go(Routes.restaurantScreen);
          if (index == 3) return context.go(Routes.orderScreen);
          if (index == 4) return context.go(Routes.profileSetup);
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Cart Items List
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.items.length,
              itemBuilder: (context, index) {
                final item = state.items[index];
                return Dismissible(
                  key: ValueKey(item.id),
                  direction: DismissDirection.endToStart,
                  onDismissed: (_) => cartNotifier.removeItem(item.id),
                  background: Container(
                    color: colors.errorContainer,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppDimensions.spaceMD),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  child: CartTile(
                    item: item,
                    onIncrement: () => cartNotifier.incrementItem(item.id),
                    onDecrement: () => cartNotifier.decrementItem(item.id),
                  ),
                );
              },
            ),
            SizedBox(height: AppDimensions.spaceMD),
            OutlinedButton(
              onPressed: () => context.pop(),
              child: const Text('+ Add More Items'),
            ),
            // 2. Promo Code Section
            SizedBox(height: AppDimensions.spaceMD),
            PromoSection(onApply: cartNotifier.applyPromoCode),
            SizedBox(height: AppDimensions.spaceMD),

            // 3. Price Summary
            Container(
              padding: const EdgeInsets.all(AppDimensions.spaceMD),
              decoration: BoxDecoration(
                color: colors.surfaceContainer,
                borderRadius: BorderRadius.circular(AppDimensions.radiusMD),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Subtotal'),
                      Text('₦${state.subtotal.toStringAsFixed(2)}'),
                    ],
                  ),
                  SizedBox(height: AppDimensions.spaceXS),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Delivery Fee'),
                      Text('₦${state.deliveryFee.toStringAsFixed(2)}'),
                    ],
                  ),
                  Divider(height: AppDimensions.spaceMD),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total',
                          style: Theme.of(context).textTheme.titleMedium),
                      Text('₦${state.total.toStringAsFixed(2)}',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium), // Replace with dynamic total
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: AppDimensions.spaceMD),

            // 4. Checkout Button
            ElevatedButton(
                onPressed: () {
                  context.go(Routes.orderScreen);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: AppDimensions.spaceSM),
                  child: Text(
                      'Proceed to Checkout • ₦${state.total.toStringAsFixed(2)}'),
                ))
          ],
        ),
      ),
    );
  }
}
