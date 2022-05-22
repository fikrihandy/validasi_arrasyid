import 'package:flutter/material.dart';
import 'validate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Validasi Markaz Aitam Ar-Rasyid",
      home: Validate(),
    );
  }
}
