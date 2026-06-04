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
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final state = ref.watch(cartProvider);
    final cartNotifier = ref.read(cartProvider.notifier);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Your Cart',
        showBack: true,
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Pinned Modern Summary Sheet
          Container(
            padding: const EdgeInsets.all(AppDimensions.spaceMD),
            color: colors.surface,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Subtotal'),
                    Text('₦${state.subtotal.toStringAsFixed(2)}'),
                  ],
                ),
                const SizedBox(height: AppDimensions.spaceXS),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Delivery Fee'),
                    Text('₦${state.calculatedDeliveryFee.toStringAsFixed(2)}'),
                  ],
                ),
                if (state.discount > 0) ...[
                  const SizedBox(height: AppDimensions.spaceXS),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Discount (10%)', style: TextStyle(color: Colors.green)),
                      Text('-₦${state.discount.toStringAsFixed(2)}', style: const TextStyle(color: Colors.green)),
                    ],
                  ),
                ],
                const Divider(height: AppDimensions.spaceMD),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total', style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
                    Text('₦${state.total.toStringAsFixed(2)}', style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: AppDimensions.spaceMD),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colors.primary,
                      foregroundColor: colors.onPrimary,
                      padding: const EdgeInsets.symmetric(vertical: AppDimensions.spaceMD),
                    ),
                    // SVOL: Disable button conditionally if cart is empty
                    onPressed: state.items.isEmpty ? null : () {},
                    child: Text('Proceed to Checkout • ₦${state.total.toStringAsFixed(2)}'),
                  ),
                ),
              ],
            ),
          ),
          AppNavBar(
            currentIndex: 2,
            onTap: (index) {
              if (index == 2) return;
              if (index == 0 || index == 1) {
                context.go(Routes.restaurantScreen);
              }
            },
          ),
        ],
      ),
      body: state.items.isEmpty
          ? const Center(child: Text('Your cart is empty')) // Simple SVOL layout choice
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppDimensions.spaceMD),
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.items.length,
                      itemBuilder: (context, index) {
                        final item = state.items[index];
                        return Dismissible(
                          key: ValueKey(item.id),
                          direction: DismissDirection.endToStart,
                          onDismissed: (_) => cartNotifier.removeItem(item.id), // Direct State Sync
                          background: Container(
                            color: colors.errorContainer,
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.symmetric(horizontal: AppDimensions.spaceMD),
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
                    const SizedBox(height: AppDimensions.spaceMD),
                    OutlinedButton(
                      onPressed: () => context.pop(),
                      child: const Text('+ Add More Items'),
                    ),
                    const SizedBox(height: AppDimensions.spaceMD),
                    PromoSection(onApply: cartNotifier.applyPromoCode),
                    const SizedBox(height: AppDimensions.spaceXL * 2), // Prevent item clipping
                  ],
                ),
              ),
            ),
    );
  }
}
