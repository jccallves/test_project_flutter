// ignore_for_file: prefer_const_constructors

import 'package:go_router/go_router.dart';
import 'package:test_project/main.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MyApp(),
    ),
  ],
);
