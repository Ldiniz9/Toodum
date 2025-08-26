import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toodum/source/core/theme/theme.dart';

final class ToomIconWidget extends StatelessWidget {
  const ToomIconWidget({
    super.key,
    required this.icon,
    this.onPressed,
    this.color = ThemeColors.secondary,
    this.size = 10,
    this.padding = EdgeInsets.zero,
    this.tooltip,
  });

  final String icon;
  final VoidCallback? onPressed;
  final Color color;
  final double size;
  final EdgeInsetsGeometry padding;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      tooltip: tooltip,
      style: IconButton.styleFrom(padding: padding),
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        width: size,
        height: size,
        fit: BoxFit.contain,
      ),
    );
  }
}
