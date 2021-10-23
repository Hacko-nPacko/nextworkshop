import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Todos extends StatelessWidget {
  const Todos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Column(children: [
          TextButton(
            onPressed: () {
              GoRouter.of(context).goNamed('home page');
            },
            child: const Text('Logout'),
          ),
          TextButton(
            onPressed: () {


            },
            child: const Text('Create'),
          ),
        ]),
      ),
    );
  }
}
