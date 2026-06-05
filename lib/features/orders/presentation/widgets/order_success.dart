import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/orders/data/models/order.dart';
import 'package:foodie/features/orders/presentation/widgets/active_order_card.dart';
import 'package:foodie/features/orders/presentation/widgets/past_order_card.dart';

class OrderSuccess extends StatelessWidget {
  final List<Order> orders;
  const OrderSuccess({super.key, required this.orders});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    // Separate active and past datasets early for cleaner indexing
    final activeOrders = orders.where((o) => o.isActive).toList();
    final pastOrders = orders.where((o) => !o.isActive).toList();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // AnimatedSize ensures that when active orders disappear, past orders slide up fluidly
        child: AnimatedSize(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── ANIMATED ACTIVE ORDERS SECTION ───────────────────
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 400),
                // Custom layout builder layout keeps alignment locked to top-left during transition
                layoutBuilder: (currentChild, previousChildren) {
                  return Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[
                      ...previousChildren,
                      if (currentChild != null) currentChild,
                    ],
                  );
                },
                // Uses a Fade + Scale transition combo
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: ScaleTransition(
                      scale: CurvedAnimation(
                        parent: animation,
                        curve: Curves.easeOut,
                      ),
                      child: child,
                    ),
                  );
                },
                // ValueKey triggers the animation whenever this tree changes from populated to empty
                child: activeOrders.isNotEmpty
                    ? Column(
                        key: const ValueKey('active_orders_section'),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ACTIVE ORDERS', style: textTheme.titleSmall),
                          SizedBox(height: AppDimensions.spaceMD),
                          ActiveOrderCard(
                            order: activeOrders.first,
                            onTrackTap: () {
                              // Next milestone entry route link goes here!
                            },
                          ),
                          SizedBox(height: AppDimensions.spaceLG),
                        ],
                      )
                    : const SizedBox.shrink(key: ValueKey('active_orders_empty')),
              ),

              // ── PAST ORDERS SECTION ──────────────────────────────
              Text('PAST ORDERS', style: textTheme.titleSmall),
              SizedBox(height: AppDimensions.spaceMD),
              
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: pastOrders.length,
                itemBuilder: (context, index) {
                  final order = pastOrders[index];
                  return PastOrderCard(
                    order: order,
                    onReorder: () {}, 
                    onActionTap: () {}, 
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
