import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

const List<String> listGrade = <String>['A', 'B', 'C'];

List<List<String>> listNilaiSmart = [
  ['Manner', 'A'],
  ['Leadership', 'A'],
  ['Adaptation', 'A'],
];

List<List<dynamic>> listSmart = [];

class InputSmartPage extends StatefulWidget {
  const InputSmartPage(
      {super.key, required this.namaSiswa, required this.nisSiswa});

  final String namaSiswa;
  final String nisSiswa;

  @override
  State<InputSmartPage> createState() => _InputSmartPageState();
}

class _InputSmartPageState extends State<InputSmartPage> {
  late final TextEditingController _namaCont =
      TextEditingController(text: widget.namaSiswa);
  late final TextEditingController _nisCont =
      TextEditingController(text: widget.nisSiswa);
  final TextEditingController _tglCont = TextEditingController();

  final TextEditingController _namaSmartCont = TextEditingController();
  final TextEditingController _scoreSmartCont = TextEditingController();

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
            TextField(
              controller: _namaCont,
              readOnly: true,
              decoration: const InputDecoration(hintText: 'Nama Siswa'),
            ),
            TextField(
              controller: _nisCont,
              readOnly: true,
              decoration: const InputDecoration(hintText: 'Nomor Induk Siswa'),
            ),
            TextField(
              onTap: () async {
                DateTime? selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2012),
                  lastDate: DateTime(2026),
                );

                if (selectedDate != null) {
                  // Format the selected date and set it as the value of the TextField
                  final formattedDate =
                      DateFormat('dd/MMMM/yyyy').format(selectedDate);
                  setState(() {
                    _tglCont.text = formattedDate;
                  });
                }
              },
              readOnly: true,
              controller: _tglCont,
              decoration: InputDecoration(
                  hintText: 'Tanggal Smart',
                  prefixIcon: Icon(Icons.calendar_today)),
            ),
            const Text("Nilai Smart"),
            Container(
              width: double.infinity,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 6,
                    child: TextField(
                      controller: _namaSmartCont,
                      decoration: InputDecoration(hintText: 'Nama Smart'),
                    ),
                  ),
                  Expanded(
                    child: DropDowns(listGrade, _selectedItem, (String? value) {
                      setState(() {
                        _selectedItem = value!;
                      });
                    }),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _scoreSmartCont,
                      decoration: InputDecoration(hintText: 'Score'),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      listNilaiSmart.add([_namaSmartCont.text, _selectedItem]);
                    });
                  },
                  child: Text("Save")),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                  itemCount: listNilaiSmart.length,
                  itemBuilder: (BuildContext context, int index) {
                    String namaKategori = listNilaiSmart[index][0];
                    String grade = listNilaiSmart[index][1];

                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("$namaKategori"), Text("$grade")],
                    );
                  }),
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
                    listSmart.add([
                      _namaCont.text,
                      _nisCont.text,
                      _tglCont.text,
                      listNilaiSmart,
                      _scoreSmartCont.text
                    ]);

                    for (var i = 0; i < listSmart.length; i++) {
                      print(
                          "nama: ${listSmart[i][0]} dan salah satu nilai ${listSmart[i][3][0][1]}. skor akhir: ${listSmart[i][4]}");
                    }
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
