import 'package:flutter/material.dart';
import 'package:flutter_app_utilidades/router/main_router.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
  /*  return const MaterialApp(
      home: HomeScreen(),
    );*/

    return MaterialApp.router(
      routerConfig: mainRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true
      )
    );
  }
}
