import 'dart:convert';

List<Murajaah> postFromJson(String str) => List<Murajaah>.from(json.decode(str).map((x) => Murajaah.fromJson(x)));

class Murajaah {
  Murajaah({
    required this.idMurajaah,
    required this.nis,
    required this.tgl,
    required this.nilai,
    required this.halaman,
    required this.persentase,
    required this.notes,
    required this.body,
  });

  int idMurajaah;
  int nis;
  String tgl;
  int nilai;
  double halaman;
  int persentase;
  String notes;
  String? body;

  factory Murajaah.fromJson(Map<String, dynamic> json) => Murajaah(
    idMurajaah: json["id"],
    nis: json["albumId"],
    tgl: json["title"],
    nilai: json["id"],
    halaman: json["albumId"],
    persentase: json["id"],
    notes: json["url"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "id": idMurajaah,
    "albumId": nis,
    "title": tgl,
    "id": nilai,
    "albumId": halaman,
    "id": persentase,
    "url": notes,
    "body": body,
  };

}