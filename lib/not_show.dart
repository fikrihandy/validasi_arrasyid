import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'validate.dart';

class NotShow extends StatelessWidget {
  static const String route = '404';

  const NotShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tidak ditemukan"),
      ),
      body: Center(
        child: Text(
          '''NIM $nim tidak ditemukan
Silakan periksa lagi dan masukkan ulang''',
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(),
        ),
      ),
    );
  }
}
