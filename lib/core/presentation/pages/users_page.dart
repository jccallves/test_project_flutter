import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class UsersPage extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Users Page Screen', style: GoogleFonts.alata())),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/products'),
          child: Text(
            'Go to the Product screen',
            style: GoogleFonts.allura(),
          ),
        ),
      ),
    );
  }
}
