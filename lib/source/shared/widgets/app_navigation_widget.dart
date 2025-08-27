
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toodum/source/core/theme/theme.dart';


class AppNavigationWidget extends StatelessWidget {
  const AppNavigationWidget({super.key});

  int _getSelectedIndex(BuildContext context) {
    final currentRoute = GoRouterState.of(context).uri.toString();
    if (currentRoute == '/task') return 0;
    if (currentRoute == '/toom') return 1;
    return 2; // Sair 
  }

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/task');
        break;
      case 1:
        context.go('/toom');
        break;
      case 2:
        context.go('/');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = _getSelectedIndex(context);
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: ThemeColors.secondary,
      unselectedItemColor: Colors.white,
      currentIndex: selectedIndex,
      onTap: (index) => _onItemTapped(context, index),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart), 
          label: 'Tarefas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.emoji_emotions), 
          label: 'Tooms',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.logout), 
          label: 'Sair',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: ThemeTypography.bold14,
      unselectedLabelStyle: ThemeTypography.regular14,
    );
  }
}
