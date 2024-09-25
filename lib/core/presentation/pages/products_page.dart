import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsPage extends StatelessWidget {
  /// Constructs a [DetailsScreen]
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Products Page',
        style: GoogleFonts.gasoekOne(),
      )),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
          child: Text(
            'Go back to the Home Page',
            style: GoogleFonts.nobile(),
          ),
        ),
      ),
    );
  }
}
