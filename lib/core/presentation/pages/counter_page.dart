import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:test_project/core/application/services/http/logger/log.dart';
import 'package:test_project/core/domain/entities/counter_domain.dart';
import 'package:test_project/core/presentation/cubit/counter/counter_cubit.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key, required this.title});

  final String title;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final log = getLogger('Página', 'CounterPage');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, Counter>(
          builder: (context, state) {
            return Text(state.counter.toString());
          },
        ),
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
    );
  }
}
