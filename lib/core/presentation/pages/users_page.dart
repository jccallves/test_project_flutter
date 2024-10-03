import 'package:flutter/material.dart';
import 'package:test_project/core/presentation/components/userGridView.dart';

class UsersPage extends StatefulWidget {
  /// Constructs a [HomeScreen]
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users Page Screen')),
      body: const Center(
        child: UserGridView(),
      ),
    );
  }
}
