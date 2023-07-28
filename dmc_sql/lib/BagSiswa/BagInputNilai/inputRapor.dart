import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

const List<String> listGrade = <String>['A', 'B', 'C'];

List<List<String>> listNilaiHadits = [
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

class InputRaporPage extends StatefulWidget {
  const InputRaporPage({super.key});

  @override
  State<InputRaporPage> createState() => _InputRaporPageState();
}

class _InputRaporPageState extends State<InputRaporPage> {
  TextEditingController _contKualitatif1 = TextEditingController();
  TextEditingController _contKualitatif2 = TextEditingController();
  TextEditingController _contKualitatif3 = TextEditingController();
  TextEditingController _contKualitatif4 = TextEditingController();

  TextEditingController _contIbadah1 = TextEditingController();
  TextEditingController _contIbadah2 = TextEditingController();
  TextEditingController _contIbadah3 = TextEditingController();
  TextEditingController _contIbadah4 = TextEditingController();

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

  TextEditingController _conthifdzun1 = TextEditingController();
  TextEditingController _conthifdzun2 = TextEditingController();
  TextEditingController _conthifdzun3 = TextEditingController();

  TextEditingController _contHadir1 = TextEditingController();
  TextEditingController _contHadir2 = TextEditingController();
  TextEditingController _contHadir3 = TextEditingController();
  TextEditingController _contHadir4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: "s"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              KualitatifSubPage(
                  contKualitatif1: _contKualitatif1,
                  contKualitatif2: _contKualitatif2,
                  contKualitatif3: _contKualitatif3,
                  contKualitatif4: _contKualitatif4),
              IbadahSubPage(
                  contIbadah1: _contIbadah1,
                  contIbadah2: _contIbadah2,
                  contIbadah3: _contIbadah3,
                  contIbadah4: _contIbadah4),
              haditsSubPage(),
              quranSubPage(),
              KehadiranSubPage(
                  contHadir1: _contHadir1,
                  contHadir2: _contHadir2,
                  contHadir3: _contHadir3,
                  contHadir4: _contHadir4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: Icon(Icons.arrow_left)),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Finish"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Column quranSubPage() {
    return Column(
      children: [
        Container(
          height: 200,
          child: Card(
            elevation: 5,
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Nilai Al-Quran"),
                    Text("Lisan"),
                    Row(
                      children: [
                        Expanded(
                            child: TextField(
                          controller: _contQuran1,
                          decoration: InputDecoration(
                              hintText: "Isti'adzah dan Basmallah"),
                        )),
                        SizedBox(width: 10),
                        Expanded(
                            child: TextField(
                          controller: _contQuran2,
                          decoration:
                              InputDecoration(hintText: "Makharijul Huruf"),
                        ))
                      ],
                    ),
                    Expanded(
                        child: TextField(
                      controller: _contQuran3,
                      decoration: InputDecoration(hintText: "Shifatul Huruf"),
                    ))
                  ],
                )),
                VerticalDivider(),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Data Al-Quran"),
                    Text("Lisan"),
                    Row(
                      children: [
                        Expanded(
                            child: TextField(
                          controller: _contQuran4,
                          decoration: InputDecoration(
                              hintText: "Isti'adzah dan Basmallah"),
                        )),
                        SizedBox(width: 10),
                        Expanded(
                            child: TextField(
                          controller: _contQuran5,
                          decoration:
                              InputDecoration(hintText: "Makharijul Huruf"),
                        ))
                      ],
                    ),
                    Expanded(
                        child: TextField(
                      controller: _contQuran6,
                      decoration: InputDecoration(hintText: "Shifatul Huruf"),
                    ))
                  ],
                )),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 300,
          child: Card(
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Tahfiz"),
                Row(
                  children: [
                    Expanded(
                        child: TextField(
                      controller: _contTahfiz1,
                      decoration: InputDecoration(hintText: "JUZ"),
                    )),
                    Expanded(
                        child: TextField(
                      controller: _contTahfiz2,
                      decoration: InputDecoration(hintText: "Nilai"),
                    )),
                    Expanded(
                        child: TextField(
                      controller: _contTahfiz3,
                      decoration: InputDecoration(hintText: "Juz yang Teruji"),
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
                  child: ElevatedButton(onPressed: () {}, child: Text("Save")),
                ),
                Text("Nilai Al-Quran yang Sudah di Input"),
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
        Container(
          height: 200,
          child: Card(
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Nilai Hifdzun Mutun"),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("LISAN"),
                        TextField(
                          controller: _conthifdzun1,
                          decoration: InputDecoration(hintText: "Al-Jazary"),
                        ),
                      ],
                    )),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("JUMLAH"),
                        TextField(
                          controller: _conthifdzun2,
                          decoration: InputDecoration(hintText: "Al-Jazary"),
                        ),
                      ],
                    )),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("TULIS"),
                        TextField(
                          controller: _conthifdzun3,
                          decoration: InputDecoration(hintText: "Al-Jazary"),
                        ),
                      ],
                    )),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Column haditsSubPage() {
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
                          onPressed: () {},
                          child: Text("Save"),
                        ),
                      ),
                      Text("Nilai Hadits yang Sudah Diinput"),
                      Container(
                        height: 150,
                        child: ListView.builder(
                            itemCount: listNilaiHadits.length,
                            itemBuilder: (BuildContext context, int index) {
                              String namaHadits = listNilaiHadits[index][0];
                              String grade = listNilaiHadits[index][1];

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
                          onPressed: () {},
                          child: Text("Save"),
                        ),
                      ),
                      Text("Nilai Hadits yang Sudah Diinput"),
                      Container(
                        height: 150,
                        child: ListView.builder(
                            itemCount: listNilaiHadits.length,
                            itemBuilder: (BuildContext context, int index) {
                              String namaHadits = listNilaiHadits[index][0];
                              String grade = listNilaiHadits[index][1];

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
                          onPressed: () {},
                          child: Text("Save"),
                        ),
                      ),
                      Text("Nilai Hadits yang Sudah Diinput"),
                      Container(
                        height: 150,
                        child: ListView.builder(
                            itemCount: listNilaiHadits.length,
                            itemBuilder: (BuildContext context, int index) {
                              String namaHadits = listNilaiHadits[index][0];
                              String grade = listNilaiHadits[index][1];

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
                          onPressed: () {},
                          child: Text("Save"),
                        ),
                      ),
                      Text("Nilai Hadits yang Sudah Diinput"),
                      Container(
                        height: 150,
                        child: ListView.builder(
                            itemCount: listNilaiHadits.length,
                            itemBuilder: (BuildContext context, int index) {
                              String namaHadits = listNilaiHadits[index][0];
                              String grade = listNilaiHadits[index][1];

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
      ],
    );
  }
}

class KehadiranSubPage extends StatelessWidget {
  const KehadiranSubPage({
    super.key,
    required TextEditingController contHadir1,
    required TextEditingController contHadir2,
    required TextEditingController contHadir3,
    required TextEditingController contHadir4,
  })  : _contHadir1 = contHadir1,
        _contHadir2 = contHadir2,
        _contHadir3 = contHadir3,
        _contHadir4 = contHadir4;

  final TextEditingController _contHadir1;
  final TextEditingController _contHadir2;
  final TextEditingController _contHadir3;
  final TextEditingController _contHadir4;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Card(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Kehadiran"),
            Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: _contHadir1,
                  decoration: InputDecoration(hintText: "Sakit"),
                )),
                Expanded(
                    child: TextField(
                  controller: _contHadir2,
                  decoration: InputDecoration(hintText: "Izin"),
                )),
                Expanded(
                    child: TextField(
                  controller: _contHadir3,
                  decoration: InputDecoration(hintText: "Aplha"),
                )),
                Expanded(
                    child: TextField(
                  controller: _contHadir4,
                  decoration: InputDecoration(hintText: "Total"),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class IbadahSubPage extends StatelessWidget {
  const IbadahSubPage({
    super.key,
    required TextEditingController contIbadah1,
    required TextEditingController contIbadah2,
    required TextEditingController contIbadah3,
    required TextEditingController contIbadah4,
  })  : _contIbadah1 = contIbadah1,
        _contIbadah2 = contIbadah2,
        _contIbadah3 = contIbadah3,
        _contIbadah4 = contIbadah4;

  final TextEditingController _contIbadah1;
  final TextEditingController _contIbadah2;
  final TextEditingController _contIbadah3;
  final TextEditingController _contIbadah4;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Card(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text("Nilai Ibadah"),
                  Text("Gerakan"),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _contIbadah1,
                          decoration:
                              InputDecoration(hintText: "Tata Cara Wudhu"),
                        ),
                      ),
                      Expanded(
                          child: TextField(
                        controller: _contIbadah2,
                        decoration:
                            InputDecoration(hintText: "Tata Cara Shalat"),
                      )),
                    ],
                  )
                ],
              ),
            ),
            const VerticalDivider(),
            Expanded(
                child: Column(
              children: [
                Text(""),
                Text("Bacaan"),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _contIbadah3,
                        decoration:
                            InputDecoration(hintText: "Tata Cara Wudhu"),
                      ),
                    ),
                    Expanded(
                        child: TextField(
                      controller: _contIbadah4,
                      decoration: InputDecoration(hintText: "Tata Cara Shalat"),
                    )),
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class KualitatifSubPage extends StatelessWidget {
  const KualitatifSubPage({
    super.key,
    required TextEditingController contKualitatif1,
    required TextEditingController contKualitatif2,
    required TextEditingController contKualitatif3,
    required TextEditingController contKualitatif4,
  })  : _contKualitatif1 = contKualitatif1,
        _contKualitatif2 = contKualitatif2,
        _contKualitatif3 = contKualitatif3,
        _contKualitatif4 = contKualitatif4;

  final TextEditingController _contKualitatif1;
  final TextEditingController _contKualitatif2;
  final TextEditingController _contKualitatif3;
  final TextEditingController _contKualitatif4;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text("Nilai Kualitatif"), Text("Gerakan")],
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _contKualitatif1,
                    decoration:
                        InputDecoration(hintText: "Pengagungan terhadap ilmi"),
                  ),
                ),
                Expanded(
                    child: TextField(
                  controller: _contKualitatif2,
                  decoration: InputDecoration(
                      hintText: "Tanggung Jawab dan kemandirian"),
                )),
                Expanded(
                    child: TextField(
                  controller: _contKualitatif3,
                  decoration: InputDecoration(hintText: "Kejujuran"),
                )),
                Expanded(
                    child: TextField(
                  controller: _contKualitatif4,
                  decoration:
                      InputDecoration(hintText: "Partisipasi dan manfaat"),
                )),
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
