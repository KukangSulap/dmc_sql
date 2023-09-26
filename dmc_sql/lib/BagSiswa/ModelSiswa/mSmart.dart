import 'dart:convert';

List<Smart> postFromSmartJson(String str) => List<Smart>.from(json.decode(str).map((x) => Smart.fromJson(x)));

class Smart {
  Smart({
    required this.idSmart,
    required this.nis,
    required this.tgl,
    required this.notes,
    required this.body,
  });

  int idSmart;
  int nis;
  String tgl;
  String notes;
  String? body;

  factory Smart.fromJson(Map<String, dynamic> json) => Smart(
    idSmart: json["id"],
    nis: json["albumId"],
    tgl: json["title"],
    notes: json["url"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "id": idSmart,
    "albumId": nis,
    "title": tgl,
    "url": notes,
    "body": body,
  };
}