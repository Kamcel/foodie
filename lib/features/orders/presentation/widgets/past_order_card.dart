import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/orders/data/models/order.dart';

class PastOrderCard extends StatelessWidget {
  final Order order;
  final VoidCallback onReorder;
  final VoidCallback onActionTap;

  const PastOrderCard({
    super.key,
    required this.order,
    required this.onReorder,
    required this.onActionTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final Color statusTextColor =
        order.isDelivered ? const Color(0xFF2E7D32) : const Color(0xFFC62828);

    final Color statusBgColor =
        order.isDelivered ? const Color(0xFFE8F5E9) : const Color(0xFFFFFEEF0);

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: AppDimensions.spaceMD),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(AppDimensions.radiusLG),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spaceMD),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: colors.surfaceContainerLow,
                    borderRadius: BorderRadius.circular(AppDimensions.radiusMD),
                  ),
                  alignment: Alignment.center,
                  child: Text(order.isDelivered ? '🍕' : '🍣',
                      style: const TextStyle(fontSize: 24)),
                ),
                const SizedBox(width: AppDimensions.spaceSM),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        order.restaurantName,
                        style: textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        order.formattedDate,
                        style: textTheme.bodySmall
                            ?.copyWith(color: colors.outline),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: statusBgColor,
                    borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
                  ),
                  child: Text(
                    order.status.name.toUpperCase(),
                    style: TextStyle(
                      color: statusTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppDimensions.spaceMD),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    order.itemsSummary,
                    style:
                        textTheme.bodyMedium?.copyWith(color: colors.outline),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: AppDimensions.spaceMD),
                Text(
                  order.formattedTotal,
                  style: textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: AppDimensions.spaceMD),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      side: BorderSide(color: colors.outlineVariant),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radiusMD),
                      ),
                    ),
                    onPressed: onActionTap,
                    child: Text(
                      order.canRate ? 'Rate order' : 'Details',
                      style: TextStyle(
                          color: colors.onSurface, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(width: AppDimensions.spaceSM),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFF4B2B),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radiusMD),
                      ),
                    ),
                    onPressed: onReorder,
                    child: const Text('Reorder',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
