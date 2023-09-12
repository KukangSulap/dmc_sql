import 'dart:convert';

List<Hadits> postFromJson(String str) => List<Hadits>.from(json.decode(str).map((x) => Hadits.fromJson(x)));

class Hadits {
  Hadits({
    required this.idHadits,
    required this.nis,
    required this.namaH,
    required this.nilaiH,
    required this.penilaian,
    required this.kategori,
    required this.body,
  });

  int idHadits;
  int nis;
  String namaH;
  String nilaiH;
  String penilaian;
  String kategori;
  String? body;

  factory Hadits.fromJson(Map<String, dynamic> json) => Hadits(
    idHadits: json["id"],
    nis: json["albumId"],
    namaH: json["title"],
    nilaiH: json["id"],
    penilaian: json["url"],
    kategori: json["url"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "id": idHadits,
    "albumId": nis,
    "title": namaH,
    "id": nilaiH,
    "url": penilaian,
    "url": kategori,
    "body": body,
  };
}