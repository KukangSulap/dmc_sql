import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

import '../../BagKeuangan/keuangan.dart';
import '../../Property/app_color.dart';
import '../../Property/project_font.dart';

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
  final int nisSiswa;

  @override
  State<InputSmartPage> createState() => _InputSmartPageState();
}

class _InputSmartPageState extends State<InputSmartPage> {
  late final TextEditingController _namaCont =
      TextEditingController(text: widget.namaSiswa);
  late final TextEditingController _nisCont =
      TextEditingController(text: "${widget.nisSiswa}");
  final TextEditingController _tglCont = TextEditingController();

  final TextEditingController _namaSmartCont = TextEditingController();
  final TextEditingController _scoreSmartCont = TextEditingController();

  String _selectedItem = listGrade.first;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const AppBarAdmin(page: CurrentPage.siswa),
      backgroundColor: AppColor.bg,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenWidth >= 600 ? 50 : 5,
                    right: screenWidth >= 600 ? 200 : 5,
                    left: screenWidth >= 600 ? 200 : 5),
                child: Container(
                  padding: const EdgeInsets.all(30.0), // Add some padding to the container
                  decoration: BoxDecoration(
                    color: Colors.white, // Set a white background color
                    borderRadius: BorderRadius.circular(10.0), // Add rounded corners
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
                          decoration: const InputDecoration(
                            hintText: 'Tanggal Smart',
                            prefixIcon: Icon(Icons.calendar_today),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const GlobalProjectFont(
                        text: 'Nilai Smart',
                        fontWeight: FontWeight.w800,
                        fontSize: 20.0,
                        color: AppColor.blue,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 6,
                              child: Container(
                                padding: const EdgeInsets.only(top: 3, left: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: AppColor.blue, width: 1.5),
                                ),
                                child: TextField(
                                  controller: _namaSmartCont,
                                  decoration: const InputDecoration(
                                    hintText: 'Nama Smart',
                                  ),
                                ),
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
                              child: Container(
                                padding: const EdgeInsets.only(left: 5, right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: AppColor.blue, width: 1.5),
                                ),
                                child: TextField(
                                  controller: _scoreSmartCont,
                                  decoration: const InputDecoration(
                                    hintText: 'Score',
                                  ),
                                ),
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
                          child: const Text("Save"),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 100,
                        child: ListView.builder(
                          itemCount: listNilaiSmart.length,
                          itemBuilder: (BuildContext context, int index) {
                            String namaKategori = listNilaiSmart[index][0];
                            String grade = listNilaiSmart[index][1];

                            return Container(
                              margin: EdgeInsets.symmetric(vertical: 3),
                              padding: EdgeInsets.all( 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: AppColor.blue, width: 1.5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("$namaKategori"),
                                  Text("$grade"),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.only(right: 200, left: 200),
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
                      child: const CustomButtonril(
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
                        shadowColor: Colors.transparent,
                        elevation: 0, // Remove button elevation
                      ),
                      onPressed: () {
                        listSmart.add([
                          _namaCont.text,
                          _nisCont.text,
                          _tglCont.text,
                          listNilaiSmart,
                          _scoreSmartCont.text,
                        ]);

                        for (var i = 0; i < listSmart.length; i++) {
                          print(
                              "nama: ${listSmart[i][0]} dan salah satu nilai ${listSmart[i][3][0][1]}. skor akhir: ${listSmart[i][4]}");
                        }
                        Navigator.pop(context);
                      },
                      child: const CustomButtonril(
                        title: 'Finish',
                        widths: 140,
                        textColor: Colors.white,
                        fontWeight: FontWeight.normal,
                        backgroundColor: AppColor.blue,
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}

Container DropDowns(
    List<String> list, String _selectedItem, ValueChanged<String?> onChanged) {
  return Container(
    width: 100,
    padding: const EdgeInsets.only(left: 5, right: 5),
    decoration: BoxDecoration(
      border: Border.all(
        color: AppColor.blue,
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
