import 'package:flutter/material.dart';
import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/shared/widgets/button/toodum_icon_widget.dart';

class ToodumDropdownInputWidget extends StatelessWidget {
  const ToodumDropdownInputWidget({
    super.key,
    required this.label,
    required this.icon,
    required this.options,
    required this.value,
    this.enabled = true,
    required this.onChanged,
    this.fillColor = ThemeColors.grey1,
  });

  final String label;
  final String icon;
  final List<String> options;
  final String value;
  final bool enabled;
  final void Function(String?) onChanged;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: ThemeTypography.semiBold12),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: options.contains(value) ? value : null,
          onChanged: enabled ? onChanged : null,
          items: options
              .map((item) => DropdownMenuItem(value: item, child: Text(item)))
              .toList(),
          style: ThemeTypography.semiBold12.apply(color: ThemeColors.dark),
          decoration: InputDecoration(
            fillColor: fillColor,
            filled: fillColor != null,
            hintText: label,
            hintStyle: ThemeTypography.regular12.apply(
              color: ThemeColors.grey4,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(0),
              child: ToodumIconWidget(
                icon: icon,
                size: 20,
                color: ThemeColors.grey4,
              ),
            ),
            prefixIconConstraints: const BoxConstraints(
              minWidth: 48,
              minHeight: 24,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: ThemeColors.grey2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: ThemeColors.grey2, width: 0.5),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ],
    );
  }
}
