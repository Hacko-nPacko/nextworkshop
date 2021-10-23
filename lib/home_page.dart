import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null, //AppBar(title: Text(this.title)),
        body: Column(
          children: [
            SvgPicture.asset('assets/hotbeverage.svg'),
            TextButton(
              onPressed: () async {
                try {
                  final UserCredential user =
                      await FirebaseAuth.instance.signInAnonymously();
                  print(user);
                  GoRouter.of(context).goNamed('todos page');
                } catch (e) {
                  print('ERROR:');
                  print(e);
                }
              },
              child: const Text('Go!'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
            )
          ],
        ));
  }
}
