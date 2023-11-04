import 'package:dmc_sql/model/dummy.dart';
import 'package:dmc_sql/model/modelPengeluaran.dart';
import 'package:http/http.dart' as http;

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

class RemoteServiceReal {
  Future<List<ModelPengeluaran>?> getPengeluaran() async {
    var client = http.Client();

    var uri = Uri.parse('http://localhost:8080/getAllPengeluaran');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postPengeluaran(json);
    }
  }
}