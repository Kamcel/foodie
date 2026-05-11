import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/utils/size_utils.dart';

class RestaurantLoading extends StatelessWidget {
  const RestaurantLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
            7,
            (_) => Padding(
                  padding: const EdgeInsets.all(AppDimensions.spaceXS),
                  child: Container(
                    width: double.infinity,
                    height: SizeUtils.hp(30),
                    decoration: BoxDecoration(
                        color: colors.surfaceContainer,
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radiusMD)),
                  ),
                )),
      ),
    );
  }
}
