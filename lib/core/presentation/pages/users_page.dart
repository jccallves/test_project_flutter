import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UsersPage extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users Page Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/products'),
          child: const Text('Go to the Product screen'),
        ),
      ),
    );
  }
}
