import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'validate.dart';

class Show extends StatelessWidget {
  const Show({Key? key}) : super(key: key);
  static String route = '/data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          student.nama,
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.blueGrey.shade50,
            ),
            padding: const EdgeInsets.all(20.0),
            width: 400,
            height: 280,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Nama :',
                  style: GoogleFonts.montserrat(fontSize: 12.5),
                ),
                Text(
                  student.nama,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 15.75),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  'NIM :',
                  style: GoogleFonts.montserrat(fontSize: 12.5),
                ),
                Text(
                  nim,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Tempat, Tanggal Lahir :',
                  style: GoogleFonts.montserrat(fontSize: 12.5),
                ),
                Text(
                  student.ttl,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.grey[100],
                      width: 40,
                      height: 60,
                      child: const Icon(
                        Icons.verified_rounded,
                        color: Colors.green,
                      ),
                    ),
                    Container(
                      width: 155,
                      height: 60,
                      color: Colors.grey[100],
                      child: Center(
                        child: Text(
                          '''Telah menyelesaikan pendidikan
Ma'had Aly Ar-Rasyid''',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(fontSize: 12.5),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6.5,
                ),
                Text(
                  'Tahun Kelulusan : ${student.tahunLulus}',
                  style: GoogleFonts.montserrat(fontSize: 12.5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
