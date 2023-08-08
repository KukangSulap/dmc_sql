import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:dmc_sql/AppBar/app_bar_user.dart';
import 'package:dmc_sql/Property/app_color.dart';

import 'package:dmc_sql/BagSiswa/BagDetailNilai/detailLomba.dart';
import 'package:dmc_sql/BagSiswa/BagDetailNilai/detailMurajaah.dart';
import 'package:dmc_sql/BagSiswa/BagDetailNilai/detailRaport.dart';
import 'package:dmc_sql/BagSiswa/BagDetailNilai/detailSmart.dart';
import 'package:dmc_sql/BagSiswa/BagDetailNilai/detailZiyadah.dart';

void main() {
  runApp(const ProfilePage());
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUser(page: "k"),
      body: const Padding(
          padding: EdgeInsets.only(left: 72, top: 70, right: 72),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SubAppBar(),
                Padding(
                  padding: EdgeInsets.only(top: 27),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                            padding: EdgeInsets.only(right: 37),
                            child: LeftMenuProfile(
                                nama: "Nama Siswa", nis: "NIS SISWA")),
                      ),
                      Expanded(
                        flex: 3,
                        child: RightMenuProfile(
                            nama: "Ahmad Solihun",
                            nis: "1601204013",
                            tahunSiswa: "2022/2023",
                            semesterSiswa: "Semester 1",
                            kelasSiswa: "Kelas A"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class SubAppBar extends StatelessWidget {
  const SubAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Data Siswa",
            style: GoogleFonts.mPlusRounded1c(
                fontWeight: FontWeight.w800,
                fontSize: 36.0,
                color: AppColor.blue)),
      ],
    );
  }
}

class LeftMenuProfile extends StatelessWidget {
  const LeftMenuProfile({
    super.key,
    required this.nama,
    required this.nis,
  });

  final String nama;
  final String nis;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        boxShadow: const [
          BoxShadow(
            color: AppColor.shadow,
            offset: Offset(0, 30),
            blurRadius: 60,
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
              child: Text(
                "Detail Nilai",
                style: GoogleFonts.mPlusRounded1c(
                    fontWeight: FontWeight.w800,
                    fontSize: 24.0,
                    color: AppColor.blue),
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 20),
              child: Column(children: [
                LeftProfileButton(
                    text: "Raport",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailRaportPage()));
                    }),
                const SizedBox(height: 14),
                LeftProfileButton(
                    text: "Lomba",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailLombaPage(
                                    nama: nama,
                                    nis: nis,
                                  )));
                    }),
                const SizedBox(height: 14),
                LeftProfileButton(
                    text: "SMART",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailSmartPage(
                                    nama: nama,
                                    nis: nis,
                                  )));
                    }),
                const SizedBox(height: 14),
                LeftProfileButton(
                    text: "Muraja'ah",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailMurajaahPage(
                                    nama: nama,
                                    nis: nis,
                                  )));
                    }),
                const SizedBox(height: 14),
                LeftProfileButton(
                    text: "Ziyadah",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailZiyadahPage(
                                    nama: nama,
                                    nis: nis,
                                  )));
                    }),
              ]))
        ],
      ),
    );
  }
}

class LeftProfileButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const LeftProfileButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
        child: Text(
          text,
          style: GoogleFonts.mPlusRounded1c(
              fontWeight: FontWeight.w500,
              fontSize: 24.0,
              color: AppColor.black),
        ),
      ),
    );
  }
}

class RightMenuProfile extends StatelessWidget {
  const RightMenuProfile({
    super.key,
    required this.nama,
    required this.nis,
    required this.tahunSiswa,
    required this.semesterSiswa,
    required this.kelasSiswa,
  });

  final String nama;
  final String nis;
  final String tahunSiswa;
  final String semesterSiswa;
  final String kelasSiswa;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        boxShadow: const [
          BoxShadow(
            color: AppColor.shadow,
            offset: Offset(0, 30),
            blurRadius: 60,
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 247,
            decoration: BoxDecoration(
              color: AppColor.blue,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 39),
                  height: 253,
                  width: 224, // background: rgba(209, 231, 224, 1);
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 209, 231, 224))
                  // child: Image.network(
                  //     'https://www.liveabout.com/thmb/mODlBLF75DTwT3i4zHkXFGrmhNA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/pajama-day-kid-58b8c9345f9b58af5c8c717d.jpg'),
                  ),
              const SizedBox(height: 15),
              Text(nama,
                  style: GoogleFonts.mPlusRounded1c(
                      fontWeight: FontWeight.w800,
                      fontSize: 64.0,
                      color: AppColor.blue)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(nis,
                      style: GoogleFonts.mPlusRounded1c(
                          fontWeight: FontWeight.w500,
                          fontSize: 32.0,
                          color: AppColor.blue)),
                  const SizedBox(width: 51),
                  Text("Rank 1",
                      style: GoogleFonts.mPlusRounded1c(
                          fontWeight: FontWeight.w500,
                          fontSize: 32.0,
                          color: AppColor.yellow)),
                ],
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(tahunSiswa,
                      style: GoogleFonts.mPlusRounded1c(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: AppColor.blue)),
                  const SizedBox(width: 39),
                  Text(kelasSiswa,
                      style: GoogleFonts.mPlusRounded1c(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: AppColor.black)),
                  const SizedBox(width: 39),
                  Text(semesterSiswa,
                      style: GoogleFonts.mPlusRounded1c(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: AppColor.black)),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 41, left: 62, right: 62),
                padding: const EdgeInsets.only(
                    top: 34, left: 49, right: 49, bottom: 10),
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 3),
                        borderRadius: BorderRadius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Prestasi Siswa",
                        style: GoogleFonts.mPlusRounded1c(
                            fontWeight: FontWeight.w800,
                            fontSize: 24.0,
                            color: AppColor.blue)),
                    Wrap(
                      children: [
                        Text("Lomba Ramadhan",
                            style: GoogleFonts.mPlusRounded1c(
                              fontWeight: FontWeight.w500,
                              fontSize: 32,
                              color: AppColor.black,
                            )),
                        const SizedBox(width: 15),
                        Text(
                          "Juara 1",
                          style: GoogleFonts.mPlusRounded1c(
                            fontWeight: FontWeight.w800,
                            fontSize: 32,
                            color: AppColor.yellow,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Nilai",
                      style: GoogleFonts.mPlusRounded1c(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: AppColor.black),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo",
                      style: GoogleFonts.mPlusRounded1c(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: AppColor.black),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
