import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/core/application/configs/rotas.dart';
import 'package:test_project/core/domain/entities/theme_domain.dart';
import 'package:test_project/core/presentation/cubit/counter/counter_cubit.dart';
import 'package:test_project/core/presentation/cubit/product/cubit/product_cubit.dart';
import 'package:test_project/core/presentation/cubit/theme/cubit/theme_cubit.dart';

import 'core/application/configs/theme/util.dart';

void main() {
  runApp(const MyApp());
}

final rotas = Rotas();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Abel", "Abel");
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CounterCubit(),
        ),
        BlocProvider(
          create: (context) => ProductCubit(),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeDomain>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Flutter Demo',
            theme:
                ThemeData(textTheme: textTheme, colorScheme: state.themeData),
            routerConfig: rotas.rotas,
          );
        },
      ),
    );
  }
}
