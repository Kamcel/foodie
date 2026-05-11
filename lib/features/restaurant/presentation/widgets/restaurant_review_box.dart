import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/restaurant/data/models/review.dart';

class RestaurantReviewBox extends StatelessWidget {
  final Review reviews;

  const RestaurantReviewBox({
    super.key,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
        padding: const EdgeInsets.all(AppDimensions.spaceMD),
        width: double.infinity,
        decoration: BoxDecoration(
            color: colors.surfaceContainer,
            borderRadius: BorderRadius.circular(AppDimensions.radiusMD)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // details
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: reviews.userAvatar != null &&
                              reviews.userAvatar!.isNotEmpty
                          ? NetworkImage(reviews.userAvatar!)
                          : null,
                      child: reviews.userAvatar == null ||
                              reviews.userAvatar!.isNotEmpty
                          ? Icon(Icons.person_2_rounded)
                          : null,
                    ),
                    SizedBox(width: AppDimensions.spaceXS),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(reviews.userName,
                            style: textTheme.bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 2,
                        ),
                        Text(timeAgo(reviews.createdAt),
                            style: textTheme.bodySmall)
                      ],
                    ),
                  ],
                ),
                // Stars
                Row(
                  children: List.generate(5, (i) {
                    final filled = i < reviews.rating.round();
                    return Icon(
                      i < reviews.rating.round()
                          ? Icons.star
                          : Icons.star_border,
                      color: filled ? Colors.amber : colors.onSurfaceVariant,
                      size: 16,
                    );
                  }),
                ),
              ],
            ),
            SizedBox(
              height: AppDimensions.spaceSM,
            ),
            Text(reviews.comment, style: textTheme.bodyMedium)
          ],
        ));
  }

  String timeAgo(DateTime createdAt) {
    final diff = DateTime.now().difference(createdAt);
    if (diff.inDays > 365) return '${(diff.inDays / 365).floor()} years ago';
    if (diff.inDays > 30) return '${(diff.inDays / 30).floor()} months ago';
    if (diff.inDays > 0) return '${(diff.inDays)} days ago';
    if (diff.inHours > 0) return '${(diff.inHours)} hours ago';
    if (diff.inMinutes > 0) return '${(diff.inMinutes)} minutes ago';
    return 'Just now';
  }
}
