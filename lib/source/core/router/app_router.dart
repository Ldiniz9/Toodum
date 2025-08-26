import 'package:go_router/go_router.dart';
import 'package:toodum/source/features/landing/presentation/app/pages/landing_page.dart';
import 'package:toodum/source/features/toom/presentation/app/pages/toom_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',

  routes: [
    GoRoute(path: '/', builder: (context, state) => const LandingPage()),
    GoRoute(path: '/toom', builder: (context, state) => const ToomPage()),
  ],
  
);