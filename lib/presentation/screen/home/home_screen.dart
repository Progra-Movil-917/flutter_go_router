import 'package:flutter/material.dart';
import 'package:flutter_app_utilidades/presentation/screen/home/widget/welcome_text.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home Screen',) ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              context.go('/about');
            },
          ),
          IconButton(
            icon: const Icon(Icons.inventory),
            onPressed: () {
              context.go('/inventory');
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.go('/settings');
            },
          ),]
      ),
      body: const Center(
        child: WelcomeText(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //  Navigator.pushNamed(context, '/about');
          context.go('/about');
        },
        child: const Icon(Icons.info),
      )
    );
  }
}