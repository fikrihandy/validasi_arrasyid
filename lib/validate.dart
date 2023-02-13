import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'data.dart';
import 'show.dart';
import 'not_show.dart';

String nim = '0';
late Mahasiswa student;

class Validate extends StatefulWidget {
  static const String route = '/validate';

  const Validate({Key? key}) : super(key: key);

  @override
  State<Validate> createState() => _ValidateState();
}

class _ValidateState extends State<Validate> {
  Future<void> navigate(bool show) async {
    Navigator.of(context).pushNamed(show ? Show.route : NotShow.route);
  }

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Validasi Ijazah / Sertifikat',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: Colors.blueGrey.shade50,
            ),
            padding: const EdgeInsets.all(20.0),
            width: 400,
            height: 450.0,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image.network(
                      'https://4.bp.blogspot.com/-lrXcAJ6zUWA/YTYIH26tyJI/AAAAAAAAB80/cGGGS1FVKgIfBERUNTuPFQIHTuJ9Hl1EACLcBGAsYHQ/s0/program%2Bpendidikan%2Bmasyid.png',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    '''Masukkan NIM / Nomor Sertifikat''',
                    style: GoogleFonts.montserrat(),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 25.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 170,
                        child: TextField(
                          onChanged: (String value) {
                            setState(() {
                              nim = value;
                            });
                          },
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black26,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          controller: _controller,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(25.0),
                        ),
                        onPressed: () async {
                          var students = await fetchDataMahasiswa();

                          try {
                            student = students.findMahasiswaByNim(nim);
                            await navigate(true);
                          } on Error {
                            print("ERROR ??");
                            await navigate(false);
                          }
                        },
                        child: Text(
                          'Validasi',
                          style: GoogleFonts.montserrat(),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
