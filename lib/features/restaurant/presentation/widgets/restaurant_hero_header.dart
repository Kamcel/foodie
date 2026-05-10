import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/restaurant/presentation/widgets/favorite_and_share.dart';
import 'package:foodie/features/restaurant/presentation/widgets/image_placeholder.dart';
import 'package:foodie/features/restaurant/presentation/widgets/my_back_button.dart';

class RestaurantHeroHeader extends StatelessWidget {
  final String imageUrl;
  final double height;
  const RestaurantHeroHeader(
      {super.key, required this.imageUrl, required this.height});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: height,
          width: double.infinity,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            errorBuilder: (
              _,
              __,
              ___,
            ) =>
                ImagePlaceholder(size: height),
          ),
        ),
        Positioned(
            top: AppDimensions.spaceMD,
            left: AppDimensions.spaceMD,
            child: MyBackButton(
              onBack: () {
                //TODO: back to restaurant screen
              },
            )),
        Positioned(
            top: AppDimensions.spaceMD,
            right: AppDimensions.spaceMD,
            child: FavoriteAndShare(
                onFavorite: () {
                  //TODO: favorite logic
                },
                onShare: () {
                  //TODO: share logic
                },
                isFavorited: true))
      ],
    );
  }
}
