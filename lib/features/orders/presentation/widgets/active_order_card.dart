import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/orders/data/models/order.dart';

class ActiveOrderCard extends StatelessWidget {
  final Order order;
  final VoidCallback onTrackTap;

  const ActiveOrderCard({
    super.key,
    required this.order,
    required this.onTrackTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: colors.surfaceContainer,
        borderRadius: BorderRadius.circular(AppDimensions.radiusMD),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spaceMD),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(AppDimensions.spaceSM),
                  decoration: const BoxDecoration(
                    color: Colors.white24,
                    shape: BoxShape.circle,
                  ),
                  child: const Text('🍔', style: TextStyle(fontSize: 24)),
                ),
                const SizedBox(width: AppDimensions.spaceSM),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        order.restaurantName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '${order.itemCount} items • ${order.formattedTotal}',
                        style: const TextStyle(
                            color: Colors.white70, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white24,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(AppDimensions.radiusXL),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                  onPressed: onTrackTap,
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Track',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: 4),
                      Icon(Icons.arrow_forward, color: Colors.white, size: 14),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppDimensions.spaceMD),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppDimensions.spaceSM),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(AppDimensions.radiusMD),
              ),
              child: Row(
                children: [
                  const Text('🏍️', style: TextStyle(fontSize: 18)),
                  const SizedBox(width: AppDimensions.spaceSM),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'On the way • ETA ${order.estimatedDeliveryTime ?? "Calculating..."}', // 👈 DYNAMIC
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                        if (order.riderName != null)
                          Text(
                            '${order.riderName} is heading to you',
                            style: const TextStyle(
                                color: Colors.white70, fontSize: 11),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
