import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/profile/data/enums.dart';
import 'package:foodie/features/profile/data/models/profile_page_model.dart';
import 'package:foodie/features/profile/presentation/providers/profile_notifier.dart';
import 'package:foodie/features/profile/presentation/widgets/checkbox_selector.dart';

class Step4Dietary extends ConsumerStatefulWidget {
  final ProfilePageModel pageData;
  const Step4Dietary({super.key, required this.pageData});

  @override
  ConsumerState<Step4Dietary> createState() => _Step4DietaryState();
}

class _Step4DietaryState extends ConsumerState<Step4Dietary> {
  //Multi-select - dietarty restrictions
  final List<DietaryPreference> _selectedDietary = [];

  //Multi-select - allergies
  final List<Allergy> _selectedAllergy = [];
  //Single select - spice level
  SpiceLevel? _selectedSpice;

  void _toggleDietary(DietaryPreference pref) {
    setState(() {
      if (_selectedDietary.contains(pref)) {
        _selectedDietary.remove(pref);
      } else {
        _selectedDietary.add(pref);
      }
    });
    ref.read(profileProvider.notifier).updateDietary(_selectedDietary);
  }

  void _toggleAllergy(Allergy allergy) {
    setState(() {
      _selectedAllergy.contains(allergy)
          ? _selectedAllergy.remove(allergy)
          : _selectedAllergy.add(allergy);
    });
    ref.read(profileProvider.notifier).updateAllergy(_selectedAllergy);
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
            // Title
            Text(
              widget.pageData.title,
              style: textTheme.titleMedium,
            ),
            SizedBox(
              height: AppDimensions.spaceXS,
            ),

            // Subtitle
            Text(widget.pageData.subtitle),
            SizedBox(
              height: AppDimensions.spaceLG,
            ),
            // Text - description
            Text(
              'Dietary Restrictions',
              style: textTheme.displaySmall,
            ),
            SizedBox(
              height: AppDimensions.spaceMD,
            ),

            // Chips
            Wrap(
                spacing: AppDimensions.spaceSM,
                runSpacing: AppDimensions.spaceSM,
                children: [
                  ...DietaryPreference.values.map((pref) {
                    final bool isSelected = _selectedDietary.contains(pref);
                    return ChoiceChip(
                      label: Text(pref.displayName),
                      selected: isSelected,
                      onSelected: (_) => _toggleDietary(pref),
                      showCheckmark: false,
                      selectedColor: colors.primary,
                      labelStyle: TextStyle(
                          color:
                              isSelected ? colors.onPrimary : colors.outline),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(AppDimensions.radiusLG)),
                    );
                  }),
                ]),
            SizedBox(
              height: AppDimensions.spaceMD,
            ),
            //Text
            Text(
              'Allergies (Critical for safety)',
              style: textTheme.displaySmall,
            ),
            SizedBox(
              height: AppDimensions.spaceSM,
            ),
            // Checkox
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3.5,
                    crossAxisSpacing: AppDimensions.spaceSM,
                    mainAxisSpacing: AppDimensions.spaceMD),
                itemCount: Allergy.values.length,
                itemBuilder: (context, index) {
                  final allergy = Allergy.values[index];
                  final isSelected = _selectedAllergy.contains(allergy);
                  return CheckboxSelector(
                    value: isSelected,
                    onChanged: (_) => _toggleAllergy(allergy),
                    title: allergy.displayName,
                  );
                }),
            SizedBox(
              height: AppDimensions.spaceLG,
            ),
            // Title
            Text(
              'Spice Tolerance',
              style: textTheme.displaySmall,
            ),
            SizedBox(
              height: AppDimensions.spaceSM,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...SpiceLevel.values.map((level) {
                    final isSelected = _selectedSpice == level;
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppDimensions.spaceXS),
                      child: ChoiceChip(
                        selectedColor: colors.primary,
                        label: Text(
                          level.displayName,
                          textAlign: TextAlign.center,
                        ),
                        selected: isSelected,
                        onSelected: (_) {
                          setState(() => _selectedSpice = level);
                          ref
                              .read(profileProvider.notifier)
                              .updateSpiceLevel(level);
                        },
                        showCheckmark: false,
                        labelStyle: TextStyle(
                            color:
                                isSelected ? colors.onPrimary : colors.outline),
                      ),
                    );
                  })
                ],
              ),
            )
            // Spice Tolerance
          ],
        ),
      ),
    );
  }
}
