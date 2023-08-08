import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Property/app_color.dart';

List<List<String>> listNilaiMabit = [
  ['Manner', 'A'],
  ['Leadership', 'A'],
  ['Adaptation', 'A'],
  ['Sharing', 'A'],
  ['Caring', 'A'],
];

class DetailSmartPage extends StatefulWidget {
  const DetailSmartPage({super.key, required this.nama, required this.nis});

  final String nama;
  final String nis;

  @override
  State<DetailSmartPage> createState() => _DetailSmartPageState();
}

class _DetailSmartPageState extends State<DetailSmartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarAdmin(page: "s"),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        flex: 8,
                        child: Text(
                          "Detail SMART Mabit",
                          style: GoogleFonts.mPlusRounded1c(
                              fontWeight: FontWeight.w800,
                              fontSize: 36,
                              color: AppColor.blue),
                        )),
                    Expanded(
                        flex: 2,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              backgroundColor: const MaterialStatePropertyAll(
                                  AppColor.orange),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Back to Siswa",
                                style: GoogleFonts.mPlusRounded1c(
                                    fontWeight: FontWeight.w800, fontSize: 24),
                              ),
                            ))),
                    SizedBox(width: 10),
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                        backgroundColor:
                            const MaterialStatePropertyAll(AppColor.yellow),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Edit",
                            style: GoogleFonts.mPlusRounded1c(
                                fontWeight: FontWeight.w800, fontSize: 24)),
                      ),
                    )),
                  ],
                ),
                const SizedBox(height: 20),
                SmartMabit(
                  nama: widget.nama,
                  nis: widget.nis,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        flex: 8,
                        child: Text(
                          "Detail SMART Mabit",
                          style: GoogleFonts.mPlusRounded1c(
                              fontWeight: FontWeight.w800,
                              fontSize: 36,
                              color: AppColor.blue),
                        )),
                    Expanded(
                        flex: 2,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              backgroundColor: const MaterialStatePropertyAll(
                                  AppColor.orange),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Back to Siswa",
                                style: GoogleFonts.mPlusRounded1c(
                                    fontWeight: FontWeight.w800, fontSize: 24),
                              ),
                            ))),
                    SizedBox(width: 10),
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                        backgroundColor:
                            const MaterialStatePropertyAll(AppColor.yellow),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Edit",
                            style: GoogleFonts.mPlusRounded1c(
                                fontWeight: FontWeight.w800, fontSize: 24)),
                      ),
                    )),
                  ],
                ),
                SmartCamp(
                  nama: widget.nama,
                  nis: widget.nis,
                )
              ],
            ),
          ),
        ));
  }
}

class SmartMabit extends StatelessWidget {
  const SmartMabit({
    super.key,
    required this.nama,
    required this.nis,
  });

  final String nama;
  final String nis;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(16),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1.5),
                      borderRadius: BorderRadius.circular(8.0))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Data Siswa",
                        style: GoogleFonts.mPlusRounded1c(
                            fontWeight: FontWeight.w800,
                            fontSize: 24,
                            color: AppColor.blue)),
                    Text(nama,
                        style: GoogleFonts.mPlusRounded1c(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: AppColor.black)),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 270,
                          width: 239,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.green.shade200,
                          )),
                    ),
                    const SizedBox(height: 10),
                    Text(nis,
                        style: GoogleFonts.mPlusRounded1c(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: AppColor.black)),
                    Text("tgl lomba",
                        style: GoogleFonts.mPlusRounded1c(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: AppColor.black))
                  ],
                ),
              ),
            )),
            const SizedBox(width: 20),
            Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1.5),
                              borderRadius: BorderRadius.circular(8.0))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nilai Smart",
                                  style: GoogleFonts.mPlusRounded1c(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 24,
                                      color: AppColor.blue)),
                              Text("Nama SMART Mabit",
                                  style: GoogleFonts.mPlusRounded1c(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 32,
                                      color: AppColor.black))
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 150,
                                width: 200,
                                child: ListView.builder(
                                    itemCount: listNilaiMabit.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      String nama = listNilaiMabit[index][0];
                                      String nilai = listNilaiMabit[index][1];

                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(nama,
                                              style: GoogleFonts.mPlusRounded1c(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 20,
                                                  color: AppColor.black)),
                                          Text(nilai,
                                              style: GoogleFonts.mPlusRounded1c(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 20,
                                                  color: AppColor.black)),
                                        ],
                                      );
                                    }),
                              ),
                              Container(
                                width: 200,
                                margin: const EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Score",
                                        style: GoogleFonts.mPlusRounded1c(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            color: AppColor.black)),
                                    Text("89",
                                        style: GoogleFonts.mPlusRounded1c(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            color: AppColor.black)),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(16),
                      height: 150,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1.5),
                              borderRadius: BorderRadius.circular(8.0))),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Notes SMART",
                                  style: GoogleFonts.mPlusRounded1c(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 24,
                                      color: AppColor.blue)),
                              Text("lorem ipsum",
                                  style: GoogleFonts.mPlusRounded1c(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: AppColor.black))
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class SmartCamp extends StatelessWidget {
  const SmartCamp({
    super.key,
    required this.nama,
    required this.nis,
  });

  final String nama;
  final String nis;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1.5),
                        borderRadius: BorderRadius.circular(8.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Data Siswa",
                        style: GoogleFonts.mPlusRounded1c(
                            fontWeight: FontWeight.w800,
                            fontSize: 24,
                            color: AppColor.blue)),
                    Text(nama,
                        style: GoogleFonts.mPlusRounded1c(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: AppColor.black)),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 270,
                          width: 239,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.green.shade200,
                          )),
                    ),
                    const SizedBox(height: 10),
                    Text(nis,
                        style: GoogleFonts.mPlusRounded1c(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: AppColor.black)),
                    Text("tgl lomba",
                        style: GoogleFonts.mPlusRounded1c(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: AppColor.black))
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1.5),
                              borderRadius: BorderRadius.circular(8.0))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nilai SMART",
                                  style: GoogleFonts.mPlusRounded1c(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 24,
                                      color: AppColor.blue)),
                              Text("Nama SMART Camp",
                                  style: GoogleFonts.mPlusRounded1c(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 32,
                                      color: AppColor.black))
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 150,
                                width: 200,
                                child: ListView.builder(
                                    itemCount: listNilaiMabit.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      String nama = listNilaiMabit[index][0];
                                      String nilai = listNilaiMabit[index][1];

                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(nama,
                                              style: GoogleFonts.mPlusRounded1c(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 20,
                                                  color: AppColor.black)),
                                          Text(nilai,
                                              style: GoogleFonts.mPlusRounded1c(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 20,
                                                  color: AppColor.black)),
                                        ],
                                      );
                                    }),
                              ),
                              Container(
                                width: 200,
                                margin: const EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Score",
                                        style: GoogleFonts.mPlusRounded1c(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            color: AppColor.black)),
                                    Text("89",
                                        style: GoogleFonts.mPlusRounded1c(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            color: AppColor.black)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(16),
                      height: 150,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1.5),
                              borderRadius: BorderRadius.circular(8.0))),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Notes SMART",
                                  style: GoogleFonts.mPlusRounded1c(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 24,
                                      color: AppColor.blue)),
                              Text("lorem ipsum",
                                  style: GoogleFonts.mPlusRounded1c(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: AppColor.black))
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
