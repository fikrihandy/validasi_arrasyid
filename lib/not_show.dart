import 'package:flutter/material.dart';

class NotShow extends StatelessWidget {
  const NotShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Keren"),
      ),
      body: const Center(
        child: Text("no data"),
      ),
    );
  }
}
