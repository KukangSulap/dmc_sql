import 'dart:convert';

List<LombaNilai> postFromLombaNilJson(String str) => List<LombaNilai>.from(json.decode(str).map((x) => LombaNilai.fromJson(x)));

class LombaNilai {
  LombaNilai({
    required this.idNilLomba,
    required this.idLomba,
    required this.penilaian,
    required this.nilai,
    required this.body,
  });

  int idNilLomba, idLomba;
  String penilaian;
  int nilai;
  String? body;

  factory LombaNilai.fromJson(Map<String, dynamic> json) => LombaNilai(
    idNilLomba: json["id"],
    idLomba: json["albumId"],
    penilaian: json["title"],
    nilai: json["id"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "id": idNilLomba,
    "albumId": idLomba,
    "title": penilaian,
    "id": nilai,
    "body": body,
  };

}