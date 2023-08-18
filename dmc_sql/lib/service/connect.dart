import 'dart:convert';

import 'package:dmc_sql/model/dummy.dart';
import 'package:http/http.dart' as http;

List<Dummy> postFromJson(String str) => List<Dummy>.from(json.decode(str).map((x) => Dummy.fromJson(x)));
String postToJson(List<Dummy> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


class RemoteService {
    Future<List<Dummy>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }
}