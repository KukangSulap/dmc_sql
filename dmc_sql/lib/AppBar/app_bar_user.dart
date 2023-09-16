import 'package:dmc_sql/BagKeuangan/keuangan.dart';
import 'package:dmc_sql/BagProfil/profile.dart';
import 'package:dmc_sql/BagSiswa/siswa.dart';
import 'package:dmc_sql/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../BagPendidikan/pendidikan_main.dart';
import '../Property/app_color.dart';
import '../login.dart';

enum CurrentPage { profile, pendidikan, home }

class AppBarUser extends StatelessWidget implements PreferredSizeWidget {
  AppBarUser({required this.page});

  final CurrentPage page;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    Color activeItemColor = Colors.black;
    Color idleItemColor = Color.fromARGB(255, 102, 175, 153);

    const TextDecoration underlineDecoration = TextDecoration.underline;
    const TextDecoration noDecoration = TextDecoration.none;

    final screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Text(
              "SQL",
              style: GoogleFonts.mPlusRounded1c(
                color: AppColor.blue,
                fontWeight: FontWeight.w800,
                fontSize: screenWidth >= 600 ? 36 : 30,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Row(
          children: <Widget>[
            Stack(alignment: Alignment.center, children: [
              Visibility(
                visible: page == CurrentPage.profile,
                child: Container(
                  width: screenWidth >= 600 ? 35 : 24,
                  height: screenWidth >= 600 ? 35 : 24,
                  decoration: BoxDecoration(
                    color: AppColor.yellow,
                    shape: BoxShape.circle,
                  ),
                ),
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
                      builder: (context) => ProfilePage(),
                    ),
                  );
                },
                child: Text(
                  'Profile Siswa',
                  style: GoogleFonts.mPlusRounded1c(
                    color: page == CurrentPage.profile
                        ? activeItemColor
                        : idleItemColor,
                    fontWeight: FontWeight.w800,
                    fontSize: screenWidth >= 600 ? 18 : 14,
                  ),
                ),
              ),
            ]),
            SizedBox(
              width: screenWidth >= 600 ? 40 : 30,
            ),
            Stack(alignment: Alignment.center, children: [
              Visibility(
                visible: page == CurrentPage.pendidikan,
                child: Container(
                  width: screenWidth >= 600 ? 35 : 24,
                  height: screenWidth >= 600 ? 35 : 24,
                  decoration: BoxDecoration(
                    color: AppColor.yellow,
                    shape: BoxShape.circle,
                  ),
                ),
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
                      builder: (context) => PendidikanScreen(),
                    ),
                  );
                },
                child: Text(
                  'Pendidikan',
                  style: GoogleFonts.mPlusRounded1c(
                    color: page == CurrentPage.pendidikan
                        ? activeItemColor
                        : idleItemColor,
                    fontWeight: FontWeight.w800,
                    fontSize: screenWidth >= 600 ? 18 : 14,
                  ),
                ),
              ),
            ]),
            SizedBox(
              width: screenWidth >= 600 ? 50 : 30,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                padding: MaterialStateProperty.all(EdgeInsets.zero),
              ),
              onPressed: () {
                // TODO: implement Log Out Function.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth >= 600 ? 40 : 24,
                ),
                height: screenWidth >= 600 ? 35 : 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.blue,
                ),
                child: Text(
                  'Log Out',
                  style: GoogleFonts.mPlusRounded1c(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: screenWidth >= 600 ? 18 : 14,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: screenWidth >= 600 ? 35 : 16,
            ),
          ],
        ),
      ],
    );
  }
}
