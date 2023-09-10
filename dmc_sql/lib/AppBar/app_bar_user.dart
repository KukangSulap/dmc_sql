import 'package:dmc_sql/BagKeuangan/keuangan.dart';
// import 'package:dmc_sql/BagPendidikan/pendidikan_main.dart';
import 'package:dmc_sql/BagProfil/profile.dart';
import 'package:dmc_sql/BagSiswa/siswa.dart';
import 'package:dmc_sql/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Property/app_color.dart';
import '../login.dart';

enum CurrentPage { profile, pendidikan, home}

class AppBarUser extends StatefulWidget implements PreferredSizeWidget {
  AppBarUser({super.key, required this.page});
  final CurrentPage page;

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<AppBarUser> createState() => _AppBarUserState();
}

class _AppBarUserState extends State<AppBarUser> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    Color activeItemColor = Colors.black;
    Color idleItemColor = const Color.fromARGB(255, 102, 175, 153);

    const TextDecoration underlineDecoration = TextDecoration.underline;
    const TextDecoration noDecoration = TextDecoration.none;

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
                    fontSize: 36)),
          ],
        ),
      ),
      actions: [
        Row(
          children: <Widget>[
            Stack(alignment: Alignment.center, children: [
              Visibility(
                visible: widget.page == CurrentPage.profile,
                child: Container(
                  // TODO: Change Width to Follow Figma (61)
                    width: 35,
                    // TODO: Change Height to Follow Figma (61)
                    height: 35,
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
                          builder: (context) => const ProfilePage()));
                },
                child: Text('Profile Siswa',
                    style: GoogleFonts.mPlusRounded1c(
                        color: widget.page == CurrentPage.profile
                            ? activeItemColor
                            : idleItemColor,
                        fontWeight: FontWeight.w800,
                        // TODO: set the font to follow figma (24)
                        fontSize: 18)),
              ),
            ]),
            const SizedBox(
              width: 116,
            ),
            Stack(alignment: Alignment.center, children: [
              Visibility(
                visible: widget.page == CurrentPage.pendidikan,
                child: Container(
                  // TODO: Change Width to Follow Figma (61)
                    width: 35,
                    // TODO: Change Height to Follow Figma (61)
                    height: 35,
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
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const PendidikanScreen()));
                },
                child: Text('Pendidikan',
                    style: GoogleFonts.mPlusRounded1c(
                        color: widget.page == CurrentPage.pendidikan
                            ? activeItemColor
                            : idleItemColor,
                        fontWeight: FontWeight.w800,
                        // TODO: set the font to follow figma (24)
                        fontSize: 18)),
              ),
            ]),
            const SizedBox(
              width: 95,
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
                  // TODO: implement Log Out Function.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  Login()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  // TODO: set the height to follow figma (50)
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.blue),
                  child: Text('Log Out',
                      style: GoogleFonts.mPlusRounded1c(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          // TODO: set the font to follow figma (24)
                          fontSize: 18)),
                )),
            const SizedBox(
              width: 70,
            ),
          ],
        ),
      ],
    );
  }
}
