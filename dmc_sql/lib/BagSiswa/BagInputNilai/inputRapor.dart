import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:dmc_sql/BagSiswa/BagInputNilai/SubPageInputRapor/subPageHadits.dart';
import 'package:dmc_sql/BagSiswa/BagInputNilai/SubPageInputRapor/subPageIbadah.dart';
import 'package:dmc_sql/BagSiswa/BagInputNilai/SubPageInputRapor/subPageKehadiran.dart';
import 'package:dmc_sql/BagSiswa/BagInputNilai/SubPageInputRapor/subPageQuran.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'SubPageInputRapor/subPageKualtitatif.dart';

List<dynamic> kualitatif = [];
List<dynamic> ibadah = [];
List<dynamic> hadits = [];
List<dynamic> quran = [];
List<dynamic> kehadiran = [];
List<dynamic> listRapor = [
  kualitatif,
  ibadah,
  hadits,
  quran,
  kehadiran
];

class InputRaporPage extends StatefulWidget {
  const InputRaporPage({super.key, required this.nisSiswa});
  final int nisSiswa;

  @override
  State<InputRaporPage> createState() => _InputRaporPageState();
}

class _InputRaporPageState extends State<InputRaporPage> {
  final List<Widget Function(VoidCallback, VoidCallback, List<dynamic>)>
      _subPageBuilders = [
    (next, prev, data) => 
    SubPageKualitatif(nextPage: next, prevPage: prev, insertData: data),
    (next, prev, data) =>
        SubPageIbadah(nextPage: next, prevPage: prev, insertData: data),
    (next, prev, data) =>
        SubPageHadits(nextPage: next, prevPage: prev, insertData: data),
    (next, prev, data) =>
        SubPageQuran(nextPage: next, prevPage: prev, insertData: data),
    (next, prev, data) => 
    SubPageKehadiran(nextPage: next, prevPage: prev, insertData: data),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: CurrentPage.siswa),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 150),
          child: SizedBox(
              child: _subPageBuilders[_currentPageIndex](
                  _nextPage, _prevPage, listRapor)),
        ),
      ),
    );
  }
}
