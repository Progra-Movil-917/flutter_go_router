import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go('/');
          },
        ),
        title: const Text('Inventory'),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child:Image.asset('assets/CEUTEC-logo-01.png'),
        )
      ),
      body: const Center(
        child: Text('Inventory Screen'),
      ),
    );
  }
}