import 'package:dmc_sql/BagPendidikan/kurikulum.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:dmc_sql/Property/app_color.dart';

import '../AppBar/app_bar_user.dart';

class PendidikanScreen extends StatefulWidget {
  const PendidikanScreen({super.key});

  @override
  State<PendidikanScreen> createState() => _PendidikanScreenState();
}

class StudentData {
  String nama;
  String halaman;
  String presentase;
  bool notes;

  StudentData({
    required this.nama,
    required this.halaman,
    required this.presentase,
    required this.notes,
  });
}

class _PendidikanScreenState extends State<PendidikanScreen> {
  String searchText = '';

  List<StudentData> listSiswa = [
    StudentData(
        nama: 'Ahmad Solihun',
        halaman: '37.0',
        presentase: '308%',
        notes: true),
    StudentData(
        nama: 'Agita Maharani',
        halaman: '30.0',
        presentase: '250%',
        notes: false),
    StudentData(
        nama: 'Ahmad Solihun',
        halaman: '20.0',
        presentase: '167%',
        notes: true),
    StudentData(
        nama: 'Hilmy Hofifah',
        halaman: '19.5',
        presentase: '163%',
        notes: true),
    StudentData(
        nama: 'Agita Maharani',
        halaman: '17.5',
        presentase: '146%',
        notes: false),
    StudentData(
        nama: 'Hilmy Hofifah',
        halaman: '16.0',
        presentase: '133%',
        notes: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: const AppBarUser(page: UserPage.pendidikan),
      body: Column(
        children: [
          const SizedBox(
            height: 42,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 72),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                      height: 72,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.blue, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 29),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: const Icon(
                              Icons.search,
                              size: 36,
                            ),
                            suffixIconColor: AppColor.blue,
                            hintText: 'Pencarian',
                            hintStyle: GoogleFonts.mPlusRounded1c(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                                color: AppColor.blue),
                            border: InputBorder.none,
                          ),
                        ),
                      )),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                      height: 72,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(214, 106, 61, 1),
                          ),
                          onPressed: () {
                            // TODO: Add Update Materi On Pressed.
                          },
                          child: Text(
                            'Update Materi',
                            style: GoogleFonts.mPlusRounded1c(
                                fontWeight: FontWeight.w800,
                                fontSize: 18.0,
                                color: Colors.white),
                          ),
                        ),
                      )),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                      height: 72,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(102, 175, 153, 1)),
                          onPressed: () {
                            // TODO: Add Kurikulum On Pressed.
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const KurikulumScreen()),
                            );
                          },
                          child: Text(
                            'Kurikulum',
                            style: GoogleFonts.mPlusRounded1c(
                                fontWeight: FontWeight.w800,
                                fontSize: 18.0,
                                color: Colors.white),
                          ),
                        ),
                      )),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                      height: 72,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(237, 195, 95, 1),
                          ),
                          onPressed: () {
                            // TODO: Add Ziyadah On Pressed.
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Ziyadah',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18.0,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                Icons.arrow_drop_down,
                                size: 36,
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 72),
              child: Container(
                  margin: const EdgeInsets.only(top: 16),
                  padding:
                      const EdgeInsets.symmetric(vertical: 29, horizontal: 49),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColor.shadow,
                          offset: Offset(0, 22),
                          blurRadius: 45,
                          spreadRadius: 0,
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Muraja'ah Weekly Report",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.mPlusRounded1c(
                              fontWeight: FontWeight.w800,
                              fontSize: 18.0,
                              color: AppColor.blue)),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(children: [
                        Container(
                          alignment: Alignment.center,
                          width: 49,
                          child: Text(
                            "No",
                            style: GoogleFonts.mPlusRounded1c(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                                color: AppColor.black),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Nama",
                            style: GoogleFonts.mPlusRounded1c(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                                color: AppColor.black),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 104,
                          child: Text(
                            "Halaman",
                            style: GoogleFonts.mPlusRounded1c(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                                color: AppColor.black),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 127,
                          child: Text(
                            "Presentase",
                            style: GoogleFonts.mPlusRounded1c(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                                color: AppColor.black),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 81,
                          child: Text(
                            "Notes",
                            style: GoogleFonts.mPlusRounded1c(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                                color: AppColor.black),
                          ),
                        ),
                      ]),
                      Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 0),
                        height: 1.5,
                        width: double.infinity,
                        color: AppColor.black,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemCount: listSiswa.length,
                          itemBuilder: (BuildContext context, int index) {
                            String nama = listSiswa[index].nama;
                            String halaman = listSiswa[index].halaman;
                            String presentase = listSiswa[index].presentase;
                            bool notes = listSiswa[index].notes;

                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    // TODO: Add Navigator
                                    // Navigator.push(
                                    // context,
                                    // MaterialPageRoute(
                                    // builder: (context) =>
                                    // DetailSiswaPage(
                                    //   dataSiswa: listSiswa[index],
                                    // )));
                                  },
                                  child: Row(children: [
                                    Container(
                                      alignment: Alignment.center,
                                      width: 49,
                                      child: Text(
                                        "${index + 1}",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.mPlusRounded1c(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15.0,
                                            color: AppColor.black),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        nama,
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.mPlusRounded1c(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15.0,
                                            color: AppColor.black),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 104,
                                      child: Text(
                                        halaman,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.mPlusRounded1c(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15.0,
                                            color: AppColor.black),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 127,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        presentase,
                                        style: GoogleFonts.mPlusRounded1c(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15.0,
                                            color: AppColor.black),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 81,
                                      child: Icon(
                                        notes ? Icons.check : Icons.close,
                                        size: 18,
                                        color: notes
                                            ? AppColor.yellow
                                            : AppColor.green,
                                      ),
                                    ),
                                  ]),
                                ),
                                const Divider(
                                  thickness: 0.5,
                                  color: AppColor.black,
                                )
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  )),
            ),
          ),
          const SizedBox(
            height: 42,
          )
        ],
      ),
    );
  }
}
