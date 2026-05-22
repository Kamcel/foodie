import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class DishTile extends StatelessWidget {
  final String imageUrl;
  final String dishName;
  final String description;
  final double price;
  final VoidCallback onAdd;
  const DishTile(
      {super.key,
      required this.imageUrl,
      required this.dishName,
      required this.description,
      required this.price,
      required this.onAdd});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: AppDimensions.spaceSM),
      child: Container(
        padding: const EdgeInsets.all(AppDimensions.spaceSM),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimensions.radiusMD),
            color: colors.surfaceContainer),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
                  child: Image.network(imageUrl, fit: BoxFit.cover),
                )),
            SizedBox(
              width: AppDimensions.spaceSM,
            ),
            Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(dishName,
                        style: textTheme.titleMedium?.copyWith(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: AppDimensions.spaceXS),
                    Text(description, style: textTheme.bodyMedium),
                    SizedBox(height: AppDimensions.spaceSM),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '₦${price.toStringAsFixed(2)}',
                          style: textTheme.bodyLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: onAdd,
                          child: CircleAvatar(
                            backgroundColor: colors.primary,
                            foregroundColor: Colors.white,
                            radius: 20,
                            child: Icon(
                              Icons.add,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

//('₦${price.toStringAsFixed(2)}'
