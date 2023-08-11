import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:dmc_sql/BagSiswa/BagInputNilai/SubPageInputRapor/subPageHadits.dart';
import 'package:dmc_sql/BagSiswa/BagInputNilai/SubPageInputRapor/subPageIbadah.dart';
import 'package:dmc_sql/BagSiswa/BagInputNilai/SubPageInputRapor/subPageKehadiran.dart';
import 'package:dmc_sql/BagSiswa/BagInputNilai/SubPageInputRapor/subPageQuran.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'SubPageInputRapor/subPageKualtitatif.dart';

const List<String> listGrade = <String>['A', 'B', 'C'];

List<List<String>> listNilaiHadits1 = [
  ['Hiasi Al-Quran', 'A'],
  ['Merupakan amal terbaik', 'A'],
  ['Mendapat derajat yang tinggi', 'A'],
];

List<List<String>> listNilaiHadits2 = [
  ['Hiasi Al-Quran', 'A'],
  ['Merupakan amal terbaik', 'A'],
  ['Mendapat derajat yang tinggi', 'A'],
];

List<List<String>> listNilaiHaditsArb1 = [
  ['Amal Tergantung Niat', 'A'],
  ['Tingkatan Agama Islam', 'A'],
  ['Penciptaan Manusia', 'A'],
];

List<List<String>> listNilaiHaditsArb2 = [
  ['Amal Tergantung Niat', 'A'],
  ['Tingkatan Agama Islam', 'A'],
  ['Penciptaan Manusia', 'A'],
];

const List<String> listStatus = <String>['Mumtaz', 'Tidak Lancar'];

List<List<String>> listNilaiTahfiz = [
  ['Juz 30', '96', "Mumtaz", "Tersetifikasi", "17 Halaman", "85%"],
  ['Juz 28', '92', "Mumtaz", "Ziyadah", "19 Halaman", "100%"],
  ['Juz 29', '97', "Mumtaz", "Tidak Tersertifikasi", "20 Halaman", "85%"],
];

List<dynamic> listKualitatif = [];
List<dynamic> listIbadah = [];
List<dynamic> listHadits = [];
List<dynamic> listQuran = [];
List<dynamic> listKehadiran = [];

class InputRaporPage extends StatefulWidget {
  const InputRaporPage({super.key, required this.nisSiswa});
  final String nisSiswa;

  @override
  State<InputRaporPage> createState() => _InputRaporPageState();
}

class _InputRaporPageState extends State<InputRaporPage> {

  final List<Widget Function(VoidCallback, VoidCallback)> _subPageBuilders = [
    (next, prev) => SubPageKualitatif(nextPage: next, prevPage: prev),
    (next, prev) => SubPageIbadah(nextPage: next, prevPage: prev),
    (next, prev) => SubPageHadits(nextPage: next, prevPage: prev),
    (next, prev) => SubPageQuran(nextPage: next, prevPage: prev),
    (next, prev) => SubPageKehadiran(nextPage: next, prevPage: prev),
  ];

  int _currentPageIndex = 0;

  void _nextPage() {
    if (_currentPageIndex < _subPageBuilders.length - 1) {
      setState(() {
        _currentPageIndex++;
      });
    } else {
      Navigator.pop(context);
    }
  }

  void _prevPage() {
    if (_currentPageIndex > 0) {
      setState(() {
        _currentPageIndex--;
      });
    } else {
      Navigator.pop(context);
    }
  }

  void _insertDataKual(String a, String b, String c, String d) {
    if (listKualitatif.length < 3) {
      listKualitatif.add(a);
      listKualitatif.add(b);
      listKualitatif.add(c);
      listKualitatif.add(d);
    } else {
      listKualitatif.removeRange(0, 3);
      listKualitatif.add(a);
      listKualitatif.add(b);
      listKualitatif.add(c);
      listKualitatif.add(d);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: "s"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 150),
          child: SizedBox(
              child: _subPageBuilders[_currentPageIndex](_nextPage, _prevPage)),
        ),
      ),
    );
  }
}

Container DropDowns(
    List<String> list, String _selectedItem, ValueChanged<String?> onChanged) {
  return Container(
    // width: 100,
    margin: const EdgeInsets.only(top: 10, left: 10),
    padding: EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black,
        width: 1.5,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        isExpanded: true,
        value: _selectedItem,
        icon: Icon(Icons.arrow_drop_down_sharp), // Reversed triangle icon
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.black, fontSize: 16),
        onChanged: onChanged,
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    ),
  );
}
