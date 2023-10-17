import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../../../BagKeuangan/keuangan.dart';
import '../../../Property/app_color.dart';
import '../../../Property/project_font.dart';

const List<String> listGrade = <String>['A', 'B', 'C'];

const List<String> listStatus = <String>['Mumtaz', 'Tidak Lancar'];

List<List<String>> listNilaiTahfiz = [
  ['Juz 30', '96', "Mumtaz", "Tersetifikasi", "17 Halaman", "85%"],
  ['Juz 28', '92', "Mumtaz", "Ziyadah", "19 Halaman", "100%"],
  ['Juz 29', '97', "Mumtaz", "Tidak Tersertifikasi", "20 Halaman", "85%"],
];

class SubPageQuran extends StatefulWidget {
  const SubPageQuran(
      {super.key,
        required this.nextPage,
        required this.prevPage,
        required this.insertData});

  final VoidCallback nextPage;
  final VoidCallback prevPage;
  final List<dynamic> insertData;

  @override
  State<SubPageQuran> createState() => _SubPageQuranState();
}

class _SubPageQuranState extends State<SubPageQuran> {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 270,
          child: Card(
            elevation: 5,
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const GlobalProjectFont(
                            text: 'Nilai Al-Quran',
                            fontWeight: FontWeight.w800,
                            fontSize: 22.0,
                            color: AppColor.blue,
                          ),
                          const GlobalProjectFont(
                            text: 'LISAN',
                            fontSize: 18.0,
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(top: 10, left: 10),
                                  padding: const EdgeInsets.only(top: 3, left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: AppColor.blue, width: 1.5),
                                  ),
                                  child: TextField(
                                    controller: _contQuran1,
                                    decoration: const InputDecoration(
                                      hintText: 'Nama Hadits',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(top: 10, left: 10),
                                  padding: const EdgeInsets.only(top: 3, left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: AppColor.blue, width: 1.5),
                                  ),
                                  child: TextField(
                                    controller: _contQuran2,
                                    decoration: const InputDecoration(
                                      hintText: 'Nama Hadits',
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(top: 10, left: 10),
                                padding: const EdgeInsets.only(top: 3, left: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: AppColor.blue, width: 1.5),
                                ),
                                child: TextField(
                                  controller: _contQuran3,
                                  decoration: const InputDecoration(
                                    hintText: 'Shifatul Huruf',
                                  ),
                                ),
                              ),
                          )
                        ],
                      ),
                    )),
                const VerticalDivider(),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const GlobalProjectFont(
                            text: 'Data Al-Quran',
                            fontWeight: FontWeight.w800,
                            fontSize: 22.0,
                            color: AppColor.blue,
                          ),
                          const GlobalProjectFont(
                            text: 'LISAN',
                            fontSize: 18.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: TextField(
                                    controller: _contQuran4,
                                    decoration: const InputDecoration(
                                        hintText: "Isti'adzah dan Basmallah"),
                                  )),
                              const SizedBox(width: 10),
                              Expanded(
                                  child: TextField(
                                    controller: _contQuran5,
                                    decoration:
                                    const InputDecoration(hintText: "Makharijul Huruf"),
                                  ))
                            ],
                          ),
                          Expanded(
                              child: TextField(
                                controller: _contQuran6,
                                decoration: const InputDecoration(hintText: "Shifatul Huruf"),
                              ))
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 350,
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const GlobalProjectFont(
                    text: 'Tahfiz',
                    fontWeight: FontWeight.w800,
                    fontSize: 22.0,
                    color: AppColor.blue,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: TextField(
                            controller: _contTahfiz1,
                            decoration: const InputDecoration(hintText: "JUZ"),
                          )),
                      Expanded(
                          child: TextField(
                            controller: _contTahfiz2,
                            decoration: const InputDecoration(hintText: "Nilai"),
                          )),
                      Expanded(
                          child: TextField(
                            controller: _contTahfiz3,
                            decoration: const InputDecoration(hintText: "Juz yang Teruji"),
                          )),
                      Expanded(
                          child: DropDowns(listStatus, _selectedItemTahfiz,
                                  (String? value) {
                                setState(() {
                                  _selectedItemTahfiz = value!;
                                });
                              }))
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(onPressed: () {}, child: const Text("Save")),
                  ),
                  const Text("Nilai Al-Quran yang Sudah di Input"),
                  Container(
                    height: 150,
                    child: ListView.builder(
                        itemCount: listNilaiTahfiz.length,
                        itemBuilder: (BuildContext context, int index) {
                          String juz = listNilaiTahfiz[index][0];
                          String nilai = listNilaiTahfiz[index][1];
                          String status1 = listNilaiTahfiz[index][2];
                          String status2 = listNilaiTahfiz[index][3];
                          String halaman = listNilaiTahfiz[index][4];
                          String persen = listNilaiTahfiz[index][5];

                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(flex: 3, child: Text(juz)),
                              Expanded(child: Text(nilai)),
                              Expanded(child: Text(status1)),
                              Expanded(child: Text(status2)),
                              Expanded(child: Text(halaman)),
                              Expanded(child: Text(persen)),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 200,
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const GlobalProjectFont(
                    text: 'Nilai Hifdzun Mutun',
                    fontWeight: FontWeight.w800,
                    fontSize: 22.0,
                    color: AppColor.blue,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("LISAN"),
                              DropDowns(listGrade, _selectedItemHifdzun1, (value) {
                                setState(() {
                                  _selectedItemHifdzun1 = value!;
                                });
                              })
                            ],
                          )),
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("JUMLAH"),
                              TextField(
                                controller: _conthifdzun,
                                decoration: const InputDecoration(hintText: "Al-Jazary"),
                              ),
                            ],
                          )),
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("TULIS"),
                              DropDowns(listGrade, _selectedItemHifdzun2, (value) {
                                setState(() {
                                  _selectedItemHifdzun2 = value!;
                                });
                              })
                            ],
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom( // Set button style
                  backgroundColor: Colors.transparent, // Set the button color to transparent
                  elevation: 0, shadowColor: Colors. transparent,// Remove button elevation
                ),
                onPressed: () {
                  widget.prevPage();
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 20,
                  color: AppColor.orange,
                )
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom( // Set button style
                backgroundColor: Colors.transparent, // Set the button color to transparent
                elevation: 0, shadowColor: Colors. transparent,// Remove button elevation
              ),
              onPressed: () {
                if (widget.insertData[3].length < 9) {
                  widget.insertData[3].addAll([
                    _contQuran1.text,
                    _contQuran2.text,
                    _contQuran3.text,
                    _contQuran4.text,
                    _contQuran5.text,
                    _contQuran6.text,
                    listNilaiTahfiz,
                    _selectedItemHifdzun1,
                    _conthifdzun.text,
                    _selectedItemHifdzun2
                  ]);
                } else {
                  widget.insertData[3].removeRange(0, 10);
                  widget.insertData[3].addAll([
                    _contQuran1.text,
                    _contQuran2.text,
                    _contQuran3.text,
                    _contQuran4.text,
                    _contQuran5.text,
                    _contQuran6.text,
                    listNilaiTahfiz,
                    _selectedItemHifdzun1,
                    _conthifdzun.text,
                    _selectedItemHifdzun2
                  ]);
                }
                widget.nextPage();
              },
              child: const CustomButtonril(
                title: 'Next',
                widths: 73,
                textColor: Colors.white,
                fontWeight: FontWeight.normal,
                backgroundColor: AppColor.yellow,
                height: 40,
              ),)
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
    padding: const EdgeInsets.symmetric(horizontal: 16),
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
