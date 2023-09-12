import 'dart:convert';

import 'package:dmc_sql/BagSiswa/ModelSiswa/mLombaNilai.dart';

List<SmartNilai> postFromJson(String str) => List<SmartNilai>.from(json.decode(str).map((x) => SmartNilai.fromJson(x)));

class SmartNilai {
  SmartNilai({
    required this.idNilSmart,
    required this.idSmart,
    required this.penilaian,
    required this.nilai,
    required this.kategori,
    required this.body,
  });

  int idNilSmart; 
  int idSmart;
  String penilaian;
  int nilai;
  String kategori;
  String? body;

  factory SmartNilai.fromJson(Map<String, dynamic> json) => SmartNilai(
    idNilSmart: json["id"],
    idSmart: json["albumId"],
    penilaian: json["title"],
    nilai: json["id"],
    kategori: json["url"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "": idNilSmart,
    "": idSmart,
    "": penilaian,
    "": nilai,
    "": kategori,
    "": body,
  };

}