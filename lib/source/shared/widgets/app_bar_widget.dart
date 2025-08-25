import 'package:flutter/material.dart';
import '../../core/theme/theme.dart';

final class AppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarWidget({super.key, required this.title, this.onLeadingPressed});

  final String title;
  final VoidCallback? onLeadingPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      decoration: BoxDecoration(color: ThemeColors.primary),
      child: SafeArea(
        bottom: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (onLeadingPressed != null) ...[
              const SizedBox(width: 16),
            ],
            Expanded(
              child: Text(
                title,
                style: ThemeTypography.bold14.apply(color: ThemeColors.light),
                textAlign: TextAlign.center,
              ),
            ),
            // TODO: Insert actions
            if (onLeadingPressed != null) const SizedBox(width: 40),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
