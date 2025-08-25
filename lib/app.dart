import 'package:toodum/source/core/flavor/flavor.dart';
import 'package:toodum/source/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:toodum/source/core/theme/theme.dart';

void initialize(FlavorConfig config) {}

final class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Toodum',
      theme: AppThemes.defaultTheme,
      routerConfig: appRouter,
    );
  }
}
