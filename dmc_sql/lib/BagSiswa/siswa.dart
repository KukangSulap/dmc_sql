

import 'package:dmc_sql/BagKeuangan/keuangan.dart';
import 'package:dmc_sql/BagSiswa/detailSiswa.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../AppBar/appBarAdmin.dart';
import '../Property/app_color.dart';
import '../Property/project_font.dart';
import 'ModelSiswa/mSiswa.dart';
import 'ServiceSiswa/remoteService.dart';
import 'inputSiswa.dart';

const List<String> listTahun = <String>['2021/2022', '2022/2023', '2023/2024'];
const List<String> listSemester = <String>['Ganjil', 'Genap'];
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

  List<Siswa>? listSiswa2 = [];
  var isLoaded = false;

  @override
  void initState() {
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
      appBar: const AppBarAdmin(page: CurrentPage.siswa),
      backgroundColor: AppColor.bg,
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
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColor.blue, width: 1.5),
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
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1.5, color: Colors.white),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GlobalProjectFont(
                            text: "Daftar Siswa - $_selectedItemKelas",
                            fontWeight: FontWeight.w800,
                            fontSize: 20.0,
                            color: AppColor.blue,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,shadowColor: Colors. transparent,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const InputSiswaPage()
                                  )
                              );
                            },
                            child: const CustomButtonril(
                              title: "Input",
                              widths: 160,
                              textColor: Colors.white,
                              fontWeight: FontWeight.normal,
                              backgroundColor: AppColor.orange,
                              height: 40,
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
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.92,
                            child:
                            // ============================================== list ============================================================
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: listSiswa2?.length,
                              itemBuilder: (BuildContext context, int index) {
                                String nama = listSiswa2![index].nama;
                                String tahun = listSiswa2![index].tahunPend;
                                String semester = listSiswa2![index].semester;
                                int kelas = listSiswa2![index].kelas;

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
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width * 0.25,
                                                child: Text(
                                                  nama,
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context).size.width * 0.1,
                                            child: Text(
                                              tahun,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context).size.width * 0.1,
                                            child: Text(
                                              semester,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const Divider()
                                  ],
                                );
                              },
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColor.yellow,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          value: _selectedItem,
          icon: const Icon(Icons.arrow_drop_down_sharp),
          // Reversed triangle icon
          iconSize: 24,
          elevation: 16,
          style: GoogleFonts.mPlusRounded1c(
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
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
