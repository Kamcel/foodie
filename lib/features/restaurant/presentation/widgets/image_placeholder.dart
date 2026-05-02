import 'package:flutter/material.dart';

class ImagePlaceholder extends StatelessWidget {
  final double size;
  const ImagePlaceholder({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      height: size,
      color: colors.surfaceContainer,
      child: Center(
          child: Icon(
        Icons.restaurant_rounded,
        size: size * 0.3,
        color: colors.outline,
      )),
    );
  }
}
