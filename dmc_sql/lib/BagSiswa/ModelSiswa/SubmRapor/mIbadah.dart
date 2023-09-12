import 'dart:convert';

List<Ibadah> postFromJson(String str) => List<Ibadah>.from(json.decode(str).map((x) => Ibadah.fromJson(x)));

class Ibadah {
  Ibadah({
    required this.idIbadah,
    required this.nis,
    required this.gerWudhu,
    required this.gerShalat,
    required this.bacaWudhu,
    required this.bacaShalat,
    required this.body,
  });

  int idIbadah;
  int nis;
  String gerWudhu;
  String gerShalat;
  String bacaWudhu;
  String bacaShalat;
  String? body;

  factory Ibadah.fromJson(Map<String, dynamic> json) => Ibadah(
    idIbadah: json["id"],
    nis: json["albumId"],
    gerWudhu: json["title"],
    gerShalat: json["url"],
    bacaWudhu: json["title"],
    bacaShalat: json["url"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "id": idIbadah,
    "albumId": nis,
    "title": gerWudhu,
    "url": gerShalat,
    "title": bacaWudhu,
    "url": bacaShalat,
    "body": body,
  };
}