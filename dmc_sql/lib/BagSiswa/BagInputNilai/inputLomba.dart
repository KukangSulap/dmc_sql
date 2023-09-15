import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

import '../../BagKeuangan/keuangan.dart';
import '../../Property/app_color.dart';
import '../../Property/project_font.dart';

const List<String> listGrade = <String>['A', 'B', 'C'];

List<List<String>> listNilaiLomba = [
  ['Lomba 1', 'A'],
  ['Lomba 2', 'A'],
  ['Lomba 3', 'A'],
];

List<List<dynamic>> listLomba = [];

class InputLombaPage extends StatefulWidget {
  const InputLombaPage(
      {super.key, required this.namaSiswa, required this.nisSiswa});

  final String namaSiswa;
  final int nisSiswa;

  @override
  State<InputLombaPage> createState() => _InputLombaPageState();
}

class _InputLombaPageState extends State<InputLombaPage> {
  late final TextEditingController _namaCont =
  TextEditingController(text: widget.namaSiswa);
  late final TextEditingController _nisCont =
  TextEditingController(text: "${widget.nisSiswa}");
  final TextEditingController _tglCont = TextEditingController();
  final TextEditingController _namaLombaCont = TextEditingController();
  final TextEditingController _notesLombaCont = TextEditingController();
  String _selectedItem = listGrade.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarAdmin(page: CurrentPage.siswa),
      backgroundColor: AppColor.bg,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0, right: 200, left: 200),
                child: Container(
                  padding: const EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(138, 149, 158, 0.20),
                        offset: Offset(0, 30),
                        blurRadius: 60,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const GlobalProjectFont(
                        text: 'Data Siswa',
                        fontWeight: FontWeight.w800,
                        fontSize: 20.0,
                        color: AppColor.blue,
                      ),
                      const SizedBox(height: 8),
                      const GlobalProjectFont(
                        text: 'ISI DATA SISWA',
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                      ),
                      const SizedBox(height: 8),

                      // Styled TextField
                      Container(
                        padding: const EdgeInsets.only(top: 3, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColor.blue, width: 1.5),
                        ),
                        child: TextField(
                          controller: _namaCont,
                          readOnly: true,
                          decoration: const InputDecoration(
                            hintText: 'Nama Siswa',
                          ),
                        ),
                      ),

                      const SizedBox(height: 8),

                      // Styled TextField
                      Container(
                        padding: const EdgeInsets.only(top: 3, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColor.blue, width: 1.5),
                        ),
                        child: TextField(
                          controller: _nisCont,
                          readOnly: true,
                          decoration: const InputDecoration(
                            hintText: 'Nomor Induk Siswa',
                          ),
                        ),
                      ),

                      const SizedBox(height: 8),

                      // Styled TextField
                      Container(
                        padding: const EdgeInsets.only(top: 3, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColor.blue, width: 1.5),
                        ),
                        child: TextField(
                          onTap: () async {
                            DateTime? selectedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2012),
                              lastDate: DateTime(2026),
                            );

                            if (selectedDate != null) {
                              final formattedDate =
                              DateFormat('dd/MMMM/yyyy').format(selectedDate);
                              setState(() {
                                _tglCont.text = formattedDate;
                              });
                            }
                          },
                          controller: _tglCont,
                          readOnly: true,
                          decoration: const InputDecoration(
                            hintText: 'Tanggal Lomba',
                            prefixIcon: Icon(Icons.calendar_today),
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      const Text("Nilai Lomba",
                          style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 250,
                            child: TextField(
                              controller: _namaLombaCont,
                              decoration: const InputDecoration(
                                hintText: 'Nama Lomba',
                              ),
                            ),
                          ),
                          DropDowns(listGrade, _selectedItem, (String? value) {
                            setState(() {
                              _selectedItem = value!;
                            });
                          }),
                        ],
                      ),

                      const SizedBox(height: 8),

                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              listNilaiLomba
                                  .add([_namaLombaCont.text, _selectedItem]);
                            });
                          },
                          child: const Text("Save"),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 150,
                        child: ListView.builder(
                          itemCount: listNilaiLomba.length,
                          itemBuilder: (BuildContext context, int index) {
                            String namaLomba = listNilaiLomba[index][0];
                            String grade = listNilaiLomba[index][1];

                            return Container(
                              margin: EdgeInsets.symmetric(vertical: 3),
                              padding: EdgeInsets.all( 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.blueAccent, width: 1.5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "$namaLomba",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColor.blue),
                                  ),
                                  Text(
                                    "$grade",
                                    style: TextStyle(fontSize: 16, color: AppColor.blue),
                                  ),
                                ],
                              ),
                            );
                          },
                        )
                      ),

                      const SizedBox(height: 16),

                      // Styled TextField
                      Container(
                        padding: const EdgeInsets.only(top: 3, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColor.blue, width: 1.5),
                        ),
                        child: TextField(
                          controller: _notesLombaCont,
                          decoration: const InputDecoration(
                            hintText: 'Notes lomba',
                          ),
                          maxLines: 5,
                        ),
                      ),

                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 200, left: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom( // Set button style
                        backgroundColor: Colors.transparent, // Set the button color to transparent
                        shadowColor: Colors.transparent,
                        elevation: 0, // Remove button elevation
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const CustomButton(
                        title: 'Back',
                        widths: 140,
                        textColor: Colors.white,
                        fontWeight: FontWeight.normal,
                        backgroundColor: Color(0xffd66a3d),
                        height: 50,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom( // Set button style
                        backgroundColor: Colors.transparent, // Set the button color to transparent
                        elevation: 0, // Remove button elevation
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        listLomba.add([
                          _namaCont.text,
                          _nisCont.text,
                          _tglCont.text,
                          listNilaiLomba,
                          _notesLombaCont.text,
                        ]);

                        for (var i = 0; i < listLomba.length; i++) {
                          print(
                              "nama ${listLomba[i][0]} notes ${listLomba[i][4]}");
                        }
                      },
                        child: const CustomButton(
                          title: 'Finish',
                          widths: 140,
                          textColor: Colors.white,
                          fontWeight: FontWeight.normal,
                          backgroundColor: Color(0xff1e6ad0),
                          height: 50,
                        ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
    padding: const EdgeInsets.symmetric(horizontal: 16),
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
        icon: const Icon(Icons.arrow_drop_down_sharp), // Reversed triangle icon
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.black, fontSize: 16),
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
