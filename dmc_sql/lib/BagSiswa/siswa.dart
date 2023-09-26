import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:dmc_sql/BagSiswa/ModelSiswa/mSiswa.dart';
import 'package:dmc_sql/BagSiswa/ServiceSiswa/remoteService.dart';
import 'package:dmc_sql/BagSiswa/detailSiswa.dart';
import 'package:dmc_sql/BagSiswa/inputSiswa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

const List<String> listTahun = <String>['2021/2022', '2022/2023', '2023/2024'];
const List<String> listSemester = <String>['Ganjil', 'Genap'];
const List<String> listKelas = <String>['Kelas A', 'Kelas B', 'Kelas C'];

List<List<String>> listSiswa = [
  ['Ahmad Solihun - xxxxxxx013', '2022/2023', 'Semester 1', 'Kelas A'],
  ['Agita Maharani - xxxxxxx012', '2022/2023', 'Semester 1', 'Kelas C'],
  ['Ahmad Solihun - xxxxxxx013', '2022/2023', 'Semester 1', 'Kelas A'],
  ['Hilmy Hofifah - xxxxxxx313', '2021/2022', 'Semester 3', 'Kelas B'],
  ['Agita Maharani - xxxxxxx012', '2022/2023', 'Semester 1', 'Kelas C'],
  ['Hilmy Hofifah - xxxxxxx313', '2021/2022', 'Semester 3', 'Kelas B'],
];

class SiswaPage extends StatefulWidget {
  const SiswaPage({super.key});

  @override
  State<SiswaPage> createState() => _SiswaPageState();
}

class _SiswaPageState extends State<SiswaPage> {
  String _selectedItemTahun = listTahun.first;
  String _selectedItemSemester = listSemester.first;
  String _selectedItemKelas = listKelas.first;

  List<Siswa>? listSiswa2 = [];
  var isLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    listSiswa2 = await RemoteServiceSiswa().getSiswa();
    if (listSiswa2 != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: CurrentPage.siswa),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
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
                ),
                Expanded(
                  flex: 1,
                  child: DropDowns(listTahun, _selectedItemTahun,
                      (String? newValue) {
                    setState(() {
                      _selectedItemTahun = newValue!;
                    });
                  }),
                ),
                Expanded(
                  flex: 1,
                  child: DropDowns(listSemester, _selectedItemSemester,
                      (String? newValue) {
                    setState(() {
                      _selectedItemSemester = newValue!;
                    });
                  }),
                ),
                Expanded(
                  flex: 1,
                  child: DropDowns(listKelas, _selectedItemKelas,
                      (String? newValue) {
                    setState(() {
                      _selectedItemKelas = newValue!;
                    });
                  }),
                )
              ],
            ),
            const SizedBox(height: 10),

            // ======================================================================  List Siswa  ============================================================================
            Expanded(
              child: Container(
                // height: 570,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: Colors.black),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Daftar Siswa - $_selectedItemKelas",
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.filter),
                              )
                            ],
                          ),
                          Expanded(
                            flex: 0,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    side: const BorderSide(color: Colors.black),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            InputSiswaPage()));
                              },
                              child: Container(
                                height: 40,
                                // width: 120,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Input Siswa",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        height: 1,
                        width: double.infinity,
                        color: Colors.black,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.92,
                              child:
                                  // ============================================== list ============================================================
                                  ListView.builder(
                                shrinkWrap: true,
                                physics: const ClampingScrollPhysics(),
                                itemCount: listSiswa2?.length,
                                // itemCount: listSiswa.length,
                                itemBuilder: (BuildContext context, int index) {
                                  String nama = listSiswa2![index].nama;
                                  String tahun = listSiswa2![index].tahunPend;
                                  String semester = listSiswa2![index].semester;
                                  int kelas = listSiswa2![index].kelas;

                                  // String nama = listSiswa[index][0];
                                  // String tahun = listSiswa[index][1];
                                  // String semester = listSiswa[index][2];
                                  // String kelas = listSiswa[index][3];

                                  return Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      DetailSiswaPage(
                                                        dataSiswa:
                                                            listSiswa2![index],
                                                      )));
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "   ${index + 1}",
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "   $nama",
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "$tahun      ",
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                Text(
                                                  "$semester      ",
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                Text(
                                                  "$kelas   ",
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        height: 0.5,
                                        width: double.infinity,
                                        color: Colors.black,
                                      )
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
}
