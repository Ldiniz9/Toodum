import 'package:flutter/material.dart';
import 'package:toodum/source/core/theme/theme.dart';

final class LandingWidget extends StatelessWidget {
  const LandingWidget({super.key, required this.onSignInPressed});

  final VoidCallback onSignInPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Container(
              decoration: const BoxDecoration(color: ThemeColors.secondary),
              child: Text(
                'TOODUM',
                style: ThemeTypography.bold56.apply(color: ThemeColors.primary),
              ),
            ),
          ),
          Positioned(
            bottom: 64,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  // child: ThemeButtonWidget(
                  //   onPressed: onSignInPressed,
                  //   title: 'Entrar',
                  //   style: ThemeButtonStyle.secondary,
                  // ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
