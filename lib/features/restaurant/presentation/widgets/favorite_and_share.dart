import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_colors.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class FavoriteAndShare extends StatelessWidget {
  final VoidCallback onFavorite;
  final VoidCallback onShare;
  final bool isFavorited;
  const FavoriteAndShare(
      {super.key,
      required this.onFavorite,
      required this.onShare,
      required this.isFavorited});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Row(
      children: [
        GestureDetector(
          onTap: onFavorite,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
            child: SizedBox(
                height: 40,
                width: 40,
                child: Stack(
                  children: [
                    BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 5,
                        sigmaY: 5,
                      ),
                      child: Container(),
                    ),
                    Center(
                      child: Icon(
                          isFavorited
                              ? Icons.favorite_rounded
                              : Icons.favorite_outlined,
                          color: isFavorited
                              ? AppColors.error
                              : colors.onSurfaceVariant),
                    )
                  ],
                )),
          ),
        ),
        SizedBox(width: AppDimensions.spaceXXS),
        GestureDetector(
          onTap: onShare,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
            child: SizedBox(
                height: 40,
                width: 40,
                child: Stack(
                  children: [
                    BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 5,
                        sigmaY: 5,
                      ),
                      child: Container(),
                    ),
                    Center(
                      child: Icon(Icons.share_outlined),
                    )
                  ],
                )),
          ),
        )
      ],
    );
  }
}
