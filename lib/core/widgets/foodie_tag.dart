import 'package:flutter/material.dart';
import 'package:foodie/features/restaurant/data/restaurant_enum.dart';

// ─────────────────────────────────────────────────────────────────────────────
// TAG SIZE
// ─────────────────────────────────────────────────────────────────────────────

enum TagSize { small, medium, large }

extension TagSizeX on TagSize {
  double get fontSize => switch (this) {
        TagSize.small => 10,
        TagSize.medium => 12,
        TagSize.large => 14,
      };

  double get emojiSize => switch (this) {
        TagSize.small => 11,
        TagSize.medium => 13,
        TagSize.large => 16,
      };

  EdgeInsets get padding => switch (this) {
        TagSize.small => const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
        TagSize.medium =>
          const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        TagSize.large =>
          const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      };

  double get borderRadius => switch (this) {
        TagSize.small => 6,
        TagSize.medium => 8,
        TagSize.large => 10,
      };

  double get iconSize => switch (this) {
        TagSize.small => 11,
        TagSize.medium => 13,
        TagSize.large => 16,
      };
}

// ─────────────────────────────────────────────────────────────────────────────
// TAG VARIANT
// ─────────────────────────────────────────────────────────────────────────────

enum TagVariant { filled, outlined, soft }

// ─────────────────────────────────────────────────────────────────────────────
// BASE TAG WIDGET
// ─────────────────────────────────────────────────────────────────────────────

class FoodieTag extends StatelessWidget {
  const FoodieTag({
    super.key,
    required this.label,
    this.emoji,
    this.icon,
    required this.color,
    this.size = TagSize.medium,
    this.variant = TagVariant.soft,
    this.onTap,
  });

  final String label;
  final String? emoji;
  final IconData? icon;
  final Color color;
  final TagSize size;
  final TagVariant variant;
  final VoidCallback? onTap;

  // ── Color helpers ──────────────────────────────────────────────────────────

  Color _bg(BuildContext context) => switch (variant) {
        TagVariant.filled => color,
        TagVariant.outlined => Colors.transparent,
        TagVariant.soft => color.withOpacity(0.12),
      };

  Color _fg(BuildContext context) => switch (variant) {
        TagVariant.filled => _contrastColor(color),
        TagVariant.outlined => color,
        TagVariant.soft => color,
      };

  Border? _border() => switch (variant) {
        TagVariant.outlined => Border.all(color: color, width: 1.5),
        _ => null,
      };

  /// Returns white or dark text depending on background luminance.
  Color _contrastColor(Color bg) =>
      ThemeData.estimateBrightnessForColor(bg) == Brightness.dark
          ? Colors.white
          : const Color(0xFF1F1209);

  // ── Build ──────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final fg = _fg(context);

    Widget child = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (emoji != null) ...[
          Text(emoji!, style: TextStyle(fontSize: size.emojiSize, height: 1.2)),
          const SizedBox(width: 4),
        ] else if (icon != null) ...[
          Icon(icon, size: size.iconSize, color: fg),
          const SizedBox(width: 4),
        ],
        Text(
          label,
          style: TextStyle(
            fontSize: size.fontSize,
            fontWeight: FontWeight.w700,
            color: fg,
            height: 1.2,
          ),
        ),
      ],
    );

    child = Container(
      padding: size.padding,
      decoration: BoxDecoration(
        color: _bg(context),
        borderRadius: BorderRadius.circular(size.borderRadius),
        border: _border(),
      ),
      child: child,
    );

    if (onTap != null) {
      child = GestureDetector(
        onTap: onTap,
        child: child,
      );
    }

    return child;
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// ENUM-SPECIFIC FACTORY CONSTRUCTORS
// Each one reads directly from your enum's .emoji / .color / .icon / .badge
// ─────────────────────────────────────────────────────────────────────────────

extension FoodieTagFactories on FoodieTag {
  // ── RestaurantStatus ───────────────────────────────────────────────────────
  static FoodieTag restaurantStatus(
    RestaurantStatus status, {
    TagSize size = TagSize.medium,
    TagVariant variant = TagVariant.soft,
    VoidCallback? onTap,
  }) =>
      FoodieTag(
        label: status.displayName,
        emoji: status.emoji,
        color: status.color,
        size: size,
        variant: variant,
        onTap: onTap,
      );

  // ── PriceRange ─────────────────────────────────────────────────────────────
  static FoodieTag priceRange(
    PriceRange price, {
    bool showDollarSign = true, // show '$$' instead of 'Moderate' if true
    TagSize size = TagSize.medium,
    TagVariant variant = TagVariant.soft,
    VoidCallback? onTap,
  }) =>
      FoodieTag(
        label: showDollarSign ? price.dollarSign : price.label,
        emoji: price.emoji,
        color: price.color,
        size: size,
        variant: variant,
        onTap: onTap,
      );

  // ── OrderType ──────────────────────────────────────────────────────────────
  static FoodieTag orderType(
    OrderType type, {
    bool useIcon = false, // use MaterialIcon instead of emoji
    TagSize size = TagSize.medium,
    TagVariant variant = TagVariant.soft,
    VoidCallback? onTap,
  }) =>
      FoodieTag(
        label: type.displayName,
        emoji: useIcon ? null : type.emoji,
        icon: useIcon ? type.icon : null,
        color: type.color,
        size: size,
        variant: variant,
        onTap: onTap,
      );

  // ── PromotionType ──────────────────────────────────────────────────────────
  static FoodieTag promotionType(
    PromotionType promo, {
    TagSize size = TagSize.medium,
    TagVariant variant = TagVariant.filled,
    VoidCallback? onTap,
  }) =>
      FoodieTag(
        label: promo.displayName,
        emoji: promo.emoji,
        color: promo.color,
        size: size,
        variant: variant,
        onTap: onTap,
      );

  // ── DietaryPreference ──────────────────────────────────────────────────────
  static FoodieTag dietaryPreference(
    RestaurantDietaryPreference diet, {
    TagSize size = TagSize.medium,
    TagVariant variant = TagVariant.soft,
    VoidCallback? onTap,
  }) =>
      FoodieTag(
        label: diet.displayName,
        emoji: diet.emoji,
        color: diet.color,
        size: size,
        variant: variant,
        onTap: onTap,
      );

  // ── CuisineType ────────────────────────────────────────────────────────────
  static FoodieTag cuisineType(
    CuisineType cuisine, {
    TagSize size = TagSize.medium,
    TagVariant variant = TagVariant.soft,
    VoidCallback? onTap,
  }) =>
      FoodieTag(
        label: cuisine.displayName,
        emoji: cuisine.emoji,
        color: cuisine.color,
        size: size,
        variant: variant,
        onTap: onTap,
      );

  // ── MenuItemStatus ─────────────────────────────────────────────────────────
  static FoodieTag menuItemStatus(
    MenuItemStatus status, {
    TagSize size = TagSize.medium,
    TagVariant variant = TagVariant.soft,
    VoidCallback? onTap,
  }) =>
      FoodieTag(
        label: status.displayName,
        emoji: status.emoji,
        color: status.color,
        size: size,
        variant: variant,
        onTap: onTap,
      );

  // ── PaymentMethod ──────────────────────────────────────────────────────────
  static FoodieTag paymentMethod(
    PaymentMethod method, {
    bool useIcon = false,
    TagSize size = TagSize.medium,
    TagVariant variant = TagVariant.outlined,
    VoidCallback? onTap,
  }) =>
      FoodieTag(
        label: method.displayName,
        emoji: useIcon ? null : method.emoji,
        icon: useIcon ? method.icon : null,
        color: method.color,
        size: size,
        variant: variant,
        onTap: onTap,
      );

  // ── DeliveryPriority ───────────────────────────────────────────────────────
  static FoodieTag deliveryPriority(
    DeliveryPriority priority, {
    TagSize size = TagSize.medium,
    TagVariant variant = TagVariant.soft,
    VoidCallback? onTap,
  }) =>
      FoodieTag(
        label: priority.displayName,
        emoji: priority.emoji,
        color: priority.color,
        size: size,
        variant: variant,
        onTap: onTap,
      );

  // ── RestaurantTier ─────────────────────────────────────────────────────────
  static FoodieTag restaurantTier(
    RestaurantTier tier, {
    bool useBadge = true, // show full badge text e.g. '🔥 Popular'
    TagSize size = TagSize.medium,
    TagVariant variant = TagVariant.soft,
    VoidCallback? onTap,
  }) =>
      FoodieTag(
        // badge already has the emoji embedded, so no separate emoji field
        label: useBadge ? tier.badge : tier.displayName,
        emoji: useBadge ? null : tier.emoji,
        color: tier.color,
        size: size,
        variant: variant,
        onTap: onTap,
      );

  // ── NotificationType ───────────────────────────────────────────────────────
  static FoodieTag notificationType(
    NotificationType type, {
    TagSize size = TagSize.medium,
    TagVariant variant = TagVariant.soft,
    VoidCallback? onTap,
  }) =>
      FoodieTag(
        label: type.displayName,
        emoji: type.emoji,
        color: type.color,
        size: size,
        variant: variant,
        onTap: onTap,
      );

  // ── CancellationReason ─────────────────────────────────────────────────────
  static FoodieTag cancellationReason(
    CancellationReason reason, {
    TagSize size = TagSize.medium,
    TagVariant variant = TagVariant.soft,
    VoidCallback? onTap,
  }) =>
      FoodieTag(
        label: reason.displayName,
        emoji: reason.emoji,
        color: reason.color,
        size: size,
        variant: variant,
        onTap: onTap,
      );

  // ── RatingCategory ─────────────────────────────────────────────────────────
  static FoodieTag ratingCategory(
    RatingCategory category, {
    TagSize size = TagSize.medium,
    TagVariant variant = TagVariant.soft,
    VoidCallback? onTap,
  }) =>
      FoodieTag(
        label: category.displayName,
        emoji: category.emoji,
        color: category.color,
        size: size,
        variant: variant,
        onTap: onTap,
      );

  // ── DayOfWeek ──────────────────────────────────────────────────────────────
  static FoodieTag dayOfWeek(
    DayOfWeek day, {
    bool useShortName = true,
    TagSize size = TagSize.medium,
    TagVariant variant = TagVariant.soft,
    VoidCallback? onTap,
  }) =>
      FoodieTag(
        label: useShortName ? day.shortName : day.fullName,
        emoji: day.emoji,
        color: day.color,
        size: size,
        variant: variant,
        onTap: onTap,
      );
}

// ─────────────────────────────────────────────────────────────────────────────
// TAG ROW  — wraps multiple tags in a scrollable or wrapping row
// ─────────────────────────────────────────────────────────────────────────────

class TagRow extends StatelessWidget {
  const TagRow({
    super.key,
    required this.tags,
    this.spacing = 6,
    this.scrollable = false,
    this.runSpacing = 6,
  });

  final List<FoodieTag> tags;
  final double spacing;
  final double runSpacing;
  final bool scrollable;

  @override
  Widget build(BuildContext context) {
    if (scrollable) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 0; i < tags.length; i++) ...[
              tags[i],
              if (i < tags.length - 1) SizedBox(width: spacing),
            ],
          ],
        ),
      );
    }

    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      children: tags,
    );
  }
}
