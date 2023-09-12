import 'dart:convert';

List<Hadir> postFromJson(String str) => List<Hadir>.from(json.decode(str).map((x) => Hadir.fromJson(x)));

class Hadir {
  Hadir({
    required this.idHadir,
    required this.nis,
    required this.sakit,
    required this.izin,
    required this.alpha,
    required this.body,
  });

  int idHadir;
  int nis;
  int sakit;
  int izin;
  int alpha;
  String? body;

  factory Hadir.fromJson(Map<String, dynamic> json) => Hadir(
    idHadir: json["id"],
    nis: json["albumId"],
    sakit: json["id"],
    izin: json["albumId"],
    alpha: json["id"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "id": idHadir,
    "albumId": nis,
    "id": sakit,
    "albumId": izin,
    "id": alpha,
    "body": body,
  };
}