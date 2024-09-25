import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/core/application/configs/rotas.dart';
import 'package:test_project/core/presentation/cubit/counter/counter_cubit.dart';
import 'package:test_project/core/presentation/cubit/product/cubit/product_cubit.dart';

void main() {
  runApp(const MyApp());
}

final rotas = Rotas();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CounterCubit(),
        ),
        BlocProvider(
          create: (context) => ProductCubit(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        //home: const CounterPage(title: 'Flutter Demo Page'),
        routerConfig: rotas.rotas,
      ),
    );
  }
}
