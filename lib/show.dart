import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'validate.dart';

class Show extends StatelessWidget {
  const Show({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${dataMhs[0]}",
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
            height: 235,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Nama :',
                  style: GoogleFonts.montserrat(fontSize: 12.5),
                ),
                Text(
                  dataMhs[0],
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
                  dataMhs[1],
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
                      height: 40,
                      child: const Icon(
                        Icons.verified_rounded,
                        color: Colors.green,
                      ),
                    ),
                    Container(
                      width: 315,
                      height: 40,
                      color: Colors.grey[100],
                      child: Center(
                        child: Text(
                          '''Telah menyelesaikan pendidikan Ma'had Aly
Tahun Kelulusan : ${dataMhs[2]} ''',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
