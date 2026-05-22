import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class AppRadioTile<T> extends StatelessWidget {
  final T value;
  final String label;
  final Widget? trailing;

  const AppRadioTile(
      {super.key, required this.value, required this.label, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDimensions.spaceXS),
      child: Row(
        children: [
          Radio<T>(
            value: value,
          ),
          const SizedBox(width: AppDimensions.spaceSM),
          Expanded(child: Text(label)),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}
