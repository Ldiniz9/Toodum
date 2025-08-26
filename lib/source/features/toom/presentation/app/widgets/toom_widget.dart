import 'package:flutter/material.dart';
import 'package:toodum/source/core/theme/theme.dart';

class ToomWidget extends StatelessWidget {
  const ToomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isWideScreen = screenWidth >= 800;

    return Scaffold(
      backgroundColor: Colors.black,
      drawer: isWideScreen ? null : Drawer(),
      appBar: isWideScreen
          ? null
          : AppBar(
              backgroundColor: ThemeColors.primary,
              leading: Builder(
                builder: (context) => IconButton(
                  color: Colors.white,
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              title: Center(
                child: Image.asset(ThemeBranding.verticalGold, width: 64),
              ),
              actions: [SizedBox(width: 48)],
            ),
      body: Row(
        children: [
          Text('data', style: ThemeTypography.bold56.apply(color: ThemeColors.white),),
        ],
      ),
    );
  }
}