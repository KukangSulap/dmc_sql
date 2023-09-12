import 'dart:convert';

List<Tahfiz> postFromJson(String str) => List<Tahfiz>.from(json.decode(str).map((x) => Tahfiz.fromJson(x)));

class Tahfiz {
  Tahfiz({
    required this.idTahfiz,
    required this.nis,
    required this.juz,
    required this.kelancaran,
    required this.status,
    required this.teruji,
    required this.persentase,
    required this.body,
  });
  
  int idTahfiz;
  int nis;
  int juz;
  String kelancaran;
  String status;
  int teruji;
  int persentase;
  String? body;

  factory Tahfiz.fromJson(Map<String, dynamic> json) => Tahfiz(
    idTahfiz: json["id"],
    nis: json["albumId"],
    juz: json["id"],
    kelancaran: json["title"],
    status: json["url"],
    teruji: json["id"],
    persentase: json["albumId"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "id": idTahfiz,
    "albumId": nis,
    "id": juz,
    "title": kelancaran,
    "url": status,
    "id": teruji,
    "albumId": persentase,
    "body": body,
  };

}