import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductsPage extends StatelessWidget {
  /// Constructs a [DetailsScreen]
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Products Page',
      )),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
          child: const Text(
            'Go back to the Home Page',
          ),
        ),
      ),
    );
  }
}
