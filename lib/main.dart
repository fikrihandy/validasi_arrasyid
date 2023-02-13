import 'package:flutter/material.dart';
import 'package:validasi_arrasyid/not_show.dart';
import 'package:validasi_arrasyid/show.dart';
import 'validate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Validate.route,
      title: 'Validasi Markaz Aitam Ar-Rasyid',
      routes: {
        Validate.route: (context) => const Validate(),
        NotShow.route: (context) => const NotShow(),
        Show.route: (context) => const Show()
      },
    );
  }
}
