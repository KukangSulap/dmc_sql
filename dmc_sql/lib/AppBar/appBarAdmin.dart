import 'package:dmc_sql/BagKeuangan/keuangan.dart';
import 'package:dmc_sql/BagSiswa/siswa.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Property/app_color.dart';
import '../login.dart';

enum CurrentPage { keuangan, siswa }

class AppBarAdmin extends StatefulWidget implements PreferredSizeWidget {
  final CurrentPage page;
  const AppBarAdmin({super.key, required this.page});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<AppBarAdmin> createState() => _AppBarAdminState();
}

class _AppBarAdminState extends State<AppBarAdmin> {
  Color activeItemColor = Colors.black;
  Color idleItemColor = const Color.fromARGB(255, 102, 175, 153);

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Text("SQL",
                style: GoogleFonts.mPlusRounded1c(
                    color: AppColor.blue,
                    fontWeight: FontWeight.w800,
                    fontSize: screenWidth >= 600 ? 36 : 26)),
          ],
        ),
      ),
      actions: [
        Row(
          children: <Widget>[
            Stack(alignment: Alignment.center, children: [
              Visibility(
                visible: widget.page == CurrentPage.keuangan,
                child: Container(
                    width: screenWidth >= 600 ? 35 : 24,
                    height: screenWidth >= 600 ? 35 : 24,
                    decoration: const BoxDecoration(
                      color: AppColor.yellow,
                      shape: BoxShape.circle,
                    )),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.transparent),
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const KeuanganPage()));
                },
                child: Text('Keuangan',
                    style: GoogleFonts.mPlusRounded1c(
                        color: widget.page == CurrentPage.keuangan
                            ? activeItemColor
                            : idleItemColor,
                        fontWeight: FontWeight.w800,
                        fontSize: screenWidth >= 600 ? 18 : 14)),
              ),
            ]),
             SizedBox(
              width: screenWidth >= 600 ? 40 : 30,
            ),
            Stack(alignment: Alignment.center, children: [
              Visibility(
                visible: widget.page == CurrentPage.siswa,
                child: Container(
                    width: screenWidth >= 600 ? 35 : 24,
                    height: screenWidth >= 600 ? 35 : 24,
                    decoration: const BoxDecoration(
                      color: AppColor.yellow,
                      shape: BoxShape.circle,
                    )),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.transparent),
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SiswaPage()));
                },
                child: Text('Siswa',
                    style: GoogleFonts.mPlusRounded1c(
                        color: widget.page == CurrentPage.siswa
                            ? activeItemColor
                            : idleItemColor,
                        fontWeight: FontWeight.w800,
                        fontSize: screenWidth >= 600 ? 18 : 14)),
              ),
            ]),
            SizedBox(
              width: screenWidth >= 600 ? 50 : 30,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.transparent),
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  // elevation: MaterialStateProperty.all(0),
                  shadowColor: MaterialStateProperty.all(Colors.transparent)
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  Login()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth >= 600 ? 40 : 24),
                  height: screenWidth >= 600 ? 35 : 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.blue),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text('Log Out',
                        style: GoogleFonts.mPlusRounded1c(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: screenWidth >= 600 ? 18 : 14)),
                  ),
                )),
            SizedBox(
              width: screenWidth >= 600 ? 35 : 16,
            ),
          ],
        ),
      ],
    );
  }
}