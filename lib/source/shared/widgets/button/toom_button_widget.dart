import 'package:flutter/material.dart';
import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/shared/shared.dart';
import 'package:toodum/source/shared/widgets/button/toom_icon_widget.dart';

final class ToomButtonWidget extends StatelessWidget {
  const ToomButtonWidget({
    super.key,
    required this.onPressed,
    required this.title,
    this.icon,
    this.backgroundColor,
    this.foregroundColor,
    this.style = ToomButtonStyle.primary,
    this.padding = const EdgeInsets.symmetric(horizontal: 12),
    this.textStyle = ThemeTypography.bold20,
    this.width = double.infinity,
    this.height = 36,
    this.borderRadius = 18,
    this.enabled = true,
    this.isLoading = false,
    this.isHere = false,
  });

  final VoidCallback onPressed;
  final String title;
  final String? icon;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final ToomButtonStyle style;
  final EdgeInsetsGeometry padding;
  final TextStyle textStyle;
  final double width;
  final double height;
  final double borderRadius;
  final bool enabled;
  final bool isLoading;
  final bool isHere;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = _resolveStyle(style, enabled).copyWith(
      minimumSize: WidgetStateProperty.all(Size(width, height)),
    );

    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: buttonStyle,
        onPressed: () {
          if (enabled || !isLoading) onPressed();
        },
        child: isLoading
            ? CircularProgressIndicator(color: Colors.white)
            : Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (icon != null) ...[ToomIconWidget(icon: icon!, size: 24)],
                  Text(title, style: textStyle),
                ],
              ),
      ),
    );
  }

  ButtonStyle _resolveStyle(ToomButtonStyle style, bool enabled) {
    final commonShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius),
    );

    if (backgroundColor != null && foregroundColor != null) {
      return TextButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: commonShape,
        padding: padding,
      );
    }

    if (!enabled) {
      return TextButton.styleFrom(
        backgroundColor: ThemeColors.grey2,
        foregroundColor: ThemeColors.grey4,
        shape: commonShape,
        padding: padding,
      );
    }

    switch (style) {
      case ToomButtonStyle.primary:
        return TextButton.styleFrom(
          backgroundColor: ThemeColors.primary,
          foregroundColor: Colors.white,
          shape: commonShape,
          padding: padding,
        );
      case ToomButtonStyle.secondary:
        return TextButton.styleFrom(
          backgroundColor: ThemeColors.light,
          foregroundColor: ThemeColors.primary,
          shape: commonShape,
          padding: padding,
        );
      case ToomButtonStyle.outlinedPrimary:
        return OutlinedButton.styleFrom(
          side: BorderSide(color: ThemeColors.primary),
          foregroundColor: ThemeColors.primary,
          shape: commonShape,
          padding: padding,
        );
      case ToomButtonStyle.outlinedSecondary:
        return OutlinedButton.styleFrom(
          side: BorderSide(color: ThemeColors.light),
          foregroundColor: ThemeColors.light,
          shape: commonShape,
        );
      case ToomButtonStyle.disabled:
        return TextButton.styleFrom(
          backgroundColor: ThemeColors.grey2,
          foregroundColor: ThemeColors.grey4,
          shape: commonShape,
          padding: padding,
        );
      case ToomButtonStyle.warning:
        return TextButton.styleFrom(
          backgroundColor: ThemeColors.red,
          foregroundColor: Colors.white,
          shape: commonShape,
          padding: padding,
        );
      case ToomButtonStyle.route:
        return TextButton.styleFrom(
          backgroundColor: isHere ? ThemeColors.purpleDarkLight : Colors.transparent,
          foregroundColor: ThemeColors.secondary,
          shape: commonShape,
          padding: padding,
        );
    }
  }
}
