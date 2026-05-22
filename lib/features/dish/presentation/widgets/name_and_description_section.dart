import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class NameAndDescriptionSection extends StatelessWidget {
  final String dishName;
  final String dishDescription;
  final double price;
  const NameAndDescriptionSection(
      {super.key,
      required this.dishName,
      required this.dishDescription,
      required this.price});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //name
        Text(dishName, style: textTheme.displayLarge),
        SizedBox(
          height: AppDimensions.spaceSM,
        ),

        //description
        Text(dishDescription, style: textTheme.bodyLarge),
        SizedBox(
          height: AppDimensions.spaceLG,
        ),
        //price
        Text('₦${price.toStringAsFixed(2)}',
            style: textTheme.titleLarge?.copyWith(
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.bold)),
      ],
    );
  }
}
