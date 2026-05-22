import 'package:flutter/material.dart';
import 'package:foodie/core/widgets/radio_option.dart';

class AppRadioGroup<T> extends StatelessWidget {
  final List<RadioOption<T>> options;
  final T? selectedValue;
  final ValueChanged<T?> onChanged;

  const AppRadioGroup({
    super.key,
    required this.options,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return RadioGroup<T>(
      groupValue: selectedValue,
      onChanged: onChanged,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: options.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final option = options[index];
          final isSelected = option.value == selectedValue;

          return InkWell(
            onTap: () => onChanged(option.value),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  Expanded(child: Text(option.title)),
                  if (option.subtitle != null) ...[
                    Text(option.subtitle!),
                    const SizedBox(width: 16),
                  ],
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: isSelected
                            ? Theme.of(context).colorScheme.primary
                            : Colors.black26,
                        width: isSelected ? 6.5 : 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
