import 'dart:convert';

List<Lomba> postFromLombaJson(String str) => List<Lomba>.from(json.decode(str).map((x) => Lomba.fromJson(x)));

class Lomba {
  Lomba({
    required this.idLomba,
    required this.nis,
    required this.tgl,
    required this.notes,
    required this.body
  });

  int idLomba, nis;
  String tgl;
  String notes;
  String? body;

  factory Lomba.fromJson(Map<String, dynamic> json) => Lomba(
    idLomba: json["id"],
    nis: json["albumId"],
    tgl: json["title"],
    notes: json["url"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "id": idLomba,
    "albumId": nis,
    "title": tgl,
    "url": notes,
    "body": body,
  };
}