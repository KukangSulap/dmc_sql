import 'dart:convert';

List<Ziyadah> postFromZiyadahJson(String str) => List<Ziyadah>.from(json.decode(str).map((x) => Ziyadah.fromJson(x)));

class Ziyadah {
  Ziyadah({
    required this.idZiyadah,
    required this.nis,
    required this.tgl,
    required this.nilai,
    required this.juz,
    required this.halaman,
    required this.notes,
    required this.body,
  });

  int idZiyadah;
  int nis;
  String tgl;
  double nilai;
  int juz;
  double halaman;
  String notes;
  String? body;

  factory Ziyadah.fromJson(Map<String, dynamic> json) => Ziyadah(
    idZiyadah: json["id"],
    nis: json["albumId"],
    tgl: json["title"],
    nilai: json["id"],
    juz: json["albumId"],
    halaman: json["id"],
    notes: json["url"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "id": idZiyadah,
    "albumId": nis,
    "title": tgl,
    "id": nilai,
    "albumId": juz,
    "id": halaman,
    "url": notes,
    "body": body,
  };
}