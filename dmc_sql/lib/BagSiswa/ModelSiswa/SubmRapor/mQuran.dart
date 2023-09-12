import 'dart:convert';

List<Quran> postFromJson(String str) => List<Quran>.from(json.decode(str).map((x) => Quran.fromJson(x)));

class Quran {
  Quran({
    required this.idQuran,
    required this.nis,
    required this.tulIsti,
    required this.tulMakh,
    required this.tulShif,
    required this.lisIsti,
    required this.lisMakh,
    required this.lisShif,
    required this.body,
  });

  int idQuran;
  int nis;
  int tulIsti;
  int tulMakh;
  int tulShif;
  int lisIsti;
  int lisMakh;
  int lisShif;
  String? body;

  factory Quran.fromJson(Map<String, dynamic> json) => Quran(
    idQuran: json["id"],
    nis: json["albumId"],
    tulIsti: json["id"],
    tulMakh: json["albumId"],
    tulShif: json["id"],
    lisIsti: json["albumId"],
    lisMakh: json["id"],
    lisShif: json["albumId"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "id": idQuran,
    "albumId": nis,
    "id": tulIsti,
    "albumId": tulMakh,
    "id": tulShif,
    "albumId": lisIsti,
    "id": lisMakh,
    "albumId": lisShif,
  };
}