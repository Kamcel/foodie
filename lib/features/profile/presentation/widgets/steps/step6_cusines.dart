import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie/core/theme/app_colors.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/widgets/checkbox_tile.dart';
import 'package:foodie/features/profile/data/enums.dart';
import 'package:foodie/features/profile/data/models/profile_page_model.dart';
import 'package:foodie/features/profile/presentation/providers/profile_notifier.dart';
import 'package:foodie/features/profile/presentation/widgets/cuisine_card.dart';

class Step6Cusines extends ConsumerStatefulWidget {
  final ProfilePageModel pageData;

  const Step6Cusines({super.key, required this.pageData});

  @override
  ConsumerState<Step6Cusines> createState() => _Step6Cusines();
}

class _Step6Cusines extends ConsumerState<Step6Cusines> {
  final List<Cuisine> _selectedCuisines = [];
  bool enableUpdates = false;
  bool enableDeals = false;

  void _toggleCuisine(Cuisine cuisine) {
    setState(() {
      _selectedCuisines.contains(cuisine)
          ? _selectedCuisines.remove(cuisine)
          : _selectedCuisines.add(cuisine);
    });
    ref.read(profileProvider.notifier).updateCuisine(_selectedCuisines);
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(AppDimensions.spaceSM),
      decoration: BoxDecoration(
          color: colors.onSurface.withValues(alpha: .1),
          borderRadius: BorderRadius.circular(AppDimensions.radiusMD)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Title
            Text(
              widget.pageData.title,
              style: textTheme.titleMedium,
            ),
            SizedBox(
              height: AppDimensions.spaceXS,
            ),

            //Subtitle
            Text(widget.pageData.subtitle),
            SizedBox(
              height: AppDimensions.spaceLG,
            ),
            // Favorite Cuisines - gridview
            GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Cuisine.values.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //childAspectRatio: 3.0,
                    crossAxisSpacing: AppDimensions.spaceSM,
                    mainAxisSpacing: AppDimensions.spaceMD),
                itemBuilder: (context, index) {
                  final cuisine = Cuisine.values[index];
                  return CuisineCard(
                      displayName: cuisine.displayName,
                      emoji: cuisine.emoji,
                      isSelected: _selectedCuisines.contains(cuisine),
                      onTap: () => _toggleCuisine(cuisine));
                }),
            SizedBox(
              height: AppDimensions.spaceMD,
            ),

            // Checkbox tile
            CheckboxTile(
              value: enableUpdates,
              onChanged: (value) {
                setState(() => enableUpdates = value);
                ref.read(profileProvider.notifier).updateOrder(value);
              },
              title: 'Order Updates',
              subtitle: 'Push notifications for delivery status',
              position: CheckBoxPosition.right,
              activeColor: colors.primary,
              leading: _buildUpdates(),
            ),
            SizedBox(
              height: AppDimensions.spaceMD,
            ),

            CheckboxTile(
              value: enableDeals,
              onChanged: (value) {
                setState(() => enableDeals = value);
                ref.read(profileProvider.notifier).updateDeals(value);
              },
              leading: _buildDeals(),
              title: 'Deals & Offers',
              subtitle: 'Personalized discounts and promos',
              position: CheckBoxPosition.right,
              activeColor: colors.primary,
            ),
            //6
            //7
            //8
          ],
        ),
      ),
    );
  }

  Widget _buildUpdates() {
    final colors = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(AppDimensions.spaceSM),
      decoration: BoxDecoration(
          color: colors.tertiary.withValues(alpha: 0.5),
          shape: BoxShape.circle),
      child: Icon(
        FontAwesomeIcons.bell,
        color: colors.tertiary,
      ),
    );
  }

  Widget _buildDeals() {
    return Container(
      padding: const EdgeInsets.all(AppDimensions.spaceSM),
      decoration: BoxDecoration(
          color: AppColors.indian.withValues(alpha: 0.5),
          shape: BoxShape.circle),
      child: Icon(
        FontAwesomeIcons.tag,
        color: AppColors.indian,
      ),
    );
  }
}
