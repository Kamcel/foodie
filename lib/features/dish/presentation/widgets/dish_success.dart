import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_colors.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/widgets/app_checkbox_tie.dart';

import 'package:foodie/core/widgets/app_radio_group.dart';

import 'package:foodie/core/widgets/radio_option.dart';
import 'package:foodie/features/dish/data/models/dish.dart';
import 'package:foodie/features/dish/data/models/dish_enums.dart';
import 'package:foodie/features/dish/presentation/widgets/add_to_cart_button.dart';
import 'package:foodie/features/dish/presentation/widgets/dish_hero_header.dart';
import 'package:foodie/features/dish/presentation/widgets/dish_section_header.dart';
import 'package:foodie/features/dish/presentation/widgets/name_and_description_section.dart';
import 'package:foodie/features/dish/presentation/widgets/note.dart';
import 'package:foodie/core/widgets/quantity_selector.dart';

class DishSuccess extends StatelessWidget {
  final Dish dish;
  final double totalPrice;
  final bool isOrderable;
  final int quantity;
  final PortionSize? selectedSize;
  final List<CustomizationOption> selectedToppings;
  final void Function(PortionSize) onSizeSelected;
  final void Function(CustomizationOption) onToppingToggled;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onAddToCart;
  final TextEditingController noteController;
  final void Function(String) onChanged;

  const DishSuccess({
    super.key,
    required this.dish,
    required this.totalPrice,
    required this.isOrderable,
    required this.quantity,
    required this.selectedSize,
    required this.selectedToppings,
    required this.onSizeSelected,
    required this.onToppingToggled,
    required this.onIncrement,
    required this.onDecrement,
    required this.onAddToCart,
    required this.noteController,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final sizeOptions = PortionSize.values.map((size) {
      return RadioOption(
        value: size,
        title: size.displayName,
        subtitle: size.extraCharge > 0
            ? '+₦${size.extraCharge.toStringAsFixed(2)}'
            : 'Included',
      );
    }).toList();

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: colors.surface,
          expandedHeight: 300,
          automaticallyImplyLeading: false,
          flexibleSpace: FlexibleSpaceBar(
            background: DishHeroHeader(
              imageUrl: dish.imageUrl,
              height: 300,
              onBack: () => Navigator.pop(context),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(AppDimensions.spaceMD),
            child: NameAndDescriptionSection(
              dishName: dish.name,
              dishDescription: dish.description,
              price: dish.basePrice,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppDimensions.spaceMD),
            child: DishSectionHeader(
              title: 'Size',
              tagBgColor: colors.primary.withValues(alpha: 0.5),
              textColor: colors.primary,
              tagName: 'Required',
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppDimensions.spaceMD),
            child: AppRadioGroup<PortionSize>(
              options: sizeOptions,
              selectedValue: selectedSize,
              onChanged: (newSize) {
                if (newSize != null) onSizeSelected(newSize);
              },
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppDimensions.spaceMD),
            child: DishSectionHeader(
              title: 'Toppings',
              tagBgColor: AppColors.info.withValues(alpha: 0.5),
              textColor: colors.primary,
              tagName: 'Optional',
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppDimensions.spaceMD),
            child: Column(
              children: [
                AppCheckboxTile(
                  name: 'Extra Cheese',
                  price: 2.00,
                  isSelected:
                      selectedToppings.any((t) => t.name == 'Extra Cheese'),
                  onTap: () {
                    final topping = CustomizationOption(
                        id: 't1', name: 'Extra Cheese', additionalPrice: 2.00);
                    onToppingToggled(topping);
                  },
                ),
                AppCheckboxTile(
                  name: 'Bacon',
                  price: 3.00,
                  isSelected: selectedToppings.any((t) => t.name == 'Bacon'),
                  onTap: () {
                    final topping = CustomizationOption(
                        id: 't2', name: 'Bacon', additionalPrice: 3.00);
                    onToppingToggled(topping);
                  },
                ),
                AppCheckboxTile(
                  name: 'Avocado',
                  price: 2.50,
                  isSelected: selectedToppings.any((t) => t.name == 'Avocado'),
                  onTap: () {
                    final topping = CustomizationOption(
                        id: 't3', name: 'Avocado', additionalPrice: 2.50);
                    onToppingToggled(topping);
                  },
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Note(
            note: '',
            controller: noteController,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 4.0, horizontal: AppDimensions.spaceMD),
            child: Row(
              children: [
                Expanded(
                  child: QuantitySelector(
                    quantity: quantity,
                    onIncrement: onIncrement,
                    onDecrement: onDecrement,
                  ),
                ),
                SizedBox(width: AppDimensions.spaceXS),
                Expanded(
                  flex: 2,
                  child: AddToCartButton(
                    onPressed: isOrderable ? onAddToCart : null,
                    price: totalPrice,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
