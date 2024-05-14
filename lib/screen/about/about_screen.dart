import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Screen'),
        leading: ButtonBar(
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                context.go('/');
              //  Navigator.pop(context);
              },
            )
          ],

      ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              context.go('/about');
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'About Screen',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.network(
              width: 100,
              height: 100,
              'https://picsum.photos/250/250')
          ],
        )
      ),
    );
  }
}