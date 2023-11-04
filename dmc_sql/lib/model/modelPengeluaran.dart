import 'dart:convert';

List<ModelPengeluaran> postPengeluaran(String str) => List<ModelPengeluaran>.from(json.decode(str).map((x) => ModelPengeluaran.fromJson(x)));
String postToJson(List<ModelPengeluaran> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ModelPengeluaran {
  // int albumId;
  // int id;
  // String title;
  // String url;
  // String? thumbnailUrl;
  int idIsi;
  int idPengeluaran;
  String kategori;
  String namaPengeluaran;
  DateTime tgl;
  String jumlah;
  String note;
  String buktiPic;

  ModelPengeluaran({
    // required this.albumId,
    // required this.id,
    // required this.title,
    // required this.url,
    // this.thumbnailUrl
    required this.idIsi,
    required this.idPengeluaran,
    required this.kategori,
    required this.namaPengeluaran,
    required this.tgl,
    required this.jumlah,
    required this.note,
    required this.buktiPic,
  });

  factory ModelPengeluaran.fromJson(Map<String, dynamic> json) => ModelPengeluaran(
    idIsi: json['idIsi'],
    idPengeluaran: json['idPengeluaran'],
    kategori : json['kategori'],
    namaPengeluaran: json['namaPengeluaran'],
    tgl: json['tgl'],
    jumlah: json['jumlah'],
    note: json['note'],
    buktiPic: json['buktiPic'],
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_isi'] = this.idIsi;
    data['id_pengeluaran'] = this.idPengeluaran;
    data['kategori'] = this.kategori;
    data['nama_pengeluaran'] = this.namaPengeluaran;
    data['tgl'] = this.tgl;
    data['jumlah'] = this.jumlah;
    data['note'] = this.note;
    data['bukti_pic'] = this.buktiPic;
    return data;
  }
}
