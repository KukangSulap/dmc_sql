import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:dmc_sql/BagSiswa/inputSiswa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

const List<String> listTahun = <String>['2021/2022', '2022/2023', '2023/2024'];
const List<String> listSemester = <String>[
  'Semester 1',
  'Semester 2',
  'Semester 3',
  'Semester 4',
  'Semester 5',
  'Semester 6'
];
const List<String> listKelas = <String>['Kelas A', 'Kelas B', 'Kelas C'];

class SiswaPage extends StatefulWidget {
  const SiswaPage({super.key});

  @override
  State<SiswaPage> createState() => _SiswaPageState();
}

class _SiswaPageState extends State<SiswaPage> {
  String _selectedItemTahun = listTahun.first;
  String _selectedItemSemester = listSemester.first;
  String _selectedItemKelas = listKelas.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: "s"),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 600,
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Pencarian',
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search),
                      suffixIconColor: Colors.black,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 14.0),
                    ),
                  ),
                ),
                DropDowns(listTahun, _selectedItemTahun, (String? newValue) {
                  setState(() {
                    _selectedItemTahun = newValue!;
                  });
                }),
                DropDowns(listSemester, _selectedItemSemester,
                    (String? newValue) {
                  setState(() {
                    _selectedItemSemester = newValue!;
                  });
                }),
                DropDowns(listKelas, _selectedItemKelas, (String? newValue) {
                  setState(() {
                    _selectedItemKelas = newValue!;
                  });
                })
              ],
            )
          ],
        ),
      ),
    );
  }

  Container DropDowns(List<String> list, String _selectedItem,
      ValueChanged<String?> onChanged) {
    return Container(
      width: 250,
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
}
