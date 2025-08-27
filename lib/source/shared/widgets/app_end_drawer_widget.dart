import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/shared/shared.dart';

class AppEndDrawerWidget extends StatelessWidget {
  const AppEndDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final currentRoute = GoRouterState.of(context).uri.toString();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 48),
      color: Colors.black,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 12,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'TOODUM',
                style: ThemeTypography.bold42.apply(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 36,
            child: ToodumButtonWidget(
              onPressed: () => context.go('/task'),
              title: 'Tarefas',
              style: ToodumButtonStyle.route,
              icon: ThemeIcons.chart,
              isHere: currentRoute == '/task',
            ),
          ),
          SizedBox(height: 12),
          SizedBox(
            height: 36,
            child: ToodumButtonWidget(
              onPressed: () => context.go('/toom'),
              title: 'Tooms',
              style: ToodumButtonStyle.route,
              icon: ThemeIcons.happy,
              isHere: currentRoute == '/toom',
            ),
          ),
          const Spacer(flex: 4),
          SizedBox(
            height: 36,
            child: ToodumButtonWidget(
              onPressed: () => context.go('/'),
              title: 'Sair',
              style: ToodumButtonStyle.route,
              icon: ThemeIcons.arrowAltLeft,
            ),
          ),
        ],
      ),
    );
  }
}
