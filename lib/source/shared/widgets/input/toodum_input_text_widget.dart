import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/shared/widgets/button/toodum_icon_widget.dart';

class ToodumInputWidget extends StatelessWidget {
  const ToodumInputWidget({
    super.key,
    this.label,
    this.hint,
    required this.controller,
    this.obscureText = false,
    this.enabled = true,
    this.keyboardType = TextInputType.text,
    required this.onChanged,
    this.inputFormatters,
    this.icon,
    this.fillColor = ThemeColors.grey1,
    this.suffix,
    this.showLabel = true,
  });

  final String? label;
  final String? hint;
  final TextEditingController controller;
  final bool enabled;
  final bool obscureText;
  final TextInputType keyboardType;
  final void Function(String) onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final String? icon;
  final Color? fillColor;
  final Widget? suffix;
  final bool showLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) Text(label!, style: ThemeTypography.semiBold12),
        TextFormField(
          enabled: enabled,
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          style: ThemeTypography.semiBold14.apply(color: ThemeColors.dark),
          decoration: InputDecoration(
            fillColor: fillColor,
            filled: fillColor != null,
            hintText: hint,
            hintStyle: ThemeTypography.regular12.apply(
              color: ThemeColors.grey4,
            ),
            prefixIcon: icon != null
                ? Padding(
                    padding: const EdgeInsets.all(0),
                    child: ToodumIconWidget(
                      icon: icon!,
                      size: 20,
                      color: ThemeColors.grey4,
                    ),
                  )
                : null,
            prefixIconConstraints: const BoxConstraints(
              minWidth: 48,
              minHeight: 24,
            ),
            suffixIcon: suffix,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(color: ThemeColors.grey2),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(color: ThemeColors.grey2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(color: ThemeColors.grey2, width: 0.5),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
