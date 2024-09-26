import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project/core/application/services/http/logger/log.dart';
import 'package:test_project/core/domain/entities/counter_domain.dart';
import 'package:test_project/core/presentation/cubit/counter/counter_cubit.dart';
import 'package:test_project/core/presentation/cubit/theme/cubit/theme_cubit.dart';

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
    final isLightMode = Theme.of(context).brightness == Brightness.light;
    return DefaultTabController(
      animationDuration: Duration.zero,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
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
              child: const Text('Go to the User Page'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isLightMode ? 'Light Mode' : 'Dark Mode',
                  style: TextStyle(
                      color: isLightMode
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.inverseSurface),
                ),
                Switch(
                    value: !isLightMode,
                    onChanged: (isLightMode) {
                      context.read<ThemeCubit>().toogleTheme(!isLightMode);
                    }),
              ],
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
