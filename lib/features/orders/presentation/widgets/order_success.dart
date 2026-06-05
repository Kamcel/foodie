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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Active order section
            if (orders.any((o) => o.isActive)) ...[
              Text('ACTIVE ORDERS', style: textTheme.titleSmall),
              SizedBox(height: AppDimensions.spaceMD),
              ActiveOrderCard(
                order: orders.firstWhere((o) => o.isActive),
                onTrackTap: () {}, // TODO: go to tracking page
              ),
              SizedBox(height: AppDimensions.spaceLG),
            ],
            //Past order section
            Text('PAST ORDERS', style: textTheme.titleSmall),
            SizedBox(height: AppDimensions.spaceMD),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: orders.where((o) => !o.isActive).length,
              itemBuilder: (context, index) {
                final pastOrders = orders.where((o) => !o.isActive).toList();
                return PastOrderCard(
                  order: pastOrders[index],
                  onReorder: () {}, // TODO: implement reorder
                  onActionTap: () {}, // TODO: go to order details
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
