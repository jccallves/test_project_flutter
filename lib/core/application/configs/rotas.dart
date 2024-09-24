import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project/core/presentation/pages/counter_page.dart';
import 'package:test_project/core/presentation/pages/products_page.dart';
import 'package:test_project/core/presentation/pages/users_page.dart';

class Rotas {
  final GoRouter rotas = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: 'home',
        builder: (BuildContext context, GoRouterState state) {
          return const CounterPage();
        },
      ),
      GoRoute(
        path: '/users',
        name: 'users',
        builder: (BuildContext context, GoRouterState state) {
          return const UsersPage();
        },
      ),
      GoRoute(
        path: '/products',
        name: 'products',
        builder: (BuildContext context, GoRouterState state) {
          return const ProductsPage();
        },
      ),
    ],
  );
}
