import 'dart:convert';

List<Kualitatif> postFromJson(String str) => List<Kualitatif>.from(json.decode(str).map((x) => Kualitatif.fromJson(x)));

class Kualitatif {
  Kualitatif({
    required this.idKualitatif,
    required this.nis,
    required this.pengagungIlmi,
    required this.tanggungJawab,
    required this.kejujuran,
    required this.manfaat,
    required this.body,
  });

  int idKualitatif;
  int nis;
  String pengagungIlmi;
  String tanggungJawab;
  String kejujuran;
  String manfaat;
  String? body;

  factory Kualitatif.fromJson(Map<String, dynamic> json) => Kualitatif(
    idKualitatif: json["id"],
    nis: json["albumId"],
    pengagungIlmi: json["title"],
    tanggungJawab: json["url"],
    kejujuran: json["title"],
    manfaat: json["url"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "id": idKualitatif,
    "albumId": nis,
    "title": pengagungIlmi,
    "url": tanggungJawab,
    "title": kejujuran,
    "url": manfaat,
    "body": body,
  };
}