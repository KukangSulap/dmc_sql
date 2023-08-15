import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: CurrentPage.siswa),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              kualitatifSubPage(),
              ibadahSubPage(),
              haditsSubPage(),
              quranSubPage(),
              kehadiranSubPage(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_left)),
                  ElevatedButton(
                      onPressed: () {
                        //=================== input kualitatif
                        listKualitatif.add([
                          _selectedItemKualitatif1,
                          _selectedItemKualitatif2,
                          _selectedItemKualitatif3,
                          _selectedItemKualitatif4
                        ]);
                        print(listKualitatif[0][0]);

                        //=================== input ibadah
                        listIbadah.add([
                          _selectedItemIbadah1,
                          _selectedItemIbadah2,
                          _selectedItemIbadah3,
                          _selectedItemIbadah4,
                        ]);
                        print(listIbadah[0][0]);

                        //=================== input hadits
                        listHadits.add([
                          listNilaiHadits1,
                          listNilaiHadits2,
                          listNilaiHaditsArb1,
                          listNilaiHaditsArb2,
                        ]);
                        print(listHadits[0][0][0]);

                        //=================== input quran
                        listQuran.add([
                          _contQuran1.text,
                          _contQuran2.text,
                          _contQuran3.text,
                          _contQuran4.text,
                          _contQuran5.text,
                          _contQuran6.text,
                          listNilaiTahfiz,
                          _selectedItemHifdzun1,
                          _conthifdzun.text,
                          _selectedItemHadist2
                        ]);
                        print(listQuran[0][0]);

                        //=================== input kehadiran
                        listKehadiran.add([
                          _contHadir1.text,
                          _contHadir2.text,
                          _contHadir3.text,
                          _contHadir4.text,
                        ]);
                        print(listKehadiran[0][0]);
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

  Container kualitatifSubPage() {
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
                    child: DropDowns(listGrade, _selectedItemKualitatif1,
                        (String? value) {
                  setState(() {
                    _selectedItemKualitatif1 = value!;
                  });
                })),
                Expanded(
                    child: DropDowns(listGrade, _selectedItemKualitatif2,
                        (String? value) {
                  setState(() {
                    _selectedItemKualitatif2 = value!;
                  });
                })),
                Expanded(
                    child: DropDowns(listGrade, _selectedItemKualitatif3,
                        (String? value) {
                  setState(() {
                    _selectedItemKualitatif3 = value!;
                  });
                })),
                Expanded(
                    child: DropDowns(listGrade, _selectedItemKualitatif4,
                        (String? value) {
                  setState(() {
                    _selectedItemKualitatif4 = value!;
                  });
                })),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container ibadahSubPage() {
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
                          child: DropDowns(listGrade, _selectedItemIbadah1,
                              (String? value) {
                        setState(() {
                          _selectedItemIbadah1 = value!;
                        });
                      })),
                      Expanded(
                          child: DropDowns(listGrade, _selectedItemIbadah2,
                              (String? value) {
                        setState(() {
                          _selectedItemIbadah2 = value!;
                        });
                      })),
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
                        child: DropDowns(listGrade, _selectedItemIbadah3,
                            (String? value) {
                      setState(() {
                        _selectedItemIbadah3 = value!;
                      });
                    })),
                    Expanded(
                        child: DropDowns(listGrade, _selectedItemIbadah4,
                            (String? value) {
                      setState(() {
                        _selectedItemIbadah4 = value!;
                      });
                    })),
                  ],
                )
              ],
            ))
          ],
        ),
      ),
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
      ],
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
                          decoration: InputDecoration(hintText: "Al-Jazary"),
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
        )
      ],
    );
  }

  Container kehadiranSubPage() {
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
