import 'dart:convert';

List<Hifdzun> postFromJson(String str) => List<Hifdzun>.from(json.decode(str).map((x) => Hifdzun.fromJson(x)));

class Hifdzun {
  Hifdzun({
    required this.idHifdzun,
    required this.nis,
    required this.tulis,
    required this.lisan,
    required this.jumlah,
    required this.body,
  });
  
  int idHifdzun;
  int nis;
  String tulis;
  String lisan;
  int jumlah;
  String? body;

  factory Hifdzun.fromJson(Map<String, dynamic> json) => Hifdzun(
    idHifdzun: json["id"],
    nis: json["albumId"],
    tulis: json["title"],
    lisan: json["url"],
    jumlah: json["id"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "id": idHifdzun,
    "albumId": nis,
    "title": tulis,
    "url": lisan,
    "id": jumlah,
    "body": body,
  };

}