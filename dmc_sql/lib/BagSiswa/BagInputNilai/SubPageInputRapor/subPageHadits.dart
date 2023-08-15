import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

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

class SubPageHadits extends StatefulWidget {
  const SubPageHadits(
      {super.key,
      required this.nextPage,
      required this.prevPage,
      required this.insertData});

  final VoidCallback nextPage;
  final VoidCallback prevPage;
  final List<dynamic> insertData;

  @override
  State<SubPageHadits> createState() => _SubPageHaditsState();
}

class _SubPageHaditsState extends State<SubPageHadits> {
  TextEditingController _contHadits1 = TextEditingController();
  TextEditingController _contHadits2 = TextEditingController();
  TextEditingController _contHaditsArb1 = TextEditingController();
  TextEditingController _contHaditsArb2 = TextEditingController();
  String _selectedItemHadist1 = listGrade.first;
  String _selectedItemHadist2 = listGrade.first;
  String _selectedItemArb1 = listGrade.first;
  String _selectedItemArb2 = listGrade.first;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400,
          child: Card(
            elevation: 5,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nilai Hadits"),
                      Text("Lisan"),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: TextField(
                              controller: _contHadits1,
                              decoration:
                                  InputDecoration(hintText: "Nama Hadits"),
                            ),
                          ),
                          Expanded(
                              child: DropDowns(listGrade, _selectedItemHadist1,
                                  (String? value) {
                            setState(() {
                              _selectedItemHadist1 = value!;
                            });
                          }))
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              listNilaiHadits1.add(
                                  [_contHadits1.text, _selectedItemHadist1]);
                            });
                          },
                          child: Text("Save"),
                        ),
                      ),
                      Text("Nilai Hadits yang Sudah Diinput"),
                      Container(
                        height: 150,
                        child: ListView.builder(
                            itemCount: listNilaiHadits1.length,
                            itemBuilder: (BuildContext context, int index) {
                              String namaHadits = listNilaiHadits1[index][0];
                              String grade = listNilaiHadits1[index][1];

                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text("$namaHadits"), Text("$grade")],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(""),
                      Text("Tulis"),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: TextField(
                              controller: _contHadits2,
                              decoration:
                                  InputDecoration(hintText: "Nama Hadits"),
                            ),
                          ),
                          Expanded(
                              child: DropDowns(listGrade, _selectedItemHadist2,
                                  (String? value) {
                            setState(() {
                              _selectedItemHadist2 = value!;
                            });
                          }))
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              listNilaiHadits2.add(
                                  [_contHadits2.text, _selectedItemHadist2]);
                            });
                          },
                          child: Text("Save"),
                        ),
                      ),
                      Text("Nilai Hadits yang Sudah Diinput"),
                      Container(
                        height: 150,
                        child: ListView.builder(
                            itemCount: listNilaiHadits2.length,
                            itemBuilder: (BuildContext context, int index) {
                              String namaHadits = listNilaiHadits2[index][0];
                              String grade = listNilaiHadits2[index][1];

                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text("$namaHadits"), Text("$grade")],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 400,
          child: Card(
            elevation: 5,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nilai Hadits Arbain"),
                      Text("Lisan"),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: TextField(
                              controller: _contHaditsArb1,
                              decoration:
                                  InputDecoration(hintText: "Nama Hadits"),
                            ),
                          ),
                          Expanded(
                              child: DropDowns(listGrade, _selectedItemArb1,
                                  (String? value) {
                            setState(() {
                              _selectedItemArb1 = value!;
                            });
                          }))
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              listNilaiHaditsArb1.add(
                                  [_contHaditsArb1.text, _selectedItemArb1]);
                            });
                          },
                          child: Text("Save"),
                        ),
                      ),
                      Text("Nilai Hadits yang Sudah Diinput"),
                      Container(
                        height: 150,
                        child: ListView.builder(
                            itemCount: listNilaiHaditsArb1.length,
                            itemBuilder: (BuildContext context, int index) {
                              String namaHadits = listNilaiHaditsArb1[index][0];
                              String grade = listNilaiHaditsArb1[index][1];

                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text("$namaHadits"), Text("$grade")],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(""),
                      Text("Tulis"),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: TextField(
                              controller: _contHaditsArb2,
                              decoration:
                                  InputDecoration(hintText: "Nama Hadits"),
                            ),
                          ),
                          Expanded(
                              child: DropDowns(listGrade, _selectedItemArb2,
                                  (String? value) {
                            setState(() {
                              _selectedItemArb2 = value!;
                            });
                          }))
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              listNilaiHaditsArb2.add(
                                  [_contHaditsArb2.text, _selectedItemArb2]);
                            });
                          },
                          child: Text("Save"),
                        ),
                      ),
                      Text("Nilai Hadits yang Sudah Diinput"),
                      Container(
                        height: 150,
                        child: ListView.builder(
                            itemCount: listNilaiHaditsArb2.length,
                            itemBuilder: (BuildContext context, int index) {
                              String namaHadits = listNilaiHaditsArb2[index][0];
                              String grade = listNilaiHaditsArb2[index][1];

                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text("$namaHadits"), Text("$grade")],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                onPressed: () {
                  widget.prevPage();
                },
                child: Icon(Icons.arrow_back)),
            ElevatedButton(
                onPressed: () {
                  if (widget.insertData[2].length < 3) {
                    widget.insertData[2].addAll([
                      listNilaiHadits1,
                      listNilaiHadits2,
                      listNilaiHaditsArb1,
                      listNilaiHaditsArb2,
                    ]);
                  } else {
                    widget.insertData[2].removeRange(0, 4);
                    widget.insertData[2].addAll([
                      listNilaiHadits1,
                      listNilaiHadits2,
                      listNilaiHaditsArb1,
                      listNilaiHaditsArb2,
                    ]);
                  }
                  widget.nextPage();
                },
                child: Text("Finish"))
          ],
        ),
        const SizedBox(height: 50)
      ],
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
