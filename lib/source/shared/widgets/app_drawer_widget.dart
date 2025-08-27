import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/shared/shared.dart';

class AppDrawerWidget extends StatelessWidget {
  const AppDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final currentRoute = GoRouterState.of(context).uri.toString();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 48, vertical: 48),
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
                style: ThemeTypography.bold56.apply(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 36,
            child: ToomButtonWidget(
              onPressed: () => context.go('/task'),
              title: 'Tarefas',
              style: ToomButtonStyle.route,
              icon: ThemeIcons.chart,
              isHere: currentRoute == '/task',
            ),
          ),
          SizedBox(height: 12),
          SizedBox(
            height: 36,
            child: ToomButtonWidget(
              onPressed: () => context.go('/toom'),
              title: 'Tooms',
              style: ToomButtonStyle.route,
              icon: ThemeIcons.happy,
              isHere: currentRoute == '/toom',
            ),
          ),
          const Spacer(flex: 4),
          SizedBox(
            height: 36,
            child: ToomButtonWidget(
              onPressed: () => context.go('/'),
              title: 'Sair',
              style: ToomButtonStyle.route,
              icon: ThemeIcons.arrowAltLeft,
            ),
          ),
        ],
      ),
    );
  }
}
