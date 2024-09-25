import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/core/application/services/http/logger/log.dart';
import 'package:test_project/core/domain/entities/counter_domain.dart';
import 'package:test_project/core/presentation/cubit/counter/counter_cubit.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final log = getLogger('Página', 'CounterPage');
  final String title = 'Counter Page';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: Duration.zero,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title, style: GoogleFonts.acme()),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: BlocBuilder<CounterCubit, Counter>(
                builder: (context, state) {
                  return Text(state.counter.toString());
                },
              ),
            ),
            ElevatedButton(
              onPressed: () => {
                context.go('/users'),
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.lightBlue[700],
                      content: const Text('Flutter!'),
                      action: SnackBarAction(label: 'Undo', onPressed: () {}),
                    ),
                  )
              },
              child: Text('Go to the User Page', style: GoogleFonts.abel()),
            ),
          ],
        ),
        floatingActionButton: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () => {
                log.i("Usuário incrementou o contador."),
                context.read<CounterCubit>().increment(),
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () => {
                context.read<CounterCubit>().decrement,
                log.i("Usuário decrementou o contador."),
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
