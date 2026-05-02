import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/utils/size_utils.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: colors.surface,
      body: Column(
        children: [
          SizedBox(height: AppDimensions.spaceLG),

          Image.asset(
            'assets/images/logo.png',
            width: SizeUtils.wp(50),
            height: SizeUtils.hp(10),
            //fit: BoxFit.cover,
          ),
          Text('Just Testing', style: textTheme.bodySmall),
        ],
      ),
    );
  }
}
