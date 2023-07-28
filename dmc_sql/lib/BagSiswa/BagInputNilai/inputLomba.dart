import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

const List<String> listGrade = <String>['A', 'B', 'C'];

List<List<String>> listNilaiLomba = [
  ['Lomba 1', 'A'],
  ['Lomba 2', 'A'],
  ['Lomba 3', 'A'],
];

class InputLombaPage extends StatefulWidget {
  const InputLombaPage({super.key});

  @override
  State<InputLombaPage> createState() => _InputLombaPageState();
}

class _InputLombaPageState extends State<InputLombaPage> {
  String _selectedItem = listGrade.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: "s"),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Data Siswa"),
            const TextField(
              decoration: InputDecoration(hintText: 'Nama Siswa'),
            ),
            const TextField(
              decoration: InputDecoration(hintText: 'Nomor Induk Siswa'),
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Tanggal Lomba',
                  prefixIcon: Icon(Icons.calendar_today)),
            ),
            const Text("Nilai Lomba"),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: const TextField(
                      decoration: InputDecoration(hintText: 'Nama Lomba'),
                    ),
                  ),
                  DropDowns(listGrade, _selectedItem, (String? value) {
                    setState(() {
                      _selectedItem = value!;
                    });
                  })
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(onPressed: () {}, child: Text("Save")),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                  itemCount: listNilaiLomba.length,
                  itemBuilder: (BuildContext context, int index) {
                    String namaLomba = listNilaiLomba[index][0];
                    String grade = listNilaiLomba[index][1];

                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("$namaLomba"), Text("$grade")],
                    );
                  }),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Notes lomba'),
              maxLines: 5,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Finish"),
                )
              ],
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
    width: 100,
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
