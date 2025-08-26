import 'package:flutter/material.dart';
import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/shared/widgets/app_drawer_widget.dart';

class ToomWidget extends StatelessWidget {
  const ToomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isWideScreen = screenWidth >= 800;

    return Scaffold(
      backgroundColor: Colors.black,
      drawer: isWideScreen ? null : Drawer(child: AppDrawerWidget()),
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
                child: Text(
                  'TOODUM',
                  style: ThemeTypography.bold56.apply(color: ThemeColors.secondary),
                ),
              ),
              actions: [SizedBox(width: 48)],
            ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 12,
          children: [
            Text('Toom 1', style: ThemeTypography.bold56.apply(color: ThemeColors.white),),
            Text('Toom 2', style: ThemeTypography.bold56.apply(color: ThemeColors.white),),
            Text('Toom 3', style: ThemeTypography.bold56.apply(color: ThemeColors.white),),
            Text('Toom 4', style: ThemeTypography.bold56.apply(color: ThemeColors.white),),
            Text('Toom 5', style: ThemeTypography.bold56.apply(color: ThemeColors.white),),
            Text('Toom 6', style: ThemeTypography.bold56.apply(color: ThemeColors.white),),
          ],
        ),
      ),
    );
  }
}