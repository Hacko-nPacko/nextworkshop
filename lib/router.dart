import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nextworkshop/home_page.dart';

import 'todos.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
  GoRoute(
    path: '/home',
    name: 'home page',
    pageBuilder: (context, state) =>
        MaterialPage(key: state.pageKey, child: const HomePage(title: 'My Home')),
  ),
  GoRoute(
    path: '/todos',
    name: 'todos page',
    pageBuilder: (context, state) =>
        MaterialPage(key: state.pageKey, child: const Todos()),
  ),
],
  errorPageBuilder: (context, state) => MaterialPage(key: state.pageKey, child: Text('Error!!!')),
);
