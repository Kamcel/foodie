import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class PromoSection extends StatefulWidget {
  final ValueChanged<String> onApply;
  const PromoSection({super.key, required this.onApply});

  @override
  State<PromoSection> createState() => _PromoSectionState();
}

class _PromoSectionState extends State<PromoSection> {
  late final TextEditingController _promoController;

  @override
  void initState() {
    super.initState();
    _promoController = TextEditingController();
  }

  @override
  void dispose() {
    _promoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppDimensions.spaceMD),
      decoration: BoxDecoration(
        color: colors.surface,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _promoController,
              decoration: InputDecoration(
                hintText: 'Enter promo code',
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.spaceSM),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppDimensions.radiusMD),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: colors.surfaceContainer,
              ),
            ),
          ),
          SizedBox(width: AppDimensions.spaceSM),
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 52),
              ),
              onPressed: () => widget.onApply(_promoController.text),
              child: const Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}
