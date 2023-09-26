import 'package:dmc_sql/BagSiswa/ModelSiswa/mLomba.dart';
import 'package:dmc_sql/BagSiswa/ModelSiswa/mSiswa.dart';
import 'package:dmc_sql/BagSiswa/ModelSiswa/mZiyadah.dart';
import 'package:http/http.dart' as http;

import '../ModelSiswa/mLombaNilai.dart';
import '../ModelSiswa/mMurajaah.dart';
import '../ModelSiswa/mSmart.dart';
import '../ModelSiswa/mSmartNilai.dart';

class RemoteServiceSiswa {
  // siswa read
  Future<List<Siswa>?> getSiswa() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }

  // rapor

  // lomba
  Future<List<Lomba>?> getLomba() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromLombaJson(json);
    }
  }

  // lomba nilai
  Future<List<LombaNilai>?> getLombaNil() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromLombaNilJson(json);
    }
  }

  // smart
  Future<List<Smart>?> getSmart() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromSmartJson(json);
    }
  }

  // smart nilai
  Future<List<SmartNilai>?> getSmartNil() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromSmartNilJson(json);
    }
  }

  // murajaah
  Future<List<Murajaah>?> getMurajaah() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromMurajaahJson(json);
    }
  }

  // ziyadah
  Future<List<Ziyadah>?> getZiyadah() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromZiyadahJson(json);
    }
  }
}
