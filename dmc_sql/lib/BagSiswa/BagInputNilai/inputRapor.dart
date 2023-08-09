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

List<List<dynamic>> listKualitatif = [];
List<List<dynamic>> listIbadah = [];
List<List<dynamic>> listHadits = [];
List<List<dynamic>> listQuran = [];
List<List<dynamic>> listKehadiran = [];

class InputRaporPage extends StatefulWidget {
  const InputRaporPage({super.key, required this.nisSiswa});
  final String nisSiswa;

  @override
  State<InputRaporPage> createState() => _InputRaporPageState();
}

class _InputRaporPageState extends State<InputRaporPage> {
  String _selectedItemKualitatif1 = listGrade.first;
  String _selectedItemKualitatif2 = listGrade.first;
  String _selectedItemKualitatif3 = listGrade.first;
  String _selectedItemKualitatif4 = listGrade.first;

  String _selectedItemIbadah1 = listGrade.first;
  String _selectedItemIbadah2 = listGrade.first;
  String _selectedItemIbadah3 = listGrade.first;
  String _selectedItemIbadah4 = listGrade.first;

  TextEditingController _contHadits1 = TextEditingController();
  TextEditingController _contHadits2 = TextEditingController();
  TextEditingController _contHaditsArb1 = TextEditingController();
  TextEditingController _contHaditsArb2 = TextEditingController();
  String _selectedItemHadist1 = listGrade.first;
  String _selectedItemHadist2 = listGrade.first;
  String _selectedItemArb1 = listGrade.first;
  String _selectedItemArb2 = listGrade.first;

  TextEditingController _contQuran1 = TextEditingController();
  TextEditingController _contQuran2 = TextEditingController();
  TextEditingController _contQuran3 = TextEditingController();
  TextEditingController _contQuran4 = TextEditingController();
  TextEditingController _contQuran5 = TextEditingController();
  TextEditingController _contQuran6 = TextEditingController();

  TextEditingController _contTahfiz1 = TextEditingController();
  TextEditingController _contTahfiz2 = TextEditingController();
  TextEditingController _contTahfiz3 = TextEditingController();
  String _selectedItemTahfiz = listStatus.first;

  TextEditingController _conthifdzun = TextEditingController();
  String _selectedItemHifdzun1 = listGrade.first;
  String _selectedItemHifdzun2 = listGrade.first;

  TextEditingController _contHadir1 = TextEditingController();
  TextEditingController _contHadir2 = TextEditingController();
  TextEditingController _contHadir3 = TextEditingController();
  TextEditingController _contHadir4 = TextEditingController();

  final List<Widget Function()> _subPageBuilders = [
    () => SubPageKualitatif(),
    () => SubPageIbadah(),
    () => SubPageHadits(),
    () => SubPageQuran(),
    () => SubPageKehadiran(),
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
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: "s"),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Stack(
          children: [
            SizedBox(
                child: SingleChildScrollView(
                    child: _subPageBuilders[_currentPageIndex]())),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _prevPage();
                      },
                      child: Icon(Icons.arrow_left)),
                  ElevatedButton(
                      onPressed: () {
                        _nextPage();
                      },
                      child: Text("Finish"))
                ],
              ),
            )
          ],
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
