import 'dart:convert';

List<Dummy> postFromJson(String str) => List<Dummy>.from(json.decode(str).map((x) => Dummy.fromJson(x)));
String postToJson(List<Dummy> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Dummy {
  int albumId;
  int id;
  String title;
  String url;
  String? thumbnailUrl;

  Dummy({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    this.thumbnailUrl
  });

  factory Dummy.fromJson(Map<String, dynamic> json) => Dummy(
    albumId: json['albumId'],
    id: json['id'],
    title: json['title'],
    url: json['url'],
    thumbnailUrl: json['thumbnailUrl'],
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['albumId'] = albumId;
    data['id'] = id;
    data['title'] = title;
    data['url'] = url;
    data['thumbnailUrl'] = thumbnailUrl;
    return data;
  }
}
