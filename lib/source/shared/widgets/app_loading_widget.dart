import 'package:flutter/material.dart';
import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/shared/widgets/app_bar_widget.dart';

final class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({super.key, required this.appBarTitle, this.title});

  final String appBarTitle;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: appBarTitle),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(color: ThemeColors.primary),
            const SizedBox(height: 16),
            Text(
              title ?? 'Carregando...',
              style: ThemeTypography.bold14.apply(color: ThemeColors.primary),
            ),
          ],
        ),
      ),
    );
  }
}
