import 'package:dmc_sql/BagSiswa/ModelSiswa/siswa.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Siswa>?> getPost() async{
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }
}