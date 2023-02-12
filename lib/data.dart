import 'dart:convert';
import 'package:http/http.dart' as http;

class Mahasiswa {
  final String nama;
  final String nim;
  final String nomorIjazah;
  final String ttl;
  final String tahunLulus;

  Mahasiswa(
      {required this.nama,
      required this.nim,
      required this.nomorIjazah,
      required this.ttl,
      required this.tahunLulus});

  factory Mahasiswa.fromJson(Map<String, dynamic> json) {
    return Mahasiswa(
      nama: json['nama'],
      nim: json['nim'],
      nomorIjazah: json['nomor_ijazah'],
      ttl: json['ttl'],
      tahunLulus: json['tahun_lulus'],
    );
  }
}

class DataMahasiswa {
  final List<Mahasiswa> mahasiswa;

  DataMahasiswa({required this.mahasiswa});

  factory DataMahasiswa.fromJson(Map<String, dynamic> json) {
    List<Mahasiswa> mahasiswaList =
        (json['mahasiswa'] as List).map((i) => Mahasiswa.fromJson(i)).toList();
    return DataMahasiswa(
      mahasiswa: mahasiswaList,
    );
  }

  Mahasiswa findMahasiswaByNim(String nim) {
    return mahasiswa.firstWhere((element) => element.nim == nim);
  }
}

Future<DataMahasiswa> fetchDataMahasiswa() async {
  final response = await http.get(Uri.parse(
      'https://raw.githubusercontent.com/fikrihandy/validasi_arrasyid/main/data_mhs/mahasiswa.json'));
  if (response.statusCode == 200) {
    return DataMahasiswa.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load data');
  }
}

// void main() async {
//   var students = await fetchDataMahasiswa();
//   var student = students.findMahasiswaByNim("1w");
//   print(student.nama);
//   print(student.runtimeType);
// }
