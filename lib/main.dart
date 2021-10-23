import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MaterialApp.router(
    title: 'Next Workshop Demo',
    theme: ThemeData(
      primarySwatch: Colors.amber,
      primaryColor: Colors.blueAccent,
    ),
    routerDelegate: router.routerDelegate,
    routeInformationParser: router.routeInformationParser,
  ));
}
