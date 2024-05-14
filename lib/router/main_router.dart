
import 'package:flutter_app_utilidades/screen/about/about_screen.dart';
import 'package:flutter_app_utilidades/screen/home/home_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter mainRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(path: '/',
      builder: (context, state) => const HomeScreen()
    ),
    GoRoute(path: '/about',
      builder: (context, state) => const AboutScreen()
    ),
  ],
);