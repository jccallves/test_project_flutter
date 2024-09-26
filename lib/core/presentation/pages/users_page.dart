import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class UsersPage extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users Page Screen')),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 1),
          colors: <Color>[
            Color(0xff6d2212),
            Color(0xff7b2c1b),
            //Color(0xff9b4430),
            //Color(0xffffb4a4),
            //Color(0xff823d00),
            // Color(0xffa8591f),
            //Color(0xffb05f25),
            // Color(0xffb05f25),
            // Color(0xffffb689),
            Color(0xff514318),
            // Color(0xff6d5e30),
            // Color(0xff776738),
            //Color(0xffdac58d),
          ],
          tileMode: TileMode.mirror,
        )),
        child: Center(
          child: ElevatedButton(
            onPressed: () => context.go('/products'),
            child: const Text(
              'Go to the Product screen',
            ),
          ),
        ),
      ),
    );
  }
}
