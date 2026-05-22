import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/restaurant/presentation/widgets/image_placeholder.dart';

class DishHeroHeader extends StatelessWidget {
  final String imageUrl;
  final double height;

  final VoidCallback onBack;
  const DishHeroHeader(
      {super.key,
      required this.imageUrl,
      required this.height,
      required this.onBack});

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
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(AppDimensions.spaceXS),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
