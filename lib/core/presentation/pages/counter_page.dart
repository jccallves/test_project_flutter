import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project/core/application/services/http/logger/log.dart';
import 'package:test_project/core/domain/entities/counter_domain.dart';
import 'package:test_project/core/presentation/cubit/counter/counter_cubit.dart';
import 'package:test_project/core/presentation/cubit/user/user_cubit.dart';

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
    @override
    void initState() {
      super.initState();
      context.read<UserCubit>().getUsers();
    }

    return DefaultTabController(
      animationDuration: Duration.zero,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: BlocBuilder<CounterCubit, Counter>(
              builder: (context, state) {
                return Text(state.counter.toString());
              },
            ),
          ),
          BlocBuilder<UserCubit, UserState>(
            builder: (context, state) {
              return ElevatedButton(
                onPressed: () => {
                  context.go('/users'),
                  context.read<UserCubit>().getUsers(),
                },
                child: const Text('Get Users'),
              );
            },
          ),
          const SizedBox(
            height: 5,
          ),
        ]),
      ),
    );
  }
}
