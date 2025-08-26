import 'package:flutter/material.dart';
import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/shared/shared.dart';

class AppDrawerWidget extends StatelessWidget {
  const AppDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 48),
      color: Colors.black,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        spacing: 12,
        children: [
          Text(
            'TOODUM',
            style: ThemeTypography.bold56.apply(color: ThemeColors.primary),
          ),
          const SizedBox(height: 24),
          Text(
            'Toom 2',
            style: ThemeTypography.bold56.apply(color: ThemeColors.white),
          ),
          Text(
            'Toom 3',
            style: ThemeTypography.bold56.apply(color: ThemeColors.white),
          ),
          Text(
            'Toom 4',
            style: ThemeTypography.bold56.apply(color: ThemeColors.white),
          ),
          Text(
            'Toom 5',
            style: ThemeTypography.bold56.apply(color: ThemeColors.white),
          ),
          Text(
            'Toom 6',
            style: ThemeTypography.bold56.apply(color: ThemeColors.white),
          ),
          Row(
            children: [
              Expanded(
                child: ToomButtonWidget(onPressed: () {
                  
                } , title: 'Sair', style: ToomButtonStyle.route, icon: ThemeIcons.arrowAltLeft),
              ),
            ],
          )
        ],
      ),
    );
  }
}
