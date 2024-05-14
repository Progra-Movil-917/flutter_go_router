import 'package:flutter_app_utilidades/presentation/screen/about/about_screen.dart';
import 'package:flutter_app_utilidades/presentation/screen/home/home_screen.dart';
import 'package:flutter_app_utilidades/presentation/screen/inventory/inventory_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter mainRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(path: '/',
      builder: (context, state) => const HomeScreen()
    ),
    GoRoute(path: '/about',
      builder: (context, state) => const AboutScreen()
    ),
    GoRoute(path: '/inventory',
      builder: (context, state) => const InventoryScreen()
    ),
  ],
);