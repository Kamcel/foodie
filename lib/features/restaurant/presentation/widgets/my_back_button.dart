import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class MyBackButton extends StatelessWidget {
  final VoidCallback onBack;
  const MyBackButton({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onBack,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              padding: EdgeInsets.all(AppDimensions.spaceXS),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Container(
                  color: Colors.white.withValues(alpha: 0.2),
                  child: Icon(Icons.arrow_back)),
            ),
          ),
        ));
  }
}
