import 'package:flutter/material.dart';
import 'package:flutter_app_utilidades/presentation/screen/inventory/widgets/product_list.dart';
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
      body: Center(
        child: productList(),
      ),
    );
  }
}