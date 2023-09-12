import 'dart:convert';

List<Siswa> postFromJson(String str) => List<Siswa>.from(json.decode(str).map((x) => Siswa.fromJson(x)));

class Siswa {
  Siswa({
    required this.nis,
    required this.nama,
    required this.semester,
    required this.kelas,
    required this.tahunPend,
    this.body
  });

  int nis;
  String nama;
  String semester;
  int kelas;
  String tahunPend;
  String? body;
  
  factory Siswa.fromJson(Map<String, dynamic> json) => Siswa(
    nis: json["id"],
    nama: json["title"],
    semester: json["url"],
    kelas: json["albumId"],
    tahunPend: json["thumbnailUrl"],
    body: json["body"]
  );

  Map<String, dynamic> toJson() => {
    "id": nis,
    "title": nama,
    "url": semester,
    "albumId": kelas,
    "thumbnailUrl": tahunPend,
    "body": body
  };
}