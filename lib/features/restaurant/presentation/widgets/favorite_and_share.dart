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
    return Row(
      children: [
        GestureDetector(
            onTap: onFavorite,
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
                  child: Container(
                      color: Colors.white.withValues(alpha: 0.2),
                      child: Icon(
                        isFavorited
                            ? Icons.favorite_border_rounded
                            : Icons.favorite_border_outlined,
                        color:
                            isFavorited ? AppColors.error : Colors.transparent,
                      )),
                ),
              ),
            )),
        SizedBox(width: AppDimensions.spaceXXS),
        GestureDetector(
            onTap: onShare,
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
                  child: Container(
                      color: Colors.white.withValues(alpha: 0.2),
                      child: Icon(
                        Icons.share_outlined,
                      )),
                ),
              ),
            ))
      ],
    );
  }
}


// GestureDetector(
//         onTap: onBack,
//         child: Container(
//             height: 40,
//             width: 40,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(AppDimensions.spaceXS),
//                 color: Colors.black),
//             child: Icon(
//               Icons.arrow_back,
//             )));


//             GestureDetector(
//             onTap: onFavorite,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//                 child: Container(
//                   padding: EdgeInsets.all(AppDimensions.spaceXS),
//                   decoration:
//                       BoxDecoration(borderRadius: BorderRadius.circular(8)),
//                   child: Container(
//                       color: Colors.white.withValues(alpha: 0.2),
//                       child: Icon(
//                         isFavorited
//                             ? Icons.favorite_border_rounded
//                             : Icons.favorite_border_outlined,
//                         color:
//                             isFavorited ? AppColors.error : Colors.transparent,
//                       )),
//                 ),
//               ),
//             )),